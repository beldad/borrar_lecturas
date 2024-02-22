# Instrucciones para el uso del Script de Búsqueda y Eliminación de Archivos

Este script de línea de comandos está diseñado para buscar y eliminar archivos temporales (.tmp) en una ubicación específica en función de un número de 5 cifras proporcionado por el usuario. A continuación, se proporcionan instrucciones sobre cómo utilizar este script:

## Antes de usar el script:

1. **Establecer la Ruta Fija:**
   - Abre el bat en un editor de texto.
   - Caso A: 
      - Busca la línea que dice `set "RUTA_FIJA=C:\Users\Desktop"`. 
      - Reemplaza `"RUTA_FIJA"` con la ruta fija donde deseas buscar los archivos temporales.
   - Caso B :
      - Busca las lineas echo tras la linea 'echo Por favor, selecciona una ruta:' y cambiala por tus opciones
      - Cambialas con el numero correspondiente en el apartado 'Verificar la opción seleccionada por el usuario'
## Cómo utilizar el script:

1. **Ejecución del Script:**
   - Ejecuta el script abriendo el archivo .bat 
2.1 **Elegir la ruta:** ( SOLO En el caso B) 
   - Cuando se solicite, ingresa el numero de la ruta que necesitas y presiona Enter.
2.2 **Introducir un Número de 5 Cifras:**
   - Cuando se solicite, ingresa un número de exactamente 5 cifras y presiona Enter.

3. **Búsqueda y Eliminación de Archivos:**
   - El script buscará archivos temporales que contengan el número proporcionado en su nombre dentro de la ruta fija especificada.
   - Para cada archivo encontrado, se te preguntará si deseas eliminarlo. Ingresa `S` para confirmar la eliminación o `N` para mantener el archivo.

4. **Resultados:**
   - El script mostrará cuántos archivos se encontraron y eliminaron.
   - Si no se encuentra ningún archivo con el número proporcionado, se mostrará un mensaje y tendrás la opción de buscar otro número o finalizar el programa.

5. **Finalización del Programa:**
   - Una vez que hayas terminado de usar el script, podrás elegir si deseas buscar otro número o finalizar el programa.

### Notas Importantes:

- Asegúrate de tener permisos suficientes para eliminar archivos en la ubicación especificada.
- Es fundamental proporcionar un número de exactamente 5 cifras para una búsqueda precisa.
- El script se detendrá si la ruta fija especificada no existe.

¡Disfruta usando el script para gestionar tus archivos temporales de manera eficiente! Si tienes alguna pregunta o encuentras algún problema, no dudes en consultar al administrador del sistema.
