---1. Realiza una copia de una BBDD con mysqldump. Detén el servidor MySQL y elimina el contenido de la carpeta de datos. Restaura la copia.
        C:\Users\2asir-06>mysqldump -u root -p futbolasir > futbolasir.sql
        Enter password: *****

        C:\Users\2asir-06>dir *.sql
        El volumen de la unidad C no tiene etiqueta.
        El número de serie del volumen es: 145F-D389

        Directorio de C:\Users\2asir-06

        24/10/2022  09:05             5.331 futbolasir.sql
                1 archivos          5.331 bytes
                0 dirs  197.385.060.352 bytes libres

---2. Copia de seguridad Incremental: 

        ---a. Activa el registro binario de tu servidor MySQL.
        ---b. Realiza una copia de seguridad completa 
        ---c. Haz varias operaciones de modificación de datos en la Base de datos.
        ---d. Elimina ahora todos los datos.
        truncate  
        ---e. Restaura todos los datos de una manera adecuada.
        mysqlbinlog miserver-log


---3. Copia de Seguridad periódica. Configura en Ubuntu (con Cron) o Windows (comando ato tarea programada) para realizar copias de seguridad periódicascada mes. Puedes hacer un script para guardar de alguna manera un backup lo puedes
realizar en Ubuntu o Windows.
