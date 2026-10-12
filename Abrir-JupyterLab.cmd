@echo off
setlocal
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
    echo Prepara el entorno siguiendo docs\Entorno_y_trabajo_en_equipo.md.
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
".venv\Scripts\python.exe" -m jupyterlab --ServerApp.ip=127.0.0.1 --ServerApp.root_dir="%CD%" --ServerApp.default_url=/lab/tree/Formativa_1/formativa_1_online_shoppers.ipynb
if errorlevel 1 pause
endlocal
