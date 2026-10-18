# Sumativa 2 — Validación, simulación y remuestreo

Ejecutar `01_Sumativa2.ipynb` desde esta carpeta con el kernel **Python (Estadistica Computacional)** y las dependencias fijadas en `../requirements.txt`.

Antes deben existir los tres archivos de datos locales de `../Sumativa_1`; seguir sus README y ejecutar su notebook de preparación solo si faltan. No volver a generar la selección MCAR.

La ejecución completa produce tablas JSON en `resultados/` y figuras en `figuras/`. `Resultados_validados.json` es el insumo numérico para S3; se conserva fuera de la carpeta de resultados ignorada por Git. La ejecución también genera una copia en `resultados/`. Todos los procedimientos principales usan 10.000 repeticiones y semillas explícitas. El cuaderno no modifica S1 ni requiere Internet.

El análisis mantiene los mismos grupos, unidades y casos completos de S1. Los filtros de extremos, imputaciones y datos sintéticos son comparaciones separadas; no reemplazan la base principal.

Equivalencia de etapas: `Sumativa_1/` corresponde a S1 y `Sumativa_2/` a S2. La estructura local conserva los nombres existentes. El informe y el documento de resultados se preparan en la carpeta académica de entregas.
