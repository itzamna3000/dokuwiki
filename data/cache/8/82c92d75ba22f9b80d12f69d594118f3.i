a:55:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:266:"Registrar dos imágenes distintas es muy fácil cuando son del mismo sujeto y tienen el mismo contraste; si son de diferentes sujetos, todas del mismo contraste, pero las queremos llevar a un espacio estándar, estamos hablando de normalización, y como puede verse ";}i:2;i:1;}i:3;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:12:"registration";i:1;s:5:"aquí";}i:2;i:267;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:240:", eso tampoco es difícil. El siguiente paso de complejidad es registrar dos imágenes del mismo sujeto pero con contrastes distintos (p.ej. una T1 con una T2). Habitualmente eso lo logramos utilizando una función de costo apropiada, como ";}i:2;i:289;}i:5;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:529;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"mutual information";}i:2;i:531;}i:7;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:549;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:400:". Pero hay un caso muy difícil, aunque se trate de imágenes del mismo sujeto, que es cuando existen inhomogeneidades geométricas distintas entre las dos imágenes a registrar. Estas inhomogeneidades geométricas son, desgraciadamente, la norma en imágenes eco-planares (EPI) como las de contraste BOLD y las DWI, mientras que las imágenes T1 (SPGRE, por ejemplo), son inmunes a estos problemas. ";}i:2;i:551;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:951;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:951;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:207:"Por ejemplo si hacemos un registro lineal con flirt entre la T1 hacia un mapa de ADC, vemos que la parte mas anterior del cuerpo calloso de la T1 (rojos) está más anterior que la del mapa del ADC (grises):";}i:2;i:953;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1160;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1160;}i:14;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:18:":selection_029.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1162;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1191;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1191;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:376:"En esta página vamos a describir una estrategia para lograr el registro entre estas imágenes. Es importante hacer una aclaración: Es prácticamente imposible hacer un registro perfecto entre  imágenes T1 y EPI (algo que es casi garantizado, por ejemplo, entre T1 y T2). Esto es solo una estrategia que ha funcionado moderadamente bien, pero tiene mucho qué mejorar aún. ";}i:2;i:1193;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1569;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1569;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:176:"La estrategia es utilizar mapas de volumen parcial de el LCR derivados de FAST de las imágenes T1, y vamos a registrar eso contra el mapa de ADC derivado de las imágenes DWI.";}i:2;i:1571;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1747;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1747;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Para este ejemplo, vamos a asumir algunas cosas:
";}i:2;i:1749;}i:24;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1798;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"$t1";}i:2;i:1800;}i:26;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1803;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:" es mi imagen pesada a T1 (a la que ya le hicimos ";}i:2;i:1805;}i:28;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:25:"brain_extraction_tool_bet";i:1;s:3:"bet";}i:2;i:1855;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:")
,
";}i:2;i:1888;}i:30;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1892;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"$adc";}i:2;i:1894;}i:32;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1898;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"  es mi mapa de ADC derivado de mis DWIs (habiendo usado bet). ";}i:2;i:1900;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1963;}i:35;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:58:" fast -v -S 1 -n 3 -t 1 -I 1 -g -N \
  -o Fast_t1 \
  $t1 ";i:1;s:4:"bash";i:2;N;}i:2;i:1972;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1972;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:132:"Ahora haremos un primer registro entre la estimación del LCR de las imágenes T1 con el mapa de ADC. Ojo, la imagen fija es el ADC.";}i:2;i:2047;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2179;}i:39;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:93:"flirt \
  -in Fast_t1_pve_0 \
  -ref $adc \
  -omat lin.mat \
  -out lin_csf2adc_transformed ";i:1;s:4:"bash";i:2;N;}i:2;i:2186;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2186;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"Excelente, ahora vamos a afinar este registro entre imágenes utilizando un registro no lineal:";}i:2;i:2296;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2391;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:150:"
fnirt -v \
  --in=Fast_t1_pve_0 \
  --ref=$adc \
  --fout=field \
  --aff=lin.mat

applywarp -v \
  -i $t1 \
  -o t1_to_dwi \
  -r $adc \
  -w field ";i:1;s:4:"bash";i:2;N;}i:2;i:2398;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2398;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:165:"Ahora, si vemos cómo se ve la imagen T1 (rojos) registrada no-linealmente con el mapa de ADC como referencia (gris), vemos que el cuerpo calloso encaja mucho mejor:";}i:2;i:2564;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2729;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2729;}i:48;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:18:":selection_030.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:2731;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2760;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2760;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:"Dado que esta es una operación que se realiza frecuentemente, existe un escript en el laboratorio para automatizar la tarea:";}i:2;i:2763;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2888;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:245:"
inb_register_t1_to_dwi_via_csf.sh
 
inb_register_t1_to_dwi_via_csf.sh <t1> <adc> <outbase> [Options]
 
Note that t1 and adc must be skull-stripped


Options

  -keep_tmp
  -tmpDir </some/folder>

 
 LU15 (0N(H4
 INB, Feb 2015.
 lconcha@unam.mx
";i:1;N;i:2;N;}i:2;i:2895;}i:54;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2895;}}