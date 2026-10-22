@echo off
setlocal EnableExtensions DisableDelayedExpansion
rem Usage: setup-toolkit.bat [project-root] [toolkit-root] [Codex|Claude]
set "PROJECT=%~f1"
if "%~1"=="" set "PROJECT=%CD%"
set "TOOLKIT=%~f2"
if "%~2"=="" for %%I in ("%~dp0..") do set "TOOLKIT=%%~fI"
set "AGENT=%~3"
if "%AGENT%"=="" set "AGENT=Codex"

if not exist "%PROJECT%\.git" (
  echo ERROR: project root must contain .git: "%PROJECT%" 1>&2
  exit /b 1
)
if not exist "%TOOLKIT%\skills\engineering" (
  echo ERROR: toolkit skills are missing at "%TOOLKIT%". Initialize the toolkit submodule first. 1>&2
  exit /b 1
)
if not exist "%TOOLKIT%\docs" (
  echo ERROR: toolkit documentation is missing at "%TOOLKIT%\docs". 1>&2
  exit /b 1
)
if /i "%PROJECT%"=="%TOOLKIT%" (
  echo ERROR: project root must be the consuming project, not the toolkit. 1>&2
  exit /b 1
)
if /i not "%AGENT%"=="Codex" if /i not "%AGENT%"=="Claude" (
  echo ERROR: agent must be Codex or Claude. 1>&2
  exit /b 1
)
if /i "%AGENT%"=="Codex" (set "AGENTDIR=.agents") else set "AGENTDIR=.claude"
set "AGENTROOT=%PROJECT%\.agents"
set "SKILLS_LINK=%PROJECT%\%AGENTDIR%\skills"
set "DOCS_LINK=%AGENTROOT%\docs"

for %%F in (.gdignore AGENTS.md GLOSSARY.md README.md) do if not exist "%TOOLKIT%\%%F" (
  echo ERROR: required toolkit file is missing: "%TOOLKIT%\%%F" 1>&2
  exit /b 1
)
if exist "%SKILLS_LINK%" (
  echo ERROR: skill destination already exists: "%SKILLS_LINK%". Move it aside after checking its contents, then rerun setup. 1>&2
  exit /b 1
)
if exist "%DOCS_LINK%" (
  echo ERROR: documentation destination already exists: "%DOCS_LINK%". Move it aside after checking its contents, then rerun setup. 1>&2
  exit /b 1
)

if not exist "%AGENTROOT%" md "%AGENTROOT%"
if not exist "%AGENTROOT%" exit /b 1
for %%F in (.gdignore AGENTS.md GLOSSARY.md README.md) do (
  call :copy_file "%%F"
  if errorlevel 1 exit /b 1
)
if not exist "%PROJECT%\%AGENTDIR%" md "%PROJECT%\%AGENTDIR%"
if not exist "%PROJECT%\%AGENTDIR%" exit /b 1

mklink /J "%SKILLS_LINK%" "%TOOLKIT%\skills" >nul
if errorlevel 1 (
  echo ERROR: could not create skills junction "%SKILLS_LINK%". Check permissions and filesystem support. 1>&2
  exit /b 1
)
mklink /J "%DOCS_LINK%" "%TOOLKIT%\docs" >nul
if errorlevel 1 (
  echo ERROR: could not create docs junction "%DOCS_LINK%". Remove the newly created skills junction and check permissions. 1>&2
  exit /b 1
)
echo Copied toolkit guidance and linked the full skills and docs directories for %AGENT%.
exit /b 0

:copy_file
copy /y "%TOOLKIT%\%~1" "%AGENTROOT%\%~1" >nul
if errorlevel 1 (
  echo ERROR: could not copy "%TOOLKIT%\%~1" to "%AGENTROOT%\%~1". 1>&2
  exit /b 1
)
echo Copied %~1 to .agents\%~1
exit /b 0
