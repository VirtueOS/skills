@echo off
setlocal EnableExtensions DisableDelayedExpansion
rem Smoke test toolkit file copies and skill junctions using a disposable project under TEMP.
set "ROOT=%~dp0.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
set "FIXTURE=%TEMP%\virtueos-link-test-%RANDOM%-%RANDOM%"
set "PROJECT=%FIXTURE%\game with spaces"
md "%PROJECT%\.agents\toolkit\skills\engineering\example" 2>nul || exit /b 1
>"%PROJECT%\.git" echo fixture
>"%PROJECT%\.agents\toolkit\skills\engineering\example\SKILL.md" echo fixture
>"%PROJECT%\.agents\toolkit\.gdignore" echo fixture gdignore
>"%PROJECT%\.agents\toolkit\AGENTS.md" echo fixture agents
>"%PROJECT%\.agents\toolkit\GLOSSARY.md" echo fixture glossary
>"%PROJECT%\.agents\toolkit\README.md" echo fixture readme
>"%PROJECT%\.agents\.gdignore" echo stale gdignore
>"%PROJECT%\.agents\AGENTS.md" echo stale agents
>"%PROJECT%\.agents\GLOSSARY.md" echo stale glossary
>"%PROJECT%\.agents\README.md" echo stale readme
call "%ROOT%\scripts\setup-toolkit.bat" "%PROJECT%" "%PROJECT%\.agents\toolkit"
if errorlevel 1 goto :fail
if not exist "%PROJECT%\.agents\skills\example\SKILL.md" goto :fail
for %%F in (.gdignore AGENTS.md GLOSSARY.md README.md) do fc /b "%PROJECT%\.agents\toolkit\%%F" "%PROJECT%\.agents\%%F" >nul || goto :fail
echo PASS: toolkit files overwrite existing copies and skill junctions work with paths containing spaces
rd /s /q "%FIXTURE%"
exit /b 0
:fail
echo FAIL: batch setup smoke test failed. Fixture retained at "%FIXTURE%" 1>&2
exit /b 1
