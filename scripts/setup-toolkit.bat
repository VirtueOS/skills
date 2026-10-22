@echo off
setlocal EnableExtensions DisableDelayedExpansion
rem Usage: setup-toolkit.bat [project-root] [toolkit-root] [Codex|Claude] [include-in-progress]
set "PROJECT=%~f1"
if "%~1"=="" set "PROJECT=%CD%"
set "TOOLKIT=%~f2"
if "%~2"=="" for %%I in ("%~dp0..") do set "TOOLKIT=%%~fI"
set "AGENT=%~3"
if "%AGENT%"=="" set "AGENT=Codex"
set "INCLUDE_BETA=%~4"

if not exist "%PROJECT%\.git" (
  echo ERROR: project root must contain .git: "%PROJECT%" 1>&2
  exit /b 1
)
if not exist "%TOOLKIT%\skills\engineering" (
  echo ERROR: toolkit skills are missing at "%TOOLKIT%". Initialize the toolkit submodule first. 1>&2
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
for %%F in (.gdignore AGENTS.md GLOSSARY.md README.md) do if not exist "%TOOLKIT%\%%F" (
  echo ERROR: required toolkit file is missing: "%TOOLKIT%\%%F" 1>&2
  exit /b 1
)
if not exist "%AGENTROOT%" md "%AGENTROOT%"
if not exist "%AGENTROOT%" exit /b 1
for %%F in (.gdignore AGENTS.md GLOSSARY.md README.md) do (
  call :copy_file "%%F"
  if errorlevel 1 exit /b 1
)
set "DEST=%PROJECT%\%AGENTDIR%\skills"
if not exist "%DEST%" md "%DEST%"
if not exist "%DEST%" exit /b 1

set /a COUNT=0
for %%B in (engineering productivity) do call :link_bucket "%%B"
if errorlevel 1 exit /b 1
if /i "%INCLUDE_BETA%"=="include-in-progress" call :link_bucket "in-progress"
if errorlevel 1 exit /b 1
if %COUNT% EQU 0 (
  echo ERROR: no selected skills found in "%TOOLKIT%". 1>&2
  exit /b 1
)
echo Copied toolkit guidance and linked %COUNT% skills for %AGENT%. Commit the submodule revision in the consuming project.
exit /b 0

:copy_file
copy /y "%TOOLKIT%\%~1" "%AGENTROOT%\%~1" >nul
if errorlevel 1 (
  echo ERROR: could not copy "%TOOLKIT%\%~1" to "%AGENTROOT%\%~1". 1>&2
  exit /b 1
)
echo Copied %~1 to .agents\%~1
exit /b 0

:link_bucket
for /d %%S in ("%TOOLKIT%\skills\%~1\*") do (
  if exist "%%~fS\SKILL.md" (
    call :link_one "%%~nxS" "%%~fS"
    if errorlevel 1 exit /b 1
  )
)
exit /b 0

:link_one
set "NAME=%~1"
set "SOURCE=%~2"
set "LINK=%DEST%\%~1"
if exist "%LINK%" (
  rem An existing destination is never replaced by this batch installer.
  echo ERROR: destination already exists: "%LINK%". Move it aside manually before rerunning. 1>&2
  exit /b 1
)
mklink /J "%LINK%" "%SOURCE%" >nul
if errorlevel 1 (
  echo ERROR: could not create junction "%LINK%". Check permissions and filesystem support. 1>&2
  exit /b 1
)
echo %NAME% -^> %SOURCE%
set /a COUNT+=1
exit /b 0
