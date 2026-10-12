@echo off
setlocal
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
    echo Prepara el entorno siguiendo README.md.
    pause
    exit /b 1
)
set "PYTHONPATH="
set "PYTHONNOUSERSITE=1"
set "JUPYTER_CONFIG_DIR=%CD%\.local\jupyter"
set "JUPYTER_RUNTIME_DIR=%CD%\.local\runtime"
set "IPYTHONDIR=%CD%\.local\ipython"
set "MPLCONFIGDIR=%CD%\.local\matplotlib"
if not exist ".local\runtime" mkdir ".local\runtime"
echo Abriendo JupyterLab. Conserva esta ventana mientras trabajas.
echo Para detener el servidor, presiona Ctrl+C.
".venv\Scripts\python.exe" -m jupyterlab --ServerApp.ip=127.0.0.1 --ServerApp.root_dir="%CD%" --LabApp.default_url=/lab/tree/Sumativa_1/02_Sumativa1.ipynb
if errorlevel 1 pause
endlocal
