a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:2722:"<h2>Como matar un proceso</h2>

<p>En ocasiones ocurre que por alguna razón, los procesos en los que trabajamos,
necesitan ser terminados.</p>

<ul>
<li>Sea porque ocupan muchos recursos. </li>
<li>Porque se quedaron trabados</li>
<li>Porque sus procesos <em>"padre"</em> murieron pero ellos no</li>
<li>O porque no permiten la ejecución de otros programas.</li>
</ul>

<p>En cualquiera de los casos es importante saber como matar los procesos.</p>

<h3>ps y kill</h3>

<p>La opción clásica para matar un proceso es usando dos comandos en la terminal.</p>

<pre><code>ps -a
</code></pre>

<p>Permite ver una lista de los procesos en ejecución que nos pertenecen.</p>

<pre><code>ps -A
</code></pre>

<p>Nos muestra una lista completa de todos los procesos activos.  En ambos casos
se puede usar grep para buscar en la lista un programa en particular.</p>

<pre><code>ps -A | grep programa
</code></pre>

<p>Cuando lo utilizamos, nos muestra una salida como esta :</p>

<pre><code>PID TTY          TIME CMD
1841 pts/9    00:00:00 dbus-launch
3622 tty2     00:00:00 bash
5411 pts/7    00:00:00 ps
</code></pre>

<p>Donde lo importante es el número <strong>PID</strong>, pues este número es el que
utilizaremos en el comando <em>kill</em>.</p>

<pre><code>kill 5411
</code></pre>

<p>Si se necesita  que el proceso acabe inmediatamente, se puede usar  una
prioridad  <strong>9</strong> que  lo vuelve mandatorio.</p>

<pre><code>kill -9 5411
</code></pre>

<h3>htop</h3>

<p>Un programa que permite observar los procesos activos. El comando <code>htop</code> inicia
esta interfaz en la cual nos desplazamos con las flechas arriba y abajo. El
comando tiene mas opciones de control. Sin embargo nos pueden interesar dos, F6
que permite seleccionar el orden en el que se presentan los procesos, son de
especial interes el arreglo por <strong>USER</strong>, <strong>CPU%</strong> y <strong>MEM%</strong>.</p>

<p>Una vez que se selecciona el proceso se presiona <strong>F9</strong>, que nos da varias
opciones de terminar el procesos, la que aparece por default es suficiente.
Presionamos enter y el proceso termina. En cuaquier caso para salir de una
selección se presiona <strong>ESC</strong>. Y para salir del programa se usa la tecla <strong>q</strong>.</p>

<p><img src="./data/pages/htop.gif" alt="htop" /></p>

<h3>Interfaz gráfica</h3>

<p>Si se quiere hacer graficamente, se abre la aplicación <strong>system monitor</strong> o
desde la consola <code>gnome-system-monitor</code> ahí en la pestaña de procesos se ubica
el programa y al presionar el segundo botón sobre el proceso aparece la opción
<strong>kill process</strong>. Un ejemplo:</p>

<p><img src="./data/pages/killgrafico.gif" alt="htop" /></p>
";}i:2;i:3;i:3;s:2269:"
## Como matar un proceso

En ocasiones ocurre que por alguna razón, los procesos en los que trabajamos,
necesitan ser terminados. 


- Sea porque ocupan muchos recursos. 
- Porque se quedaron trabados
- Porque sus procesos _"padre"_ murieron pero ellos no
- O porque no permiten la ejecución de otros programas.

En cualquiera de los casos es importante saber como matar los procesos.

### ps y kill

La opción clásica para matar un proceso es usando dos comandos en la terminal. 

    ps -a

Permite ver una lista de los procesos en ejecución que nos pertenecen.

    ps -A

Nos muestra una lista completa de todos los procesos activos.  En ambos casos
se puede usar grep para buscar en la lista un programa en particular.

    ps -A | grep programa

Cuando lo utilizamos, nos muestra una salida como esta :

    PID TTY          TIME CMD
    1841 pts/9    00:00:00 dbus-launch
    3622 tty2     00:00:00 bash
    5411 pts/7    00:00:00 ps

Donde lo importante es el número __PID__, pues este número es el que
utilizaremos en el comando _kill_.

    kill 5411

Si se necesita  que el proceso acabe inmediatamente, se puede usar  una
prioridad  __9__ que  lo vuelve mandatorio.

    kill -9 5411
 

### htop

Un programa que permite observar los procesos activos. El comando `htop` inicia
esta interfaz en la cual nos desplazamos con las flechas arriba y abajo. El
comando tiene mas opciones de control. Sin embargo nos pueden interesar dos, F6
que permite seleccionar el orden en el que se presentan los procesos, son de
especial interes el arreglo por __USER__, __CPU%__ y __MEM%__.

Una vez que se selecciona el proceso se presiona __F9__, que nos da varias
opciones de terminar el procesos, la que aparece por default es suficiente.
Presionamos enter y el proceso termina. En cuaquier caso para salir de una
selección se presiona __ESC__. Y para salir del programa se usa la tecla __q__.

![htop](./data/pages/htop.gif)

### Interfaz gráfica

Si se quiere hacer graficamente, se abre la aplicación __system monitor__ o
desde la consola `gnome-system-monitor` ahí en la pestaña de procesos se ubica
el programa y al presionar el segundo botón sobre el proceso aparece la opción
__kill process__. Un ejemplo:

![htop](./data/pages/killgrafico.gif)



 ";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:2280;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2280;}}