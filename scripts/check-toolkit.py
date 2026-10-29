"""Check local Markdown links, skill identities, navigation, and invocation policy.

Run with Python 3.10+. No third-party dependencies are required.
"""

from pathlib import Path
import re
import sys
from urllib.parse import unquote

ROOT = Path(__file__).resolve().parent.parent


def check():
    errors = []
    markdown = [ROOT / "README.md", ROOT / "AGENTS.md", ROOT / "GLOSSARY.md"]
    markdown += list((ROOT / "skills").rglob("*.md"))
    markdown += list((ROOT / "docs").rglob("*.md"))
    for path in markdown:
        text = path.read_text(encoding="utf-8")
        if "\u2014" in text:
            errors.append(f"{path.relative_to(ROOT)}: prose contains an em dash")
        # Code examples can contain illustrative links and fictional paths.
        prose = re.sub(r"^```.*?^```[^\n]*$", "", text, flags=re.M | re.S)
        prose = re.sub(r"`[^`\n]+`", "", prose)
        for link in re.findall(r"\[[^\]\n]*\]\(([^)\s]+)\)", prose):
            if ":" in link or link.startswith("#") or "<" in link:
                continue
            target = unquote(link.split("#", 1)[0])
            if not (path.parent / target).exists():
                errors.append(f"{path.relative_to(ROOT)}: missing link {link}")

    names = set()
    root_index = (ROOT / "README.md").read_text(encoding="utf-8")
    for skill in (ROOT / "skills").glob("*/*/SKILL.md"):
        text = skill.read_text(encoding="utf-8")
        front = re.match(r"\A---\n(.*?)\n---", text, re.S)
        if not front:
            errors.append(f"{skill.relative_to(ROOT)}: missing frontmatter")
            continue
        fields = front[1]
        name = re.search(r"^name: ([a-z0-9-]+)$", fields, re.M)
        if not name or not re.search(r"^description: .+", fields, re.M):
            errors.append(f"{skill.relative_to(ROOT)}: missing name/description")
            continue
        name = name[1]
        if name != skill.parent.name or name in names:
            errors.append(f"{skill.relative_to(ROOT)}: inconsistent/duplicate name")
        names.add(name)
        metadata = skill.parent / "agents/openai.yaml"
        explicit = bool(re.search(r"^disable-model-invocation: true$", fields, re.M))
        if not metadata.exists():
            errors.append(f"{skill.relative_to(ROOT)}: missing invocation metadata")
        else:
            policy = metadata.read_text(encoding="utf-8")
            if explicit != bool(re.search(r"allow_implicit_invocation: false\b", policy)):
                errors.append(f"{skill.relative_to(ROOT)}: invocation policies disagree")
        bucket = skill.parent.parent
        index = (bucket / "README.md").read_text(encoding="utf-8")
        if f"{name}/SKILL.md" not in index:
            errors.append(f"{bucket.relative_to(ROOT)}: skill absent from bucket index: {name}")
        if bucket.name in {"engineering", "art", "productivity"}:
            if skill.relative_to(ROOT).as_posix() not in root_index:
                errors.append(f"README.md: promoted skill missing: {name}")
            page = ROOT / "docs" / bucket.name / f"{name}.md"
            if not page.exists():
                errors.append(f"Missing skill page: {page.relative_to(ROOT)}")
            else:
                content = page.read_text(encoding="utf-8")
                for heading in ["What it does", "When to reach for it", "Common questions", "It's working if"]:
                    if f"## {heading}" not in content:
                        errors.append(f"{page.relative_to(ROOT)}: missing {heading} section")
    for error in errors:
        print(error)
    if not errors:
        print(f"Checked {len(markdown)} Markdown files and {len(names)} skills.")
    return bool(errors)


if __name__ == "__main__":
    sys.exit(check())
