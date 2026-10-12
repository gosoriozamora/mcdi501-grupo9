# Entorno y trabajo en equipo

Cada integrante prepara su propio entorno local. Compartimos versiones e instrucciones mediante Git; no copiamos la carpeta `.venv` entre computadores. La referencia es Windows de 64 bits con Python 3.13.15, la versión registrada en el proyecto ENSSEX.

## Ubicación de cada copia

La carpeta de destino del repositorio es `C:\Users\<usuario>\Proyectos\mcdi501-grupo9`. La copia local de Guillermo utiliza `C:\Users\gosor\Proyectos\mcdi501-grupo9`. Karla preparará su copia en `C:\Users\Karlita\Proyectos\mcdi501-grupo9` a partir del repositorio público de GitHub. No crear el repositorio en P ni en una carpeta sincronizada por pCloud.

El repositorio público es [gosoriozamora/mcdi501-grupo9](https://github.com/gosoriozamora/mcdi501-grupo9). Karla tiene una preparación anterior en `C:\Users\Karlita\Proyectos\Estadistica_Computacional`; esa carpeta no se ha modificado desde aquí. Revisar y conservar sus archivos antes de preparar la nueva copia; no ejecutar un clon sobre una carpeta no vacía. Las copias locales se conectan a ese mismo repositorio. Para entrar en la copia del repositorio, abrir Git Bash en esa carpeta desde el Explorador de archivos y comprobar la ubicación con `pwd`. En Git Bash, el disco C aparece como `/c/`; debe verse `/c/Users/<usuario>/Proyectos/mcdi501-grupo9`.

La carpeta `.venv` se crea dentro de esa copia local. Si cambia la ubicación del proyecto, reconstruir el entorno y registrar otra vez el kernel. No trasladar una `.venv` ya instalada.

## Preparar Python y el entorno

Para obtener una copia nueva, abrir **Git Bash** y ejecutar lo siguiente, siempre que `~/Proyectos/mcdi501-grupo9` no exista todavía:

```bash
mkdir -p ~/Proyectos
cd ~/Proyectos
git clone https://github.com/gosoriozamora/mcdi501-grupo9.git
cd mcdi501-grupo9
```

Si la carpeta ya existe, revisar su contenido antes de continuar; no clonar encima. El clon descarga código, notebooks, informes e instrucciones. Los CSV se obtienen y preparan por separado siguiendo los README de datos de cada actividad.

Los siguientes comandos se ejecutan en **Git Bash**, desde la raíz de la copia local. La carpeta del repositorio debe ser propia de cada integrante y estar fuera de una carpeta sincronizada que comparta `.git` o `.venv` entre computadores.

Comprobar la instalación existente:

```bash
py -3.13 --version
py -3.13 -c "import struct; print(struct.calcsize('P') * 8)"
```

Los resultados esperados son `Python 3.13.15` y `64`. Si la versión no coincide, revisar la instalación antes de continuar. El archivo `.python-version` registra la versión; no la instala automáticamente.

En una copia que todavía no tenga `.venv`:

```bash
py -3.13 -m venv .venv
source .venv/Scripts/activate
python -m pip install -r requirements.txt
python -m pip check
python -m ipykernel install --sys-prefix --name estadistica_computacional --display-name "Python (Estadistica Computacional)"
```

`--sys-prefix` registra el kernel dentro de ese entorno. Al abrir JupyterLab desde la misma `.venv`, estará disponible sin compartir archivos de configuración del otro computador.

## Abrir JupyterLab

En una terminal nueva, situarse en la raíz del repositorio y ejecutar:

```bash
source .venv/Scripts/activate
python -m jupyterlab
```

También se puede abrir `Abrir-JupyterLab.cmd` una vez instalado el entorno. Seleccionar **Python (Estadistica Computacional)**. Su identificador es `estadistica_computacional`; el mismo nombre en ambos computadores facilita abrir el notebook, pero hay que comprobar las versiones.

En JupyterLab, entrar en `Formativa_1`. Si todavía no existe la copia de datos de trabajo, ejecutar primero `00_preparar_datos.ipynb`. Después abrir `formativa_1_online_shoppers.ipynb`. Sus rutas se leen desde la carpeta `Formativa_1`, donde está el notebook. No incorporar rutas personales como `C:/Users/...` a las celdas compartidas. En el equipo de Guillermo la preparación ya existe y se reutiliza.

## Comprobar el entorno

Con la `.venv` activada:

```bash
python --version
python -m pip check
python -c "import sys; print(sys.executable); print('Entorno virtual:', sys.prefix != sys.base_prefix)"
python -c "import numpy, pandas, scipy, matplotlib, jupyterlab, ipykernel; print('Bibliotecas disponibles'); print('pandas:', pandas.__version__)"
```

El ejecutable debe pertenecer a la `.venv` de este proyecto; el entorno virtual debe indicar `True` y pandas debe indicar `2.3.3`.

## Compartir cambios

Actualizar la copia antes de comenzar y revisar `git status`. Con cambios pendientes, acordar cómo conservarlos antes de actualizar. Crear una rama para la tarea, revisar el contenido y proponer su integración mediante pull request. El otro integrante revisará los cambios antes de incorporarlos a `main`.

Evitar editar y guardar simultáneamente el mismo notebook en ramas distintas. Ejecutar una celda cambia sus salidas y también produce cambios en Git. Antes de compartir el notebook, revisar que las salidas sean pertinentes y no contengan rutas personales innecesarias ni volcados completos de datos.

No utilizar `git add -f` para saltarse las exclusiones de datos o del entorno. Incorporar nuevos datasets o resultados procesados al repositorio requiere una decisión explícita del equipo.

## Validación

| Comprobación | Guillermo | Karla |
|---|---|---|
| Entorno instalado desde las dependencias registradas | 102 versiones coincidentes y `pip check` sin conflictos en la nueva ruta, comprobados el 12/10/2026 | Python 3.13.15 de 64 bits; pip check sin conflictos; cinco versiones principales coincidentes, según salidas compartidas el 10/10/2026 |
| Kernel del proyecto | Registrado en la `.venv` local y usado para ejecutar la versión básica | Registrado con --sys-prefix; un notebook de prueba confirmó el intérprete local y pandas 2.3.3 el 10/10/2026 |
| Datos originales y preparados | Conservados; preparación nueva comprobada con los mismos CSV | Pendiente |
| Notebook principal desde kernel reiniciado | Versión básica ejecutada completa sin errores | Pendiente |

La versión básica del notebook principal tiene 49 celdas, de las cuales 20 son de código. La preparación está separada en un notebook de 8 celdas. Se probó tanto la reutilización de archivos existentes como su creación en una carpeta nueva del equipo de Guillermo. Esas comprobaciones no sustituyen la futura ejecución en el equipo de Karla.

El 10 de octubre de 2026 se completó la preparación del entorno de Karla mediante comandos ejecutados en su equipo por VNC y salidas compartidas en la conversación. Se confirmó NumPy 2.5.3, pandas 2.3.3, SciPy 1.18.1, Matplotlib 3.11.2 y JupyterLab 4.6.4. El notebook de prueba usó `C:/Users/Karlita/Proyectos/Estadistica_Computacional/.venv/Scripts/python.exe`. Esto verifica el entorno y el kernel, no la ejecución de la Formativa 1 ni la coincidencia individual de las 101 dependencias. Con el repositorio publicado, se preparará su copia de `mcdi501-grupo9` con un entorno propio y las versiones fijadas, conservando previamente los archivos de la carpeta anterior. Compararemos el CSV de trabajo y las cifras de [Verificacion_formativa_1.md](../Formativa_1/Verificacion_formativa_1.md). Para comprobar el archivo está disponible la huella del [README de datos de trabajo](../Formativa_1/datos_trabajo/README.md).
