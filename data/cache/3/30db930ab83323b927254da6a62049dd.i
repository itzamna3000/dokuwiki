a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:11592:"<h1>Acceso remoto por X2Go</h1>

<h2>Opciones de Acceso</h2>

<p>Accesar de manera gráfica a los equipos del cluster es sencillo con el uso de la el programa X2Goclient. 
Si bien el acceso se puede realizar mediante <strong><abbr title="secure shell">ssh</abbr></strong>, este involucra el uso de la terminal o en el caso de usar la opción <strong>-X</strong> se tendra un entorno gráfico que dependiendo del algoritmo de encriptación puede ser lento. Soluciones como <strong><abbr title="Virtual Network Computing">VNC</abbr></strong> requieren de la implementación de un servicio complejo en cada equipo a accesar.</p>

<h2>X2Go</h2>

<p><strong>X2Go</strong> Trabaja sobre <abbr title="secure shell">ssh</abbr> asi que la seguridad es inherente al programa. Ademas usa algoritmos de compresión de imágenes que permiten una conexión dinámica con el equipo, que ademas se adapta modificando la compresión del flujo de imágenes provenientes del servidor con respecto al tipo/calidad de conexión a internet.</p>

<h3>Requerimientos</h3>

<p>El software corre en <strong>WINDOWS</strong>, <strong>MAC</strong> y <strong>Linux</strong>. El servidor y el cliente ya se encuentra instalado en todos los equipos del cluster.
Para otros equipos necesitas descargar <strong>X2GoClient</strong> para tu sistema operativo:</p>

<ul>
<li><a href="http://wiki.x2go.org/doku.php/wiki:repositories:start">Linux</a> <em>Todas las versiones</em></li>
<li><a href="http://code.x2go.org/releases/X2GoClient_latest_macosx_10_9.dmg">Mac</a> <em>10.9+</em></li>
<li><a href="http://code.x2go.org/releases/X2GoClient_latest_mswin32-setup.exe">Windows</a></li>
</ul>

<blockquote>
  <p>Windows requiere permisos de administrador para su instalación. Si no cuentas con permisos la instalación varia un poco, para mas detalles visita el <a href="http://wiki.x2go.org/doku.php/doc:installation:x2goclient">X2Go wiki</a></p>
  
  <p>Mac requiere tener instalado <a href="http://www.xquartz.org/">Xquartz</a>, aunque si ya funciona freesurfer o FSL en tu equipo es probable queya este instalado.</p>
</blockquote>

<p>En el caso de <strong>Ubuntu</strong> la instalación requiere:</p>

<pre><code>sudo add-apt-repository ppa:x2go/stable
sudo apt-get update
sudo apt-get install x2goclient
</code></pre>

<h2>Configuración</h2>

<h3>IP de acceso al cluster</h3>

<p>El acceso a los equipos del cluster depende de la red en la que nos encontramos trabajando.</p>

<p><img src="./data/media/x2go/cluster.png" alt="cluster" /></p>

<p>Como se muestra en la figura, dependiendo de la conexión sera la ip que usaremo. Si nos encontramos en ethernet o mediante la red <strong>RII</strong> la conexión a la maquina se hace mediante una ip del tipo <code>172.24.80.70</code> <em>( Ejemplo: Jasper)</em>. Mientras que de la <strong>RIU</strong> o de <strong>Internet</strong> la conexión se hace a traves <code>132.248.142.55</code> <em>PENFIELD exterior</em>. Afortunadamente, ya está homologado el nombre de penfield en cualquiera de las dos redes, así que lo recomendable es usar el nombre completo: <strong><code>penfield.inb.unam.mx</code></strong>.</p>

<h3>Acceso externo (penfield.inb.unam.mx o IP:132.248.142.55)</h3>

<h4>Crear nueva sesión</h4>

<p>Para el acceso externo es importante recordar la configuración de redes de la figura anterior. Ya que la puerta de acceso al cluster es <strong>PENFIELD</strong> que tiene la ip <code>132.248.142.55</code>. Podemos escribir simplemente <code>penfield.inb.unam.mx</code>
Con esto en mente, presionamos el boton con una estrella amarilla como se muestra en la figura:</p>

<p><img src="./data/media/x2go/crearconexion.png" alt="Crear conexión" /></p>

<p>Al hacer click se abre la ventana con las opciones de conexión. En ella se configuran tres parametros:</p>

