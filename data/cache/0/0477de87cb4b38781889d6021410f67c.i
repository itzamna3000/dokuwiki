a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:1737:"<h1>Gestion de procesos y del sistema</h1>

<h2>top</h2>

<p>Muestra los procesos que se están ejecutando y permite matarlos
htop
Un programa que permite observar los procesos activos,</p>

<h2>htop</h2>

<p>El comando <code>htop</code> inicia esta interfaz en la cual nos desplazamos con las flechas arriba y abajo. El comando tiene mas opciones de control. Sin embargo nos pueden interesar dos, F6 que permite seleccionar el orden en el que se presentan los procesos, son de especial interes el arreglo por <strong>USER</strong>, <strong>CPU%</strong> y <strong>MEM%</strong>.</p>

<h2>ps</h2>

<p>Muestra la lista de procesos del usuario.
Este comando es util en varias cuestiones por ejemplo nos puede mostrar los procesos en nuestro systema, el estado del mismo, datos sobre el tamano de algun proceso, usuarios a los que pertenecen algunos procesos, tiempo del CPU, tiempo del reloj y muchos mas.
Parametros:</p>

<pre><code> -a Muestra todos los procesos con un control, este comando no solo muestra datos del usario actual.
 -r Muestra procesos que solo estan en ejecucion 
 -x Muestra procesos los cuales la termina no tiene control.
 -u Muestra los procesos del propio usuario (owner process)
 -l Muestra los datos en formato de una lista larga
 -w Muestra procesos de la linea de comandos.
</code></pre>

<h2>free -h</h2>

<p>Muestra el estado de la memoria del CPU actual.</p>

<h2>df</h2>

<p>Muestra el espacio libre de los discos/dispositivos. Legible a humanos (-h)</p>

<pre><code>  df -h
</code></pre>

<h2>ping</h2>

<p>Indica si hay respuesta por parte del servidor</p>

<pre><code>  ping mansfield
</code></pre>

<h3>El monitoreo del sistema es una actividad adjunta al uso del <a href="?id=start">cluster</a></h3>
";}i:2;i:3;i:3;s:1534:"
#Gestion de procesos y del sistema
## top
Muestra los procesos que se están ejecutando y permite matarlos
htop
Un programa que permite observar los procesos activos, 

##htop
El comando `htop` inicia esta interfaz en la cual nos desplazamos con las flechas arriba y abajo. El comando tiene mas opciones de control. Sin embargo nos pueden interesar dos, F6 que permite seleccionar el orden en el que se presentan los procesos, son de especial interes el arreglo por __USER__, __CPU%__ y __MEM%__.

##ps
Muestra la lista de procesos del usuario.
Este comando es util en varias cuestiones por ejemplo nos puede mostrar los procesos en nuestro systema, el estado del mismo, datos sobre el tamano de algun proceso, usuarios a los que pertenecen algunos procesos, tiempo del CPU, tiempo del reloj y muchos mas.
Parametros:

     -a Muestra todos los procesos con un control, este comando no solo muestra datos del usario actual.
     -r Muestra procesos que solo estan en ejecucion 
     -x Muestra procesos los cuales la termina no tiene control.
     -u Muestra los procesos del propio usuario (owner process)
     -l Muestra los datos en formato de una lista larga
     -w Muestra procesos de la linea de comandos.

##free -h
Muestra el estado de la memoria del CPU actual.

## df
Muestra el espacio libre de los discos/dispositivos. Legible a humanos (-h)

      df -h

## ping
Indica si hay respuesta por parte del servidor

      ping mansfield

### El monitoreo del sistema es una actividad adjunta al uso del [cluster](?id=start)
";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:1545;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1545;}}