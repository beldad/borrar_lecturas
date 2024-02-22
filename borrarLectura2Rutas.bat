@echo off
setlocal EnableDelayedExpansion

:inicio
cls

:: Preguntar al usuario por la ruta a utilizar
echo Por favor, selecciona una ruta:
echo 1. V:\COLOS PICASSENT\composer\MARKEM SMARTDATE 5
echo 2. V:\BARTENDER
set /p opcion="Opcion: "

:: Verificar la opción seleccionada por el usuario
if "%opcion%"=="1" (
    set "RUTA=V:\COLOS PICASSENT\composer\MARKEM SMARTDATE 5"
) else if "%opcion%"=="2" (
    set "RUTA=V:\BARTENDER"
) else (
    echo Opción no válida.
    pause
    goto :inicio
)

:: Verifica si la ruta seleccionada existe
if not exist "%RUTA%" (
    echo La ruta especificada no existe.
    echo Finalizando el programa...
    goto :eof
)

cls

:: Reiniciar el numero para cuando se repite
set "numero="

echo Por favor, introduce un numero de 5 cifras:
set /p numero="Numero: "

:: Verifica que el input sea un numero de exactamente 5 cifras

set "length=0"
set "input=%numero%"
:count_length
if defined input (
    set "input=%input:~1%"
    set /A "length+=1"
    if %length% gtr 5 (
        echo El numero debe contener exactamente 5 cifras.
        pause
        goto :inicio
    )
    goto :count_length
)

if %length% neq 5 (
    echo El numero debe contener exactamente 5 cifras.
    pause
    goto :inicio
)

:: Cambia al directorio objetivo para manejar mejor las rutas largas
pushd "%RUTA%"

echo Buscando archivos .tmp con el numero !numero! en !RUTA!

:: Inicializa el contador de archivos encontrados
set "contador=0"

:: Busca y elimina los archivos que contengan el numero en su nombre
for /r %%f in (*%numero%*.tmp) do (
    echo Encontrado: %%f
    set "delete_confirmed=0"
    if !delete_confirmed! equ 0 (
        set /p "confirmation=¿Desea borrar este archivo? (S/N): "
        if /i "!confirmation!" equ "S" (
            set "delete_confirmed=1"
            del "%%f"
            echo Archivo eliminado: %%f
            :: Incrementa el contador de archivos encontrados
            set /a contador+=1
        ) else (
            echo Archivo no borrado.
	        set /a contador+=1
        )
    )
)

:: Si no se encuentra ningún archivo, muestra un mensaje y permite al usuario ingresar otro numero
if !contador! equ 0 (
    echo No se encontraron archivos con el numero !numero! en !RUTA!
    pause
    goto :inicio
)

echo.
echo Proceso completado.
echo ¿Deseas buscar otro numero? (S/N)
set /p opcion=""

if /i "!opcion!"=="S" goto inicio

echo Finalizando el programa...
endlocal
