# Verificación de la versión básica de Formativa 1

Revisión del análisis: 9 de octubre de 2026. Actualización del entorno de Karla: 10 de octubre de 2026. Este registro documenta comprobaciones técnicas. La aprobación del equipo y la ejecución completa de la Formativa 1 en el computador de Karla siguen pendientes.

## Comprobaciones realizadas

- Notebook principal válido: 49 celdas, incluidas 20 de código; ejecución completa desde un kernel nuevo, sin errores.
- Notebook de preparación: 8 celdas, incluidas 3 de código; ejecución con los archivos existentes sin reescribirlos.
- Preparación en una carpeta nueva del equipo de Guillermo: los dos CSV coinciden exactamente con la versión acordada. Una segunda ejecución conserva contenido y fecha de escritura.
- CSV original, CSV de trabajo, respaldo de valores y registro previo `preparacion.json`: contenido y fecha de escritura sin cambios.
- Se verificó que solo faltan las 1.233 duraciones seleccionadas, que el respaldo contiene sus valores originales y que las demás celdas coinciden con el original.
- Las medias, la dispersión, la diferencia, los intervalos y el valor p coinciden con la versión anterior. Ahora los tiempos se expresan en minutos.
- Rutas relativas a `Formativa_1`, kernel del proyecto y dependencias compartidas mediante `requirements.txt`.
- Informe Word: 10 páginas físicas, incluyendo portada, índice y referencias. Revisadas visualmente las diez páginas y los dos gráficos. Índice actualizado con 22 enlaces internos válidos; cinco tablas editables. Plantilla original intacta y 41 componentes ajenos al contenido conservados.
- Versiones anteriores respaldadas localmente en `.local`, excluida de Git. El Word es el único informe vigente.

## Entorno de Karla confirmado el 10 de octubre de 2026

Según las salidas compartidas de los comandos ejecutados en su equipo mediante VNC:

- Carpeta local: `C:/Users/Karlita/Proyectos/Estadistica_Computacional`.
- Python 3.13.15 de 64 bits; `.venv` propia y activa.
- `python -m pip check`: `No broken requirements found.`
- NumPy 2.5.3, pandas 2.3.3, SciPy 1.18.1, Matplotlib 3.11.2 y JupyterLab 4.6.4.
- Kernel `estadistica_computacional`, visible como **Python (Estadistica Computacional)**, registrado dentro de la `.venv`.
- Una celda ejecutada en JupyterLab confirmó `C:/Users/Karlita/Proyectos/Estadistica_Computacional/.venv/Scripts/python.exe` y pandas 2.3.3.

La instalación y la prueba del kernel están completadas. Sigue pendiente obtener y preparar los datos, ejecutar el notebook de la Formativa 1 y comparar sus resultados. No se ha comprobado individualmente cada una de las 101 dependencias instaladas en Karla.

## Cifras esperadas

| Comprobación | Resultado |
|---|---|
| Sesiones totales | 12.330 |
| Sesiones con compra / sin compra | 1.908 / 10.422 |
| Duraciones disponibles con compra / sin compra | 1.710 / 9.387 |
| Media con compra / sin compra | 30,99 / 17,86 minutos |
| Mediana con compra / sin compra | 18,30 / 8,46 minutos |
| Diferencia con menos sin compra | 13,13 minutos |
| IC del 95% de la diferencia | 11,24 a 15,02 minutos |
| Prueba t de Welch bilateral | t = 13,6302; p = 1,2567851211e-40 |
| Sesiones fuera del detalle de 0 a 120 minutos | 179, conservadas en el análisis |

La comparación es observacional. No demuestra que aumentar el tiempo produzca más compras.

## Cobertura de la rúbrica

Las páginas son físicas: se cuentan desde la portada. Esta matriz localiza evidencia; no asigna una nota.

| Criterio | Puntos | Notebook principal | Informe Word |
|---|---:|---|---|
| Estadística descriptiva | 15 | Pasos 2 a 8 | Páginas 4 a 7 |
| Estimación e intervalos | 15 | Pasos 9 y 11 | Página 8 |
| Prueba de hipótesis | 15 | Paso 10 | Página 8 |
| Documentación | 15 | Explicaciones de cada paso y notebook de preparación | Páginas 5 y 10 |
| Interpretación preliminar | 15 | Pasos 7 a 12 | Páginas 6 a 9 |
| Presentación formal | 15 | Archivos ordenados | Diez páginas con formato institucional |
| Participación en foro | 9 | Actividad del equipo pendiente | Publicar el producto y comentar al menos dos trabajos reales |

El enunciado pide definir el problema, clasificar variables y describir relaciones; se cubre en la introducción y ficha, y en las páginas 3 a 7 del Word. Los intervalos y la prueba se mantienen porque la rúbrica los incluye y los tutoriales de semana 1 los enseñan.

## Pendientes del equipo

1. Estudiar los pasos y explicar con palabras propias las preguntas de comprensión del notebook.
2. Revisar y aprobar notebook e informe.
3. Publicar lo acordado en GitHub y reproducir en el disco C del computador de Karla.
4. Comparar las cifras de ambos equipos.
5. Exportar el PDF desde el Word aprobado, confirmar que siga con un máximo de 10 páginas y entregar en Canvas.
6. Publicar el producto en el foro y comentar dos trabajos reales de otros grupos.

La publicación en GitHub sigue pendiente. Los datos permanecen locales. En el equipo de Karla se completaron el entorno y la prueba de JupyterLab; todavía no se ha acreditado la ejecución de la Formativa 1.
