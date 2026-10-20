@echo off
setlocal EnableExtensions DisableDelayedExpansion
rem Smoke test the batch linker using a disposable project under TEMP.
set "ROOT=%~dp0.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
set "FIXTURE=%TEMP%\virtueos-link-test-%RANDOM%-%RANDOM%"
set "PROJECT=%FIXTURE%\game with spaces"
md "%PROJECT%\.agents\toolkit\skills\engineering\example" 2>nul || exit /b 1
>"%PROJECT%\.git" echo fixture
>"%PROJECT%\.agents\toolkit\skills\engineering\example\SKILL.md" echo fixture
call "%ROOT%\scripts\link-skills.bat" "%PROJECT%" "%PROJECT%\.agents\toolkit"
if errorlevel 1 goto :fail
if not exist "%PROJECT%\.agents\skills\example\SKILL.md" goto :fail
echo PASS: batch linker creates a skill junction with paths containing spaces
rd /s /q "%FIXTURE%"
exit /b 0
:fail
echo FAIL: batch linker smoke test failed. Fixture retained at "%FIXTURE%" 1>&2
exit /b 1
