a:62:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:41:"Selección de elementos, filas y columnas";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:120:"Supongamos que hay un archivo con la siguiente información dentro de un archivo de valores separados por comas llamado ";}i:2;i:56;}i:5;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:176;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"datos.csv";}i:2;i:178;}i:7;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:187;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:". 
Al utilizar el valor ";}i:2;i:189;}i:9;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:213;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"$0";}i:2;i:215;}i:11;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:217;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:" se imprimen todos los valores contenidos en el archivo.";}i:2;i:219;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:281;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:271:" $ awk -F "\"*,\"*" '{print $0}' datos.csv

type,ID,WM.cm3,WM.%,GM.cm3,GM.%
no_incl,job932,381.3076,34.6114,537.8429,48.8202
no_incl,job933,599.6653,35.8897,798.9063,47.8141
no_incl,job945,523.3554,42.194,610.4963,49.2194
no_incl,job957,483.2968,35.1759,646.6898,47.0682
";i:1;N;i:2;N;}i:2;i:281;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:281;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:163:"Si quisieras imprimir la 3ra columna completa se escribe de la siguiente manera, donde el $3 equivale a la tercera columna, $2 a la segunda, $1 a la primera, etc.:";}i:2;i:561;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:730;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:87:"
$ awk -F "\"*,\"*" '{print $3}' datos.csv

WM.cm3
381.3076
599.6653
523.3554
483.2968
";i:1;N;i:2;N;}i:2;i:730;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:730;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"Con NR==# se puede escoger una fila en particular, en este caso escogemos la 3er fila:";}i:2;i:827;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:919;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:88:"
$ awk -F "\"*,\"*" 'NR==3' datos.csv

no_incl,job933,599.6653,35.8897,798.9063,47.8141
";i:1;N;i:2;N;}i:2;i:919;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:919;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:143:"Y utilizando una combinación de ambos se puede seleccionar un elemento en particular, aquí escogimos el elemento de  la 4a fila y 6a columna:";}i:2;i:1017;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1166;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:42:"
$ awk 'NR==4 {print $6}' tmp.csv

49.2194";i:1;N;i:2;N;}i:2;i:1166;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1166;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:231:"Finalmente se pueden seleccionar multiples elementos de una fila o columnas. A continuación escogimos en el primer ejemplo la fila 3, columnas 2, 3 y 4.
Y en el segundo ejemplo se escogieron de la fila 2 a la 4, columnas 2, 3 y 4.";}i:2;i:1218;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1449;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1449;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Ejemplo 1";}i:2;i:1451;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1466;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:80:"
$ awk -F "\"*,\"*" 'NR==3 {print $2,$3,$4}' datos.csv

job933 599.6653 35.8897
";i:1;N;i:2;N;}i:2;i:1466;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1466;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Ejemplo 2";}i:2;i:1555;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1570;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:133:"
$ awk -F "\"*,\"*" 'NR==2,NR==4 {print $2,$3,$4}' datos.csv

job932 381.3076 34.6114
job933 599.6653 35.8897
job945 523.3554 42.194
";i:1;N;i:2;N;}i:2;i:1570;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1713;}i:39;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:4:"Nota";i:1;i:3;i:2;i:1713;}i:2;i:1713;}i:40;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1713;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1713;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:"Si tu archivo no es .csv y es .txt o es una variable dentro de un scrip no es necesario incluir la opción ";}i:2;i:1726;}i:43;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1833;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"-F ";}i:2;i:1835;}i:45;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1838;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"\";}i:2;i:1839;}i:47;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1840;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"*,\";}i:2;i:1841;}i:49;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1844;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"*";}i:2;i:1845;}i:51;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1846;}i:52;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1847;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:102:", que solo se utiliza para indicar que los valores estan separados por comas. Entonces se escribiría:";}i:2;i:1849;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1957;}i:55;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:40:"
awk 'NR==3 {print $2,$3,$4}' datos.txt
";i:1;N;i:2;N;}i:2;i:1957;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1957;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:" o";}i:2;i:2006;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2014;}i:59;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:37:"
awk 'NR==3 {print $2,$3,$4}' $datos
";i:1;N;i:2;N;}i:2;i:2014;}i:60;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2059;}i:61;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2059;}}