<ul>
<li><strong>Host</strong> donde colocaremos la dirección  de <strong>PENFIELD</strong> <code>132.248.142.55</code>, o <code>penfield.inb.unam.mx</code></li>
<li><strong>Usuario</strong> es el usuario que usamos al acceder al cluster. </li>
<li>Y es muy importante que en la sección <em>Tipo de sesión</em>, seleccionemos el gestor <strong>LXDE</strong>. Ya que es el mas liviano de los gestores disponibles, ademas de que <strong>Unity</strong> el típico gestor de <strong>Ubuntu</strong> no esta disponible para este servicio.</li>
</ul>

<p>Es importante que el <strong>nombre de la sesión sea descriptivo</strong> y haga referencia al servidor y a la conexión que se realiza.</p>

<p><img src="./data/media/x2go/configuracionPenfield1.png" alt="Conexión I" /></p>

<p>Una opción recomendable es el uso de claves <code>RSA/DSA</code> esto brinda mayor seguridad al acceder al cluster y evita la necesidad de introducir el password. De lo contrario cada vez que  hagamos <em>login</em>  nos pedira el password de nuestra cuenta, de la misma forma que cuando se inicia sesión en los equipos del cluster.</p>

<h4>Conexión</h4>

<p>La pestaña conexión permite cambiar la compresión de las imagenes que se envían del servidor al cliente. Si nuestra conexión es lenta podemos mover el nivel a la opción de <strong>MODEM</strong>, sin embargo esto va en detrimento de la calidad de la imagen.</p>

<p><img src="./data/media/x2go/configuracionPenfield2.png" alt="Conexión II" /></p>

<h4>Propiedades</h4>

<p>En esta ventana se puede modificar la resolución de inicio, tanto el ancho y el alto de la ventana donde interactuaremos con el servidor, hasta los DPI de la misma. Sin embargo si se abre la ventana como en el ejemplo <code>800x600</code> al maximizar la ventana se adapta a la resolución de la pantalla.</p>

<p><img src="./data/media/x2go/configuracionPenfield3.png" alt="Conexión III" /></p>

<h4>Carpetas compartidas</h4>

<p>Una opción muy interesante en <strong>X2Go</strong> es la posibilidad de compartir una carpeta local con el equipo remoto. Logrando así transferir datos de forma sencilla entre los equipos.</p>

<p>Primero seleccionamos la ruta del directorio <strong>LOCAL</strong> y presionamos <strong>Añadir</strong>.</p>

<p><img src="./data/media/x2go/configuracionPenfield4.png" alt="Conexión IV" /></p>

<p>Esto agrega la ruta en el panel mayor donde tenemos la opción de <strong>Automontar</strong> la cual podemos seleccionar para que el directorio se monte inmediatamente despues de que accedemos al equipo.</p>

<p><img src="./data/media/x2go/configuracionPenfield5.png" alt="Conexión V" /></p>

<p>Una vez configurada la sesión damos <strong>OK</strong> y se guardará la misma. Para abrir la misma solo sera necesario dar click sobre alguna de ellas.</p>

<p><img src="./data/media/x2go/configuracionPenfield5.png" alt="Varias Conexión" /></p>

<h3>Acceso Interno (IP: 172.24.80.X)</h3>

<p>Para crear una nueva conexión interna, debemos estar conectados a la red del <strong>INB</strong> ya sea por cable <code>ETHERNET</code> o mediante la red <strong>RII</strong>. El procedimiento es el mismo que el que describimos en la sección anterior. El unico aspecto que cambia es la <strong>IP</strong> que se coloca en el <strong>Host</strong> siendo <code>172.24.142.80.X</code> donde <strong>X</strong> es un numero que cambia dependiendo del servidor al que se conecte. También podemos usar los nombres de las máquinas, como por ejemplo <code>hahn.inb.unam.mx</code> , o <code>fourier.inb.unam.mx</code>.</p>

<blockquote>
  <p>Nota: En el <strong>INB</strong> también se puede abrir una sesión desde un equipo de bajo rendimiento como Arwen a el resto de los equipos de la red. Dejando el poder de procesamiento al equipo remoto. Tambíen una alternativa para acceder a algún software en la maquina remota.</p>
  
  <p>En algunos casos habrá que probar el acceso en redes dentro del <strong>INB</strong>, por ejemplo desde las Aulas de posgrado el acceso es directo. Pero desde el CAC el acceso es externo.</p>
</blockquote>

<h3>Acceso a otros equipos en el cluster (bunny hop)</h3>

<p>La conexión externa a <strong>PENFIELD</strong> es de mucha utilidad para la interacción con el ambiente gráfico. Pero esto genera mucha carga al equipo, ya que la conexión de 5 usuarios consumiría muchos de los recursos del sistema. Con esto en mente es recomendable realizar conexiones al resto de los equipos del cluster para realizar un balanceado de la carga sobre este equipo.
Para ello usaremos una modificación de la configuración de sessión que permitira usar a <strong>PENFIELD</strong> como un proxy y conectarnos al resto de los equipos en el cluster.</p>

