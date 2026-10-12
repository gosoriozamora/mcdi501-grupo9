# mcdi501-grupo9 — Estadística Computacional

Repositorio público: [gosoriozamora/mcdi501-grupo9](https://github.com/gosoriozamora/mcdi501-grupo9).

Repositorio del ramo MCDI501. Equipo: Guillermo Osorio Zamora y Karla Patricia Pizarro Correa, Grupo 9. Docente: Jean Maidana.

Cada integrante trabaja en una copia local en `C:\Users\<usuario>\Proyectos\mcdi501-grupo9`. El repositorio y su entorno deben estar fuera de P y de la carpeta sincronizada de pCloud. Los datasets permanecen locales; compartimos código, notebooks, informes e instrucciones mediante GitHub.

## Organización

```text
mcdi501-grupo9/
├── README.md
├── requirements.txt
├── requirements-directas.txt
├── Abrir-JupyterLab.cmd
├── docs/
│   └── Entorno_y_trabajo_en_equipo.md
├── Formativa_1/
│   ├── README.md
│   ├── 00_preparar_datos.ipynb
│   ├── formativa_1_online_shoppers.ipynb
│   ├── informe_formativa_1.docx
│   ├── Verificacion_formativa_1.md
│   ├── datos_originales/
│   ├── datos_trabajo/
│   └── resultados/
└── Sumativa_1/
    ├── 01_preparar_datos.ipynb
    ├── 02_Sumativa1.ipynb
    ├── datos_originales/
    │   ├── README.md
    │   └── online_shoppers_intention.csv
    └── datos_trabajo/
        ├── README.md
        ├── online_shoppers_mcar.csv
        ├── valores_ocultados.csv
        └── preparacion.json
```

Cada actividad tiene su propia carpeta; `Sumativa_1` contiene la preparación y el análisis vigentes. La planificación interna permanece en la carpeta de la asignatura, fuera de este repositorio.

## Abrir y trabajar

1. Preparar la `.venv` siguiendo [Entorno y trabajo en equipo](docs/Entorno_y_trabajo_en_equipo.md). Usamos Python 3.13.15 y las versiones fijadas en `requirements.txt`.
2. Abrir `Abrir-JupyterLab.cmd` y elegir **Python (Estadistica Computacional)**.
3. Entrar en la carpeta de la actividad y seguir el flujo correspondiente.

### Formativa 1

1. Entrar en `Formativa_1`. En un equipo nuevo, descargar el CSV siguiendo [Datos originales](Formativa_1/datos_originales/README.md) y ejecutar `00_preparar_datos.ipynb` una vez.
2. Abrir `formativa_1_online_shoppers.ipynb` y estudiar las celdas de arriba hacia abajo. Sus rutas se leen desde la carpeta `Formativa_1`.
3. Revisar el informe Word junto con los resultados del notebook.

### Sumativa 1

1. Entrar en `Sumativa_1`. En un equipo nuevo, obtener el CSV según [Datos originales](Sumativa_1/datos_originales/README.md).
2. Ejecutar [01_preparar_datos.ipynb](Sumativa_1/01_preparar_datos.ipynb). Si los archivos de trabajo y respaldo ya existen, los reutiliza sin volver a sortear ni sobrescribirlos.
3. Abrir [02_Sumativa1.ipynb](Sumativa_1/02_Sumativa1.ipynb) y ejecutar sus celdas en orden. Es el notebook de análisis vigente; sus rutas relativas se leen desde `Sumativa_1`.
4. Consultar [Datos de trabajo](Sumativa_1/datos_trabajo/README.md) para identificar los CSV y verificar la copia utilizada.

El análisis utiliza NumPy, pandas, SciPy, Matplotlib y Seaborn. La preparación conserva `pathlib`, que forma parte de la biblioteca estándar de Python y no requiere una instalación adicional. Las dependencias directas se enumeran en `requirements-directas.txt` y sus versiones completas están fijadas en `requirements.txt`.

En el equipo de Guillermo los datos ya están preparados; puede comenzar directamente por el notebook principal. No se copia la carpeta `.venv` al equipo de Karla: ella creará su propio entorno con las mismas versiones.

## Estado de Formativa 1

La [versión básica](Formativa_1/README.md) sigue los tutoriales de la semana 1: calidad de datos, descriptiva, histogramas, diagramas de cajas, intervalos de confianza y Welch. El notebook principal tiene 49 celdas, de las cuales 20 son de código. Está ejecutado sin errores. El informe Word tiene 10 páginas, incluida la portada, el índice y las referencias, y se revisó visualmente.

La preparación de datos está en un notebook separado. Se comprobó que en una carpeta nueva produce exactamente los mismos CSV y que, al repetirla, reutiliza los archivos. Los datos originales y preparados anteriores no cambiaron. Las [comprobaciones](Formativa_1/Verificacion_formativa_1.md) indican las cifras esperadas y la cobertura de la rúbrica.

Las versiones anteriores están respaldadas localmente en `.local`, excluida de Git. El único informe vigente es el Word; el PDF de entrega se exportará desde ese archivo después de la aprobación.

## Estado de Sumativa 1

El notebook vigente es [02_Sumativa1.ipynb](Sumativa_1/02_Sumativa1.ipynb), con 52 celdas, de las cuales 16 son de código. Contiene el análisis descriptivo, seis intervalos de confianza del 95% para tres variables en dos grupos y dos pruebas t de Welch. Conserva los resultados de la ejecución verificada sin errores.

La copia de trabajo contiene 12.330 sesiones y 1.233 valores faltantes en `ProductRelated_Duration`, seleccionados con semilla 42. El respaldo conserva las posiciones y los valores originales. `Sumativa_1/datos_trabajo/preparacion.json` registra las características y huellas de los archivos locales utilizados.

El informe técnico de Sumativa 1 sigue pendiente. Los archivos de `.ipynb_checkpoints` son respaldos automáticos de Jupyter y están excluidos de Git; no son las versiones vigentes de entrega.

## Trabajo compartido

Seguiremos la organización de ENSSEX: copias locales, ramas por tarea y revisión cruzada mediante pull request. Coordinar quién edita cada notebook para evitar cambios simultáneos. Los CSV, resultados sueltos, entornos y respaldos están excluidos de Git; el notebook sí incluye sus salidas guardadas.

**Orden pendiente de Formativa 1:** reproducir en el disco C del equipo de Karla → revisar y exportar el PDF de entrega → entregar en Canvas y participar en el foro. La publicación del repositorio no sustituye la ejecución y revisión del trabajo en el equipo de Karla.
