a:33:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Grosor cortical";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:150:"El grosor cortical es una medida dada por la distancia existente entre la superficie límite sustancia blanca y sustancia gris , y la superficie pial.";}i:2;i:29;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:179;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:181;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"FreeSurfer";i:1;i:2;i:2;i:181;}i:2;i:181;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:181;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:181;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:212:"Es una plataforma desarrollada por el Hospital General de Massachusetts para el análisis de IRM. Facilita la visualización, el análisis volumétrico de algunas estructuras y la obtención del grosor cortical: ";}i:2;i:204;}i:11;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:22:"http://freesurfer.net/";i:1;N;}i:2;i:416;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:442;}i:13;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:444;}i:14;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Archivos a utilizar";i:1;i:1;i:2;i:444;}i:2;i:444;}i:15;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:444;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:444;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:"Para el análisis del grosor cortical utilizando Freesurfer se necesitan imágenes tipo T1-3D. Pueden ser DICOMs o nifti.";}i:2;i:478;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:599;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:601;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Pasos para el análisis";i:1;i:3;i:2;i:601;}i:2;i:601;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:601;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:601;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:211:"1. Crear carpeta “SUBJECTS_DIR” en la cual se depositaran todos los outputs de los análisis. Por ejemplo, se puede poner en una CarpetaA los dicoms e indicar que los outputs sean depositados en la Carpetab:";}i:2;i:636;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:848;}i:25;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:91:" ''/datos/maquina/usuario/CarpetaA$ export SUBJECTS_DIR=/datos/maquina/usuario/CarpetaB '' ";}i:2;i:848;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:848;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:127:"2. Ahora se procede a asignar un nombre al sujeto, si es DICOM se usa el primero (a) o si es nifti, se usa toda la carpeta (b):";}i:2;i:944;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1072;}i:29;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:97:" a) '' recon-all -s nombredelsujeto -i /datos/maquina/usuario/CarpetaA/nombredelsujeto/0001.dcm''";}i:2;i:1072;}i:30;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:100:" b)'' recon-all -s nombredelsujeto -i /datos/maquina/usuario/CarpetaA/nombredelsujeto/t13d.nii.gz ''";}i:2;i:1173;}i:31;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1173;}i:32;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1173;}}