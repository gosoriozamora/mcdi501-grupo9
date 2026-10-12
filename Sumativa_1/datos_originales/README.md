# Datos originales

Utilizamos [Online Shoppers Purchasing Intention de UCI](https://archive.ics.uci.edu/dataset/468/online+shoppers+purchasing+intention+dataset), de Sakar y Kastro (2018), DOI: [10.24432/C5F88Q](https://doi.org/10.24432/C5F88Q).

## Obtener la copia local

1. Abrir la página de UCI y descargar el dataset con su opción de descarga.
2. Extraer `online_shoppers_intention.csv` del ZIP.
3. Colocar el CSV en esta carpeta: `Sumativa_1/datos_originales/online_shoppers_intention.csv`.
4. Conservar el archivo sin editar. Las transformaciones se harán sobre una copia de trabajo.

La copia conservada para iniciar el proyecto tiene **1.072.063 bytes** y esta huella SHA-256:

```text
b3055ee355f59134d851d32641183cb4a8b45def7124d2f50442a042f358e0d9
```

Desde la raíz del repositorio, en Git Bash:

```bash
sha256sum Sumativa_1/datos_originales/online_shoppers_intention.csv
```

Si la huella difiere, revisar si cambió el archivo o su versión antes de continuar; no modificar los datos para forzar una coincidencia. La huella identifica la copia compartida por el equipo, no reemplaza la revisión estadística de calidad.

El CSV y el ZIP están excluidos mediante `.gitignore`. Este README sí se comparte. Los datos no se descargan al clonar el repositorio.
