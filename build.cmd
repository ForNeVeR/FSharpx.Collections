@echo off
cls

.paket\paket.exe restore
if errorlevel 1 (
  exit /b %errorlevel%
)

set VisualStudioVersion=15.0
packages\FAKE\tools\FAKE.exe build.fsx %*
