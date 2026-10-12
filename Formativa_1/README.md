# Formativa 1

**Pregunta:** ¿El tiempo dedicado a páginas de productos difiere entre las sesiones que terminan en compra y las que no?

Trabajamos con Online Shoppers Purchasing Intention. Cada fila es una sesión. Comparamos `ProductRelated_Duration` (tiempo en productos) según `Revenue` (si hubo compra). La diferencia se calcula como **media con compra menos media sin compra**.

## Archivos que usamos

- [Notebook principal](formativa_1_online_shoppers.ipynb): 12 pasos para estudiar el dataset, describir los tiempos, graficar, calcular intervalos y aplicar Welch. Tiene nombres claros, explicaciones y preguntas de comprensión.
- [Preparación de datos](00_preparar_datos.ipynb): se usa una vez por equipo para crear la copia con faltantes, o reutilizarla si ya existe.
- [Informe Word vigente](informe_formativa_1.docx): 10 páginas, con FormatoBase, Grupo 9 y docente Jean Maidana. Contiene los mismos métodos y resultados del notebook principal.
- [Verificación y rúbrica](Verificacion_formativa_1.md): cifras esperadas y revisión realizada.

Los informes anteriores quedaron respaldados en `.local`, fuera de los archivos de entrega. El PDF académico se exportará desde el Word aprobado.

## Cómo empezar en el equipo de Guillermo

1. Abrir `Abrir-JupyterLab.cmd` desde la raíz del repositorio.
2. Entrar en `Formativa_1` y abrir el notebook principal con **Python (Estadistica Computacional)**.
3. Leer una explicación y ejecutar su celda con **Shift + Enter**. Estudiar primero los pasos 1 a 7; luego los gráficos; finalmente los intervalos y Welch.
4. Para una ejecución completa, usar **Restart Kernel and Run All Cells**. El directorio de trabajo del notebook debe ser `Formativa_1`.
5. Comparar lo que aparece con el Word y explicar con palabras propias las seis preguntas del paso 12.

Los datos ya están preparados en este equipo. El notebook principal solo los lee. No hace falta volver a prepararlos para practicar.

## Cómo reproducir en un equipo nuevo

Después de aprobar y publicar, Karla tendrá su copia en C y seguirá la [guía de entorno](../docs/Entorno_y_trabajo_en_equipo.md). Luego descargará el CSV según [Datos originales](datos_originales/README.md), ejecutará `00_preparar_datos.ipynb` y abrirá el notebook principal. Las rutas son relativas a `Formativa_1`, sin nombres personales de usuario.

El curso exige ocultar datos si la base está completa. Se ocultan 1.233 tiempos de productos (10%) con semilla 42, elegidos al azar sin usar la compra ni la duración. No se rellenan: la comparación usa 11.097 tiempos disponibles y las frecuencias de compra usan 12.330 sesiones. La versión de trabajo y su respaldo deben conservarse para las próximas entregas.

## Relación con las clases

| Parte del trabajo | Referencia de la semana 1 |
|---|---|
| Calidad, `describe()`, frecuencias, `groupby()` y gráficos | Tutorial workflow |
| Media, error estándar e IC con distribución t | Tutorial python, escenario de una media |
| Dos grupos independientes y Welch | Tutorial suite, escenario 3; tutorial notebook |
| IC de la diferencia de medias | Tutorial python, escenario de dos grupos; función de SciPy para el mismo cálculo |
| Faltantes MCAR | Guía de datasets, página 3 |

La comparación se presenta en minutos. Los gráficos usan escalas ordinarias, con una vista completa y otra ampliada que está identificada. Se retiraron Yuen, las escalas logarítmicas, la correlación complementaria y los controles técnicos extensos del análisis de estudio.

## Resultado y pendientes

La media es **30,99 minutos con compra** y **17,86 sin compra**. La diferencia estimada es **13,13 minutos**, con IC del 95% de **11,24 a 15,02**. El análisis muestra una asociación; no demuestra que alargar una sesión provoque una compra.

La versión básica se ejecutó sin errores y el Word fue revisado en sus diez páginas. Quedan la comprensión y aprobación del equipo, GitHub, la ejecución real en el computador de Karla, el PDF para Canvas y la participación en el foro.