<p>Cambios:</p>

<ul>
<li>La <strong>IP</strong> del <strong>Host</strong> debe ser la asignada internamente al equipo, esta en general esta en el rango <code>172.24.80.X</code>, con una variación en el ultimo número. También podemos usar su nombre completo, como por ejemplo <code>hahn.inb.unam.mx</code>.</li>
<li>Ademas seleccionamos la opción <strong>Usar servidor Proxy para la conexión SSH</strong>.</li>
<li>Seleccionamos <strong>Mismos datos de inicio de sesión que en el servidor X2GO</strong></li>
<li>Seleccionamos el tipo de servidor como <strong>SSH</strong></li>
<li>En el <strong>Host</strong> del Servidor Proxi usamos la <strong>IP</strong> de <strong>PENFIELD</strong> <code>132.248.142.55</code>, o su nombre completo, <code>penfield.inb.unam.mx</code>.</li>
</ul>

<p>Podemos usar una clave <strong>RSA/DSA</strong>, aunque si no se usa de cualquier forma al acceder se nos pedira el password relacionado con el usuario.</p>

<p><img src="./data/media/x2go_config_01.png" alt="Conexión Interna" /></p>

<h2>Cerrar sesión</h2>

<p>Al terminar de utilizar el equipo se puede salir de dos formas. Cerrando la sessión en el equipo remoto. Primero usamos el boton para cerrar sesión.</p>

<p><img src="./data/media/x2go/cerrarsesion2.png" alt="Cerrar sesión" /></p>

<p>Esto desplegara la ventana de sesión y ahí seleccionaremos el boton <strong>Logout</strong> para cerrar la sesión.</p>

<p><img src="./data/media/x2go/cerrarsesion3.png" alt="Cerrar sesión II" /></p>

<blockquote>
  <p><strong>CUIDADO:</strong> No debemos apagar, reiniciar, Hibernar o Suspender el equipo. Podría causar un problema al funcionamiento del cluster.</p>
</blockquote>

<p>También podemos cerrar la ventana de X2Go manteniendo los programas y el espacio de trabajo activos. Esto ya sea cerrando la ventana principal de X2Go o presionando <code>Ctrl + Alt + T</code>.</p>

<blockquote>
  <p><strong>Precaución:</strong> Si bien los programas se conservan, existe la posibilidad de que la sesión no se pueda recuperar. No es común y se puede deber a un error del sistema pero es recomendable guardar los archivos en los que trabajamos.</p>
</blockquote>

<h2>Problemas con recarga de sesión</h2>

<p>Cuando abandonamos la sesión de trabajo, en ocasiones podemos tener problemas al retomarla nuevamente. Esto puede ser por velocidad de conexión, para lo cual modificamos en preferencias la velocidad de conexión. Pero también puede deberse a que algunos de los salvapantallas entorpecen el incio de sesión. Por lo que es recomendable desactivar los salvapantallas de la sesión lxde.</p>

<p>Se logra abriendo el <strong>Menú de inicio</strong> > <strong>Preferencias</strong> > <strong>Screensarver</strong>. En la ventana simplemente cambiamos el nombre del screensaver, que por default esta en alaeatorio y seleccionamos la opción de <strong>"Disable Screen Saver"</strong>, que también puede ser seleccionada la opción <strong>"Black Screen Only"</strong>. Con esto se puede retomar la sesion con mayor facilidad.</p>
";}i:2;i:3;i:3;s:9773:"
*[ssh]: secure shell
*[VNC]: Virtual Network Computing 
#Acceso remoto por X2Go

## Opciones de Acceso
Accesar de manera gráfica a los equipos del cluster es sencillo con el uso de la el programa X2Goclient. 
Si bien el acceso se puede realizar mediante **ssh**, este involucra el uso de la terminal o en el caso de usar la opción **-X** se tendra un entorno gráfico que dependiendo del algoritmo de encriptación puede ser lento. Soluciones como **VNC** requieren de la implementación de un servicio complejo en cada equipo a accesar.

## X2Go
**X2Go** Trabaja sobre ssh asi que la seguridad es inherente al programa. Ademas usa algoritmos de compresión de imágenes que permiten una conexión dinámica con el equipo, que ademas se adapta modificando la compresión del flujo de imágenes provenientes del servidor con respecto al tipo/calidad de conexión a internet.

### Requerimientos

