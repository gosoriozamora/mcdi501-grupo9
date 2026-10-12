# Datos de trabajo

[01_preparar_datos.ipynb](../01_preparar_datos.ipynb) crea localmente estos dos archivos una sola vez. [02_Sumativa1.ipynb](../02_Sumativa1.ipynb) los reutiliza para el análisis; los CSV están excluidos de Git.

| Archivo | Contenido |
|---|---|
| `online_shoppers_mcar.csv` | 12.330 sesiones y 18 columnas, con 1.233 ausencias en el tiempo de productos |
| `valores_ocultados.csv` | Posición de fila desde cero y duración original de cada valor ocultado |

Se selecciona el 10% de las filas con NumPy `default_rng(42)` y selección sin reemplazo. Todas tienen la misma probabilidad; la elección no depende de compra ni de tiempo. El original y las otras columnas se conservan. No se rellenan los faltantes.

Si ambos archivos existen, el notebook de preparación los reutiliza. Si solo existe uno, se detiene para revisar lo ocurrido. No borrar estos archivos para hacer otro sorteo.

## Comprobación de la copia compartida

Huella SHA-256 esperada del CSV de trabajo:

```text
1fca4cb75f02f94ee6ac8aa265e338d7d3e1dcf380bd0fc67c8653260e8a0f50
```

Comprobación opcional en Git Bash, desde la raíz del repositorio:

```bash
sha256sum Sumativa_1/datos_trabajo/online_shoppers_mcar.csv
```
