# Sumativa 1 — Estadística Computacional

Repositorio de la Sumativa 1 del ramo MCDI501, Grupo 9: [gosoriozamora/mcdi501-grupo9](https://github.com/gosoriozamora/mcdi501-grupo9).

El análisis responde: **¿Cómo difieren las características de navegación entre las sesiones con compra y sin compra?** Se describen y estiman el tiempo en páginas de productos, la cantidad de páginas de productos y la cantidad de páginas administrativas. Se realizan dos pruebas t de Welch: una para el tiempo promedio y otra para la cantidad promedio de páginas de productos.

## Organización

```text
mcdi501-grupo9/
├── README.md
├── requirements.txt
├── requirements-directas.txt
├── Abrir-JupyterLab.cmd
└── Sumativa_1/
    ├── 01_preparar_datos.ipynb
    ├── 02_Sumativa1.ipynb
    ├── datos_originales/
    │   └── README.md
    └── datos_trabajo/
        └── README.md
```

Los CSV se descargan y preparan localmente siguiendo los README de datos; no se incluyen en GitHub. La `.venv`, la configuración local y los checkpoints también están excluidos de Git.

## Descargar e instalar

En Windows, abrir **Git Bash**. Si todavía no existe una copia en `~/Proyectos/mcdi501-grupo9`:

```bash
mkdir -p ~/Proyectos
cd ~/Proyectos
git clone https://github.com/gosoriozamora/mcdi501-grupo9.git
cd mcdi501-grupo9
```

Si la carpeta ya existe, revisar su contenido antes de continuar; no clonar sobre ella. El repositorio y el entorno deben estar en el disco local, fuera de carpetas sincronizadas.

Usamos **Python 3.13.15 de 64 bits**. Comprobar la instalación:

```bash
py -3.13 --version
py -3.13 -c "import struct; print(struct.calcsize('P') * 8)"
```

Los resultados esperados son `Python 3.13.15` y `64`. Desde la raíz del repositorio, para una copia que todavía no tenga `.venv`:

```bash
py -3.13 -m venv .venv
source .venv/Scripts/activate
python -m pip install -r requirements.txt
python -m pip check
python -m ipykernel install --sys-prefix --name estadistica_computacional --display-name "Python (Estadistica Computacional)"
```

Cada equipo crea su propio entorno. Las dependencias directas se enumeran en `requirements-directas.txt`; sus versiones completas están fijadas en `requirements.txt`. El análisis utiliza NumPy, pandas, SciPy, Matplotlib y Seaborn. La preparación utiliza además `pathlib`, incluido en la biblioteca estándar de Python.

## Preparar los datos y ejecutar

1. Obtener `online_shoppers_intention.csv` según [Datos originales](Sumativa_1/datos_originales/README.md) y colocarlo en `Sumativa_1/datos_originales/`.
2. Abrir `Abrir-JupyterLab.cmd`. El acceso abre [02_Sumativa1.ipynb](Sumativa_1/02_Sumativa1.ipynb) y usa la `.venv` del repositorio. Seleccionar **Python (Estadistica Computacional)**.
3. En un equipo nuevo, abrir primero [01_preparar_datos.ipynb](Sumativa_1/01_preparar_datos.ipynb) desde la carpeta `Sumativa_1` y ejecutar sus celdas en orden. Si los archivos de trabajo y respaldo ya existen, se reutilizan sin volver a sortear ni sobrescribirlos.
4. Volver a `02_Sumativa1.ipynb`, reiniciar el kernel y ejecutar todas las celdas en orden. Las rutas relativas del análisis se leen desde `Sumativa_1`.
5. Consultar [Datos de trabajo](Sumativa_1/datos_trabajo/README.md) para identificar los archivos locales y sus huellas de verificación.

La copia de trabajo contiene 12.330 sesiones y 1.233 valores faltantes en `ProductRelated_Duration`, seleccionados con semilla 42. El archivo de respaldo conserva las posiciones y los valores originales.

## Estado del entregable

El notebook vigente es `02_Sumativa1.ipynb`, con 52 celdas, de las cuales 16 son de código. Incluye análisis descriptivo, seis intervalos de confianza del 95% para tres variables en dos grupos y dos pruebas t de Welch, con resultados e interpretaciones.

**El informe técnico de Sumativa 1 sigue pendiente.** Los archivos de `.ipynb_checkpoints` son respaldos automáticos de Jupyter y no corresponden a las versiones vigentes de entrega.

## Colaboración

Revisar `git status` y actualizar la copia antes de comenzar, conservando cualquier cambio local. Trabajar con ramas por tarea y revisión cruzada mediante pull request. Coordinar la edición de los notebooks para evitar cambios simultáneos. Antes de compartirlos, comprobar su ejecución y revisar las salidas guardadas.