El software corre en **WINDOWS**, **MAC** y **Linux**. El servidor y el cliente ya se encuentra instalado en todos los equipos del cluster.
Para otros equipos necesitas descargar **X2GoClient** para tu sistema operativo:

* [Linux](http://wiki.x2go.org/doku.php/wiki:repositories:start) *Todas las versiones*
* [Mac](http://code.x2go.org/releases/X2GoClient_latest_macosx_10_9.dmg) *10.9+*
* [Windows](http://code.x2go.org/releases/X2GoClient_latest_mswin32-setup.exe)

> Windows requiere permisos de administrador para su instalación. Si no cuentas con permisos la instalación varia un poco, para mas detalles visita el [X2Go wiki](http://wiki.x2go.org/doku.php/doc:installation:x2goclient)


> Mac requiere tener instalado [Xquartz](http://www.xquartz.org/), aunque si ya funciona freesurfer o FSL en tu equipo es probable queya este instalado.

En el caso de **Ubuntu** la instalación requiere:

    sudo add-apt-repository ppa:x2go/stable
    sudo apt-get update
    sudo apt-get install x2goclient

## Configuración

### IP de acceso al cluster

El acceso a los equipos del cluster depende de la red en la que nos encontramos trabajando. 

![cluster](./data/media/x2go/cluster.png)

Como se muestra en la figura, dependiendo de la conexión sera la ip que usaremo. Si nos encontramos en ethernet o mediante la red **RII** la conexión a la maquina se hace mediante una ip del tipo `172.24.80.70` *( Ejemplo: Jasper)*. Mientras que de la **RIU** o de **Internet** la conexión se hace a traves `132.248.142.55` *PENFIELD exterior*. Afortunadamente, ya está homologado el nombre de penfield en cualquiera de las dos redes, así que lo recomendable es usar el nombre completo: **`penfield.inb.unam.mx`**.

### Acceso externo (penfield.inb.unam.mx o IP:132.248.142.55)

#### Crear nueva sesión

Para el acceso externo es importante recordar la configuración de redes de la figura anterior. Ya que la puerta de acceso al cluster es **PENFIELD** que tiene la ip `132.248.142.55`. Podemos escribir simplemente `penfield.inb.unam.mx`
Con esto en mente, presionamos el boton con una estrella amarilla como se muestra en la figura:

![Crear conexión](./data/media/x2go/crearconexion.png)

Al hacer click se abre la ventana con las opciones de conexión. En ella se configuran tres parametros:

* **Host** donde colocaremos la dirección  de **PENFIELD** `132.248.142.55`, o `penfield.inb.unam.mx`
* **Usuario** es el usuario que usamos al acceder al cluster. 
* Y es muy importante que en la sección *Tipo de sesión*, seleccionemos el gestor **LXDE**. Ya que es el mas liviano de los gestores disponibles, ademas de que **Unity** el típico gestor de **Ubuntu** no esta disponible para este servicio.

Es importante que el **nombre de la sesión sea descriptivo** y haga referencia al servidor y a la conexión que se realiza.

![Conexión I](./data/media/x2go/configuracionPenfield1.png)

Una opción recomendable es el uso de claves `RSA/DSA` esto brinda mayor seguridad al acceder al cluster y evita la necesidad de introducir el password. De lo contrario cada vez que  hagamos *login*  nos pedira el password de nuestra cuenta, de la misma forma que cuando se inicia sesión en los equipos del cluster.

#### Conexión

La pestaña conexión permite cambiar la compresión de las imagenes que se envían del servidor al cliente. Si nuestra conexión es lenta podemos mover el nivel a la opción de **MODEM**, sin embargo esto va en detrimento de la calidad de la imagen.

![Conexión II](./data/media/x2go/configuracionPenfield2.png)

#### Propiedades

En esta ventana se puede modificar la resolución de inicio, tanto el ancho y el alto de la ventana donde interactuaremos con el servidor, hasta los DPI de la misma. Sin embargo si se abre la ventana como en el ejemplo `800x600` al maximizar la ventana se adapta a la resolución de la pantalla.

![Conexión III](./data/media/x2go/configuracionPenfield3.png)

#### Carpetas compartidas

Una opción muy interesante en **X2Go** es la posibilidad de compartir una carpeta local con el equipo remoto. Logrando así transferir datos de forma sencilla entre los equipos. 

Primero seleccionamos la ruta del directorio **LOCAL** y presionamos **Añadir**.

![Conexión IV](./data/media/x2go/configuracionPenfield4.png)

Esto agrega la ruta en el panel mayor donde tenemos la opción de **Automontar** la cual podemos seleccionar para que el directorio se monte inmediatamente despues de que accedemos al equipo.

![Conexión V](./data/media/x2go/configuracionPenfield5.png)

Una vez configurada la sesión damos **OK** y se guardará la misma. Para abrir la misma solo sera necesario dar click sobre alguna de ellas.

![Varias Conexión](./data/media/x2go/configuracionPenfield5.png)

### Acceso Interno (IP: 172.24.80.X)

Para crear una nueva conexión interna, debemos estar conectados a la red del **INB** ya sea por cable `ETHERNET` o mediante la red **RII**. El procedimiento es el mismo que el que describimos en la sección anterior. El unico aspecto que cambia es la **IP** que se coloca en el **Host** siendo `172.24.142.80.X` donde **X** es un numero que cambia dependiendo del servidor al que se conecte. También podemos usar los nombres de las máquinas, como por ejemplo `hahn.inb.unam.mx` , o `fourier.inb.unam.mx`.

> Nota: En el **INB** también se puede abrir una sesión desde un equipo de bajo rendimiento como Arwen a el resto de los equipos de la red. Dejando el poder de procesamiento al equipo remoto. Tambíen una alternativa para acceder a algún software en la maquina remota.


> En algunos casos habrá que probar el acceso en redes dentro del **INB**, por ejemplo desde las Aulas de posgrado el acceso es directo. Pero desde el CAC el acceso es externo.

### Acceso a otros equipos en el cluster (bunny hop)

La conexión externa a **PENFIELD** es de mucha utilidad para la interacción con el ambiente gráfico. Pero esto genera mucha carga al equipo, ya que la conexión de 5 usuarios consumiría muchos de los recursos del sistema. Con esto en mente es recomendable realizar conexiones al resto de los equipos del cluster para realizar un balanceado de la carga sobre este equipo.
Para ello usaremos una modificación de la configuración de sessión que permitira usar a **PENFIELD** como un proxy y conectarnos al resto de los equipos en el cluster.

Cambios:

* La **IP** del **Host** debe ser la asignada internamente al equipo, esta en general esta en el rango `172.24.80.X`, con una variación en el ultimo número. También podemos usar su nombre completo, como por ejemplo `hahn.inb.unam.mx`.
* Ademas seleccionamos la opción **Usar servidor Proxy para la conexión SSH**.
* Seleccionamos **Mismos datos de inicio de sesión que en el servidor X2GO**
* Seleccionamos el tipo de servidor como **SSH**
* En el **Host** del Servidor Proxi usamos la **IP** de **PENFIELD** `132.248.142.55`, o su nombre completo, `penfield.inb.unam.mx`.

Podemos usar una clave **RSA/DSA**, aunque si no se usa de cualquier forma al acceder se nos pedira el password relacionado con el usuario.

![Conexión Interna](./data/media/x2go_config_01.png)


## Cerrar sesión

Al terminar de utilizar el equipo se puede salir de dos formas. Cerrando la sessión en el equipo remoto. Primero usamos el boton para cerrar sesión.

![Cerrar sesión](./data/media/x2go/cerrarsesion2.png)

Esto desplegara la ventana de sesión y ahí seleccionaremos el boton **Logout** para cerrar la sesión.

![Cerrar sesión II](./data/media/x2go/cerrarsesion3.png)


> **CUIDADO:** No debemos apagar, reiniciar, Hibernar o Suspender el equipo. Podría causar un problema al funcionamiento del cluster.
 
También podemos cerrar la ventana de X2Go manteniendo los programas y el espacio de trabajo activos. Esto ya sea cerrando la ventana principal de X2Go o presionando `Ctrl + Alt + T`.

> **Precaución:** Si bien los programas se conservan, existe la posibilidad de que la sesión no se pueda recuperar. No es común y se puede deber a un error del sistema pero es recomendable guardar los archivos en los que trabajamos.

## Problemas con recarga de sesión 

Cuando abandonamos la sesión de trabajo, en ocasiones podemos tener problemas al retomarla nuevamente. Esto puede ser por velocidad de conexión, para lo cual modificamos en preferencias la velocidad de conexión. Pero también puede deberse a que algunos de los salvapantallas entorpecen el incio de sesión. Por lo que es recomendable desactivar los salvapantallas de la sesión lxde.

Se logra abriendo el **Menú de inicio** > **Preferencias** > **Screensarver**. En la ventana simplemente cambiamos el nombre del screensaver, que por default esta en alaeatorio y seleccionamos la opción de **"Disable Screen Saver"**, que también puede ser seleccionada la opción **"Black Screen Only"**. Con esto se puede retomar la sesion con mayor facilidad.

";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:9784;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:9784;}}