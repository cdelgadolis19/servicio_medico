<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name . ' - Contáctenos';
$this->breadcrumbs=array(
	'Ayuda'=>array('index'),
	'Preguntas Frecuentes',
);
?>

<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading1">
      <h5 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
          ¿Qué es el Depósito Legal?
        </a>
      </h5>
    </div>
    <div id="collapse1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading1">
      <div class="panel-body">
        <p class="textooo">Es la normativa jurídica del Estado venezolano que se rige por la Ley de Depósito Legal y su Reglamento y tiene como misión asegurar el ingreso de todos aquellos materiales bibliográficos, no bibliográficos y audiovisuales producidos en el país y en el exterior con circulación en Venezuela, garantizando de esta forma,  la preservación, conservación de la memoria nacional y acceso universal a la información, consagrado en nuestra carta magna.
       <br><br><b>Ley de Depósito Legal en el Instituto Autónomo Biblioteca Nacional</b><br> Publicada en Gaceta Extraordinaria Oficial N° 4.623 de fecha 03 de septiembre de 1993.<br><br>
	<b>Reglamento de la Ley de Depósito Legal en el Instituto Autónomo Biblioteca Nacional</b><br> Publicado en Gaceta Extraordinaria Oficial N° 5.163 de fecha 13 de agosto de 1.997.
        </p>
        <div class="izquierda2"><?php $this->widget(
'booster.widgets.TbButton', array(
'buttonType' => 'link',
'size' => 'large',
'icon' =>'glyphicon glyphicon-download-alt',
'context' => 'info',
'htmlOptions' => array('target'=>'_blank'),
'url'=> Yii::app()->baseUrl.'/images/ley_deposito_legal.pdf',
//Yii::app()->createUrl('images/form.pdf'),
// 'url' => '#',
'label' => 'Ley Depósito Legal' )
 );
?></div>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading2">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
          ¿Quién ejecuta la Ley?
        </a>
      </h5>
    </div>
    <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
      <div class="panel-body">
      <p class="textooo">La División de Depósito Legal, unidad administrativa del Instituto Autónomo Biblioteca Nacional y de Servicios de Bibliotecas.</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading3">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
          ¿Quiénes deben cumplirla?
        </a>
      </h5>
    </div>
    <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
      <div class="panel-body">
        <p class="textooo">Las personas naturales y jurídicas tanto del sector público como privado, responsables  de editar o producir materiales  bibliográficos, no bibliográficos y audiovisuales en Venezuela, en cualquier formato o  soporte, así como también los distribuidores exclusivos de materiales extranjeros que circulen en el país.</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading4">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
          ¿Qué es el Número de Depósito Legal?
        </a>
      </h5>
    </div>
    <div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading4">
      <div class="panel-body">
        <p class="textooo">Es un registro numérico nacional que identifica cada material y permite determinar la producción editorial del país. De acuerdo con la Ley de Depósito Legal y su Reglamento, es obligatoria su solicitud para los materiales editados o producidos en Venezuela en cualquier formato o soporte. Dicho número debe colocarse en un lugar visible del material.</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading30">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse30" aria-expanded="false" aria-controls="collapse30">
         Sistema de numeración del Depósito Legal
        </a>
      </h5>
    </div>
    <div id="collapse30" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading30">
      <div class="panel-body">
        <p class="textooo">El sistema automatizado del Depósito Legal genera un número compuesto por código del estado, donde se registra el editor, productor o distribuidor, año en curso y número correlativo.<br>

Ejemplo:  <b>DC2016000001</b> corresponde a una obra cuyo editor se localiza en el Distrito Capital, año de publicación 2016 y número correlativo</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading5">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
          ¿Qué Materiales están sujetos a dicha normativa jurídica?
        </a>
      </h5>
    </div>
    <div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading5">
      <div class="panel-body">
        <p class="textooo"><ul>
  		<li>Producciones bibliográficas: Libros (a partir de 48 páginas); folletos (a partir de 8 páginas) impresos, audiolibros, libros  y folletos en versión digital y tesis de postgrado.</li>
  		<li>Publicaciones seriadas: periódicos, revistas, boletines, informes, gacetas, memorias y cuenta, anuarios, guías y directorios (en cualquier formato o soporte).</li>
  		<li>Producciones no bibliográficas impresas en papel o en cualquier formato o soporte: Carteles, catálogos (hasta 8 páginas), programas de mano, agendas, plegables, guías didácticas (hasta 8 páginas), calendarios y almanaques, tarjetas y postales, sellos postales, partituras, mapas y planos.</li>
  		<li>Materiales fijados en soporte audiovisual: Producciones fonográficas (CD de música), cortometrajes, mediometrajes, largometrajes, documentales, micros, programas de radio y televisión.</li>
	</ul>
	</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading6">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
         ¿Cuáles son los requisitos para obtener el número de Depósito Legal?
        </a>
      </h5>
    </div>
    <div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading6">
      <div class="panel-body">
    <p class="textooo"><b>Requisitos previos:</b><br></p>
   <ul>
    <li>Debe de tener el Registro Único de Información Fiscal (RIF), en caso contrario deberá realizar el registro en el Servicio Nacional Integrado de Administración Aduanera y Tributaria (SENIAT).</li>
    <li>Dos (2) cuentas de correo electrónico activos.</li>
	</ul>
	<!--<p class="textooo">Luego deberá ingresar en la página oficial de la Biblioteca Nacional (depositolegal.bnv.gob.ve) para realizar el registro de usuario como Editor/Productor.<br><br>-->
	<br><b>¡IMPORTANTE!</b><br>
	Si el Registro Único de Información Fiscal (RIF) es menor a nueve (9) dígitos complete con ceros (0) a la izquierda.
    </p>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading20">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse20" aria-expanded="false" aria-controls="collapse20">
         ¿Cómo hacer para obtener el Número de Depósito Legal?
        </a>
      </h5>
    </div>
    <div id="collapse20" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading20">
      <div class="panel-body">
      <p class="textooo">
1.- Ingresar  al  link: <b>http://depositolegal.bnv.gob.ve</b> <br>
2.- Registrarse como usuario(a) en el Sistema Automatizado de Depósito Legal (SADEL) con su número de RIF el cual le generará una clave de acceso que será enviada a su correo.<br>
3.- Suministrar los datos que solicita el SADEL para el registro de la obra y seguir las instrucciones.<br><br>
Una vez obtenido el número de registro del Depósito Legal, el sistema le permitirá modificar datos en casos de error, anular el código en caso de no ser utilizado, descargar la constancia de asignación del número obtenido si desea imprimirlo y descargar el formato de constancia de entrega de ejemplares para remitirlo adjunto con la obra a la División de Depósito Legal para su recepción  por parte de esta unidad.</p>
      </div>
    </div>
  </div>
<div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading22">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse22" aria-expanded="false" aria-controls="collapse22">
         ¿Cómo iniciar sesión?
        </a>
      </h5>
    </div>
    <div id="collapse22" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading22">
      <div class="panel-body">
      <p class="textooo">
Al ingresar la primera vez, deberá registrarse como usuario(a) con el número del RIF y colocar los demás datos que le solicita el sistema. A partir de la segunda vez que necesite ingresar al sistema sólo deberá colocar el número del RIF y la clave.</p>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading14">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse14" aria-expanded="false" aria-controls="collapse14">
		¿Qué vigencia tiene el número de Depósito Legal?
        </a>
      </h5>
    </div>
    <div id="collapse14" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading14">
      <div class="panel-body">
          <p class="textooo">El número de Depósito Legal sólo puede ser utilizado para el año en curso de su solicitud. En caso de no ser empleado en ese tiempo, debe ser anulado y notificado por escrito.</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading15">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse15" aria-expanded="false" aria-controls="collapse15">
		¿Las ediciones o producciones digitales llevan número de Depósito Legal?
        </a>
      </h5>
    </div>
    <div id="collapse15" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading15">
      <div class="panel-body">
          <p class="textooo">Si, según lo establecido en la ley de Depósito Legal y su Reglamento, toda obra editada o producida en el territorio nacional debe llevar un número de Depósito Legal, independientemente de su formato o soporte.</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading7">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="false" aria-controls="collapse7">
          ¿Cuántos ejemplares deben entregarse?
        </a>
      </h5>
    </div>
    <div id="collapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading7">
      <div class="panel-body">
        <p class="textooo">Según lo establecido en la Ley y su Reglamento, se deben remitir a la División de Depósito Legal:<br/>
	<ul>
		<li>Tres (03) ejemplares de materiales impresos en papel.</li>
		<li>Tres (03) ejemplares de materiales editados en versión digital (deben entregarse en formato de CD).</li>
		<li>Dos (02) ejemplares de materiales fonográficos (CD de música).</li>
		<li>Un (01) ejemplar de materiales audiovisuales (cortometrajes, mediometrajes, largometrajes, documentales, micros, programas de radio y televisión) en soporte  de CD.</li>
	</ul>
		En caso de publicaciones editadas o producidas por entes de la Administración Pública Nacional Central y Descentralizada, debe entregarse hasta un 25% del tiraje de lo publicado, con el objeto de dotar tanto a las colecciones de la Biblioteca Nacional como a la Red Nacional de Bibliotecas Públicas del país.</p>
      </div>
    </div>
  </div>
<div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading23">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse23" aria-expanded="false" aria-controls="collapse23">
          ¿Dónde se puede contactar la División de Depósito Legal?
        </a>
      </h5>
    </div>
    <div id="collapse23" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading23">
      <div class="panel-body">
        <p class="textooo">La División de Depósito Legal está ubicada en la siguiente dirección: Final de la Avenida Panteón, Biblioteca Nacional, Sede Administrativa, Nivel AP-0, Complejo Cultural Foro Libertador. Parroquia Altagracia. Caracas 1010, Venezuela. <b>Apartado Postal 6525 – Caracas, Venezuela.</b><br><br>Teléfonos: (0212) 505.91.75 - 505.91.76 – 505.91.77 – 505.91.83</p>
      </div>
    </div>
  </div>
<div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading24">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse24" aria-expanded="false" aria-controls="collapse24">
          ¿Dónde debo entregar los ejemplares si resido en el interior del país?
        </a>
      </h5>
    </div>
    <div id="collapse24" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading24">
      <div class="panel-body">
        <p class="textooo">En caso de materiales editados o producidos en el interior del país, la entrega de los ejemplares que establece la Ley y su Reglamento debe hacerse en la Biblioteca Pública Central ubicada en cada entidad federal.</p>
      </div>
    </div>
  </div>

   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading12">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse12" aria-expanded="false" aria-controls="collapse12">
		¿Cuál es el  lapso de entrega de las  obras que establece la ley una vez editadas? 
        </a>
      </h5>
    </div>
    <div id="collapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12">
      <div class="panel-body">
          <p class="textooo"><strong>Treinta (30) días</strong> continuos después de su edición o producción y antes de su distribución o venta.</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading13">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse13" aria-expanded="false" aria-controls="collapse13">
		¿La solicitud del número de Depósito Legal tiene algún costo?
        </a>
      </h5>
    </div>
    <div id="collapse13" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading13">
      <div class="panel-body">
          <p class="textooo">No, los trámites para obtener el número de Depósito Legal son totalmente gratuitos.</p>
      </div>
    </div>
  </div>
    <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading16">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse16" aria-expanded="false" aria-controls="collapse16">
		¿Cómo hacer para anular un número de Depósito Legal no utilizado? 
        </a>
      </h5>
    </div>
    <div id="collapse16" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading16">
      <div class="panel-body">
          <p class="textooo">
          <ul>
		<li>Primera opción: Enviando un correo electrónico a la siguiente dirección: <a href="mailto:deposito.legalvenezuela@bnv.gob.ve">deposito.legalvenezuela@bnv.gob.ve</a></li>
		<li>Segunda opción: Notificando a través de un oficio al Instituto Autónomo Biblioteca Nacional y de Servicios de Bibliotecas con Atención a la Dirección Desarrollo de Colecciones / División Depósito Legal.</li>
		<li>Tercera opción: Ingresando al sistema con el usuario que realizó la solicitud del número de Depósito Legal, siguiendo la ruta:<br><b>Solicitud --> Consultar --> Hacer click en el icono <span class="glyphicon glyphicon-ban-circle" aria-hidden="true"></span></b></li>
	</ul>
          </p>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading21">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse21" aria-expanded="false" aria-controls="collapse21">
         ¿Número de Depósito Legal anulado, puede ser utilizado?
        </a>
      </h5>
    </div>
    <div id="collapse21" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading21">
      <div class="panel-body">
      <p class="textooo">Una vez anulado el número de Depósito Legal asignado, el mismo no podrá ser utilizado. En caso de necesitar un número deberá solicitarlo de nuevo.</p>
      </div>
    </div>
  </div>
<div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading25">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse25" aria-expanded="false" aria-controls="collapse25">
         ¿Cuándo se va a realizar una reimpresión o reedición de cualquier material editado o producido durante el año en que se solicita el número de Depósito Legal, se debe solicitar un número nuevo?
        </a>
      </h5>
    </div>
    <div id="collapse25" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading25">
      <div class="panel-body">
        <p class="textooo">No, porque este material editado o producido no ha sufrido ningún cambio.</p>
      </div>
    </div>
  </div>
<div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading26">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse26" aria-expanded="false" aria-controls="collapse26">
          ¿Cuándo es una reimpresión de años anteriores deberá solicitar el número de Depósito Legal del año en curso?
        </a>
      </h5>
    </div>
    <div id="collapse26" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading26">
      <div class="panel-body">
        <p class="textooo">Si, porque pertenece a la producción editorial del año.</p>
      </div>
    </div>
  </div>
<div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading27">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse27" aria-expanded="false" aria-controls="collapse27">
          ¿Cuándo se realiza una nueva edición de una obra que ha solicitado número de Depósito Legal durante el año en curso, se debe solicitar un número nuevo?
        </a>
      </h5>
    </div>
    <div id="collapse27" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading27">
      <div class="panel-body">
        <p class="textooo">Si, porque no es la misma obra, ya ha sufrido cambios.</p>
      </div>
    </div>
  </div>
    <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading17">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse17" aria-expanded="false" aria-controls="collapse17">
		¿El número de Depósito Legal para publicaciones seriadas se solicita una sola vez?
        </a>
      </h5>
    </div>
    <div id="collapse17" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading17">
      <div class="panel-body">
          <p class="textooo">Sí, se solicita una sola vez, siempre y cuando la publicación no sufra un cambio de título.</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading18">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse18" aria-expanded="false" aria-controls="collapse18">
		¿Cuándo un  ministerio cambia de nombre se debe solicitar un nuevo número de Depósito Legal para la Memoria y Cuenta? 
        </a>
      </h5>
    </div>
    <div id="collapse18" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading18">
      <div class="panel-body">
          <p class="textooo">Sí, debido a que cambia el nombre del ministerio y el título de la memoria y cuenta.</p>
      </div>
    </div>
  </div>
<div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading28">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse28" aria-expanded="false" aria-controls="collapse28">
	¿Cuál es la diferencia entre ISBN e ISSN?
        </a>
      </h5>
    </div>
    <div id="collapse28" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading28">
      <div class="panel-body">
         <p class="textooo">El <strong>ISBN (International Standard Book Number)</strong> es un número internacional sólo para libros y folletos, en cualquier formato o soporte y debe tramitarse ante el <strong>Centro Nacional del Libro (CENAL)</strong>, mientras que el <strong>ISSN (Internatinal Standard Serials Number)</strong> es un número internacional sólo para publicaciones seriadas y es otorgado por la <strong>Biblioteca Nacional de Venezuela</strong> para aquellas publicaciones de carácter científico, académico, humanístico o tecnológico únicamente.</p>
      </div>
    </div>
  </div>
<div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading29">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse29" aria-expanded="false" aria-controls="collapse29">
	¿Qué diferencia hay entre Depósito Legal y Derecho de Autor?
        </a>
      </h5>
    </div>
    <div id="collapse29" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading29">
      <div class="panel-body">
      <p class="textooo">El Depósito Legal es un registro nacional de carácter obligatorio para obras editadas o producidas en el territorio nacional, mientras que el registro del derecho de autor es optativo y se gestiona a través del <strong>Servicio Autónomo de la Propiedad Intelectual (SAPI)</strong>.</p>
      </div>
    </div>
  </div>
   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading8">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse8" aria-expanded="false" aria-controls="collapse8">
          ISSN (International Standard Serial Number)
        </a>
      </h5>
    </div>
    <div id="collapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading8">
      <div class="panel-body">
        <h5>Número Internacional Normalizado para Publicaciones Seriadas</h5>
  <p class="textooo">
  El <strong>ISSN</strong> es un código internacional normalizado para la identificación de publicaciones seriadas que según la norma <strong>ISO 3297 (ISSN)</strong>, son aquellas que se editan en cualquier medio o soporte (impreso o digital) en partes sucesivas llevando, generalmente, una designación numérica o cronológica bajo un título común y destinado a aparecer indefinidamente.<br/><br/>

 Las publicaciones seriadas incluyen: periódicos, revistas, boletines, informes, anuarios, guías y directorios, gacetas, memoria y cuenta y series monográficas. Dichos números son asignados por el <strong>Centro Nacional ISSN</strong> en cada país, con la finalidad de distinguir estas publicaciones de otros títulos similares o idénticos que pudieran existir en el mundo. Esta codificación internacional se emplea para generar los códigos de barra.<br/><br/>

 El <strong>ISSN</strong> es un número compuesto por ocho dígitos que está controlado por el <strong>ISDS (Sistema Internacional de Datos de Seriadas)</strong>, organismo que tiene la responsabilidad exclusiva de asignarlo, y cuya sede está ubicada en París, Francia. En Venezuela el Centro Nacional ISDS está adscrito a la División de Depósito Legal de la Biblioteca Nacional, donde deben dirigirse los usuarios para solicitar la asignación respectiva. Se otorga solamente a publicaciones cuyo contenido tenga carácter científico, humanístico, tecnológico, cultural y académico. El número debe aparecer en cada ejemplar de la publicación seriada, en dos grupos de cuatro caracteres separados por un guión y precedido por las letras <strong>ISSN</strong>.<br/><br/>

El código de ISSN facilita la actualización y vinculación de archivos, recuperación y transmisión de datos, además permite a estudiantes, investigadores, especialistas de la información y bibliotecarios, citar las publicaciones seriadas con precisión y sin equívocos.<br/><br/>

Se utiliza mundialmente como número de control, clave de acceso y herramienta de citas de comunicación. En las bibliotecas se emplea para identificar títulos, hacer compras, intercambios (canje), nutrir el catálogo colectivo y verificar existencias de las publicaciones seriadas, así como para facilitar el préstamo inter bibliotecario, constituyéndose en una herramienta fundamental para la gestión eficaz del suministro de documentos.<br/><br/>

Además, es un instrumento de comunicación útil entre editoriales y distribuidores, aumenta la rapidez y la eficacia de los sistemas de distribución comercial, especialmente mediante su utilización en los códigos de barra y en el intercambio electrónico de datos.<br/><br/>

El ISSN es usado por editores, distribuidores y agencias de suscripciones, bibliotecas, sistemas de información, servicios de resúmenes y de indización, catálogos colectivos, sistemas de Depósito Legal y servicios postales. En Venezuela, se exige que el primer número de la publicación seriada se edite sin este código y sea remitido a la División de Depósito Legal para su evaluación, con el fin de verificar que el material cumpla con las exigencias pertinentes que justifiquen su otorgamiento.<br/>
</p>
      </div>
    </div>
  </div>
  <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading9">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse9" aria-expanded="false" aria-controls="collapse9">
		Requisitos para la Asignación del ISSN
        </a>
      </h5>
    </div>
    <div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading9">
      <div class="panel-body">
          <p class="textooo">Enviar el <mark>formulario del Centro Nacional del ISDS</mark>,<strong> al correo electrónico: <a href="mailto:issn@bnv.gob.ve">issn@bnv.gob.ve</a> para recibir la asignación numérica respectiva en el correo suministrado por el solicitante.<br>
Para descargar y llenar el formulario directamente en pantalla se recomienda hacerlo con el navegador Google Chrome.</strong><br/><br/>
<div class="izquierda2"><?php $this->widget(
'booster.widgets.TbButton', array(
'buttonType' => 'link',
'size' => 'large',
'icon' =>'glyphicon glyphicon-download-alt',
'context' => 'info',
'htmlOptions' => array('target'=>'_blank'),
'url'=> Yii::app()->baseUrl.'/images/form.pdf',
//Yii::app()->createUrl('images/form.pdf'),
// 'url' => '#',
'label' => 'Descargar Formulario' )
 );
?></div><br/>
<ul class="list-unstyled">
  <li>Horario de Atención al Público de la División de Depósito Legal:</li>
  <li>Lunes a viernes de 9:00 am - 12:00 p.m y 2:00pm – 4:00 pm</li>
 </ul>
<strong>ESTE SERVICIO ES GRATUITO</strong><br/><br/>
</p>
      </div>
    </div>
  </div>
<!--   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading10">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse10" aria-expanded="false" aria-controls="collapse10">
		¿Cuál es la diferencia entre ISBN e ISSN?
        </a>
      </h5>
    </div>
    <div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading10">
      <div class="panel-body">
          <p class="textooo">El <strong>ISBN (International Standard Book Number)</strong> es un número internacional sólo para libros y folletos, en cualquier formato o soporte y debe tramitarse ante el <strong>Centro Nacional del Libro (CENAL)</strong>, mientras que el <strong>ISSN (Internatinal Standard Serials Number)</strong> es un número internacional sólo para publicaciones seriadas y es otorgado por la <strong>Biblioteca Nacional de Venezuela</strong> para aquellas publicaciones de carácter científico, académico, humanístico o tecnológico únicamente.</p>
      </div>
    </div>
  </div>-->
<!--   <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading11">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse11" aria-expanded="false" aria-controls="collapse11">
		¿Qué diferencia hay entre depósito legal y derecho de autor?
        </a>
      </h5>
    </div>
    <div id="collapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11">
      <div class="panel-body">
          <p class="textooo">El depósito Legal es un registro nacional de carácter obligatorio para obras editadas o producidas en el territorio nacional, mientras que el registro del derecho de autor es optativo y se gestiona a través del <strong>Servicio Autónomo de la Propiedad Intelectual (SAPI)</strong>.</p>
      </div>
    </div>
  </div>-->

    <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="heading19">
      <h5 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse19" aria-expanded="false" aria-controls="collapse19">
		Glosario de Términos
        </a>
      </h5>
    </div>
    <div id="collapse19" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading19">
      <div class="panel-body">
<p class="textooo"><ul class="textooo">
  		<li><b>Agenda:</b> Publicación que consta de hojas en blanco fechadas (día, mes, año) que sirve para asentar o planificar actividades u otro tipo de anotaciones. Suele contener cierto tipo de información breve relativa a un tema específico.</li>
  		<li><b>Almanaque:</b> Publicación que además de tener calendario, contiene artículos, efemérides, cuentos, anécdotas, recetas, entre otros.</li>
  		<li><b>Anuario:</b> Publicación que recopila información anual destinada a registrar hechos o acontecimientos relativos a un país, localidad o rama cualquiera de conocimientos o actividades.</li>
  		<li><b>Audiolibro:</b> Grabación de los contenidos de una obra literaria, leída por un narrador, presentada en formato o soporte digital (CD).</li>
  		<li><b>Autor:</b> Persona natural o jurídica (empresa, institución, sociedad, organismo del Estado) responsable del contenido intelectual o artístico de una obra.</li>
  		<li><b>Boletín:</b> Publicación con cierta frecuencia, destinada a tratar asuntos científicos, históricos, artísticos o literarios, generalmente publicada por una persona jurídica.</li>
  		<li><b>Calendario:</b> Publicación que contiene los días del año distribuidos ordenadamente por semanas y meses, con indicación de festividades varias, datos astronómicos y astrológicos.</li>
  		<li><b>Cartel o Afiche:</b>  Publicación caracterizada por contener una información de interés público, impresa por una sola cara, que se fija sobre superficies planas.</li>
  		<li><b>Catálogo:</b> Publicación en la que se enumera y documenta una serie precisa de obras, tales como obras de arte, libros, piezas de museos, fotografías, entre otras. Si excede las 5 páginas se considera folleto y en caso de tener 50 o más se clasifica como libro.</li>
  		<li><b>CD-ROM:</b> (Compact Disk Read-Only-Memory). Disco óptico que contiene textos, información gráfica o material audiovisual que sólo puede ser leído en un dispositivo óptico.</li>
  		<li><b>Editor:</b> Persona natural o jurídica que por cuenta propia es responsable  de la producción, distribución y venta de una obra.</li>
  		<li><b>Folleto:</b> Documento que no tiene periodicidad o frecuencia, con un mínimo de 5 páginas pero que no excede las 48 páginas.</li>
  		<li><b>Gaceta:</b> Publicación periódica que contiene principalmente leyes, decretos, Reglamentos y otras disposiciones y resoluciones del poder ejecutivo y de los tribunales supremos y oficinas centrales.</li>
  		<li><b>Guía Didáctica:</b> Publicación cuyo objetivo es proporcionar orientación acerca de un determinado tema con fines didácticos o educativos.</li>
  		<li><b>Guía y Directorio:</b> Publicación que contiene lista  de personas, casas de comercio, instituciones correspondientes a una ciudad, grupo de ciudades o un país, dispuestas por orden alfabético.</li>
  		<li><b>Hoja Suelta:</b> Publicación unitaria generalmente de una sola hoja, la cual al plegarse puede llegar hasta cuatro páginas como máximo. </li>
  		<li><b>Informe:</b> Publicación con una frecuencia específica que consiste en presentar los resultados de una gestión determinada y/o tema, de manera concisa.</li>
  		<li><b>Libro:</b> Documento impreso, cocido o encuadernado en forma unitaria y que conforma un volumen mayor a 48 páginas.</li>
  		<li><b>Libro Digital:</b> Es una versión electrónica o digital de un libro, también conocido como E-book.</li>
  		<li><b>Mapa:</b> Representación geográfica de un territorio o parte de él, sobre una superficie plana que puede plegarse en varias caras.</li>
  		<li><b>Memoria y Cuenta:</b> Informe o relación de los actos realizados por un gobierno, congreso o entidad durante un período de tiempo determinado.</li>
  		<li><b>Obra:</b> Cualquier creación del intelecto que vaya a ser editada, producida o replicada,  independientemente del formato o soporte en el cual se difunda (impresa o digital)</li>
  		<li><b>Partitura:</b> Texto de una obra musical, esto es la forma escrita o impresa de la misma que constituye su representación gráfica.(pentagramas).</li>
  		<li><b>Periódico:</b> Publicación  que contiene noticias sobre eventos actuales de interés particular o general, cuyos fascículos se numeran cronológicamente   y que aparecen con una frecuencia específica.</li>
  		<li><b>Plano:</b> Representación gráfica sobre una superficie plana de las diferentes partes de un edificio, urbanización o ciudad.</li>
  		<li><b>Plegable:</b> Publicación que contiene información impresa en una hoja, la cual se pliega en dos o más caras.</li>
  		<li><b>Postal:</b> Tarjeta ilustrada que se emplea como correspondencia,  colocando en su reverso el mensaje que se quiera comunicar.</li>
  		<li><b>Producción Audiovisual:</b> Material que contiene imagen y sonido  de corta, mediana o larga duración sobre un tema  determinado. Incluye: cortometraje, mediometraje, largometraje, documental y micro.</li>
  		<li><b>Producción Fonográfica:</b>  Disco óptico utilizado para almacenar obras musicales que se van a difundir masivamente.</li>
  		<li><b>Programa de Mano:</b> Información  sobre espectáculos de artes escénicas o auditivas (música, teatro, cine) así como talleres, charlas, jornadas, conferencias, congresos, entre otros, indicando fecha, lugar y hora de la actividad, la cual puede estar en formato impreso y/o digital.</li>
  		<li><b>Programa de Radio:</b> Serie de emisiones que se transmiten por vía radiofónica, con cierta periodicidad y por una emisora específica.</li>
  		<li><b>Programa de TV.:</b> Serie de emisiones que se transmiten por vía audiovisual, con cierta frecuencia y por un canal específico.</li>
  		<li><b>Publicación Oficial:</b> Documento  emanado  del Poder Público Nacional que contiene  datos estadísticos y balances  de gestión de organismos del Estado en todos sus niveles;  incluyendo  organismos oficiales internacionales.</li>
		<li><b>Replica:</b> Copia exacta o muy parecida de un original.</li>
  		<li><b>Revista:</b> Publicación organizada por cuadernos, con escritos sobre varias materias, o sobre una en particular. Los temas se desarrollan con mayor profundidad que en el periódico, con una frecuencia determinada.</li>
  		<li><b>Representación Cartográfica:</b> Representación convencional, a escala reducida, de cuerpos celestes, la tierra y fenómenos que pueden localizarse en el espacio y el tiempo. Incluye documentos tales como mapas bidimensionales y tridimensionales, globos, planos, modelos topográficos y representaciones aéreas.</li>
  		<li><b>Sello Postal:</b> Comprobante del pago previo de los envíos efectuados por correo en forma de etiqueta, generalmente engomada.</li>
  		<li><b>Tarjeta:</b> Publicación pequeña y en forma rectangular que sirve de invitación a un evento público.</li>
  		<li><b>Tesis de Postgrado:</b> Disertación escrita presentada en la universidad para obtener el grado de: Especialidad, Maestría y/o Doctorado.</li>
  		<li><b>Tiraje:</b> Número o cantidad de ejemplares que se van a imprimir, producir o replicar en una determinada edición de una obra.  </li>
	</ul>
	</p>
      </div>
    </div>
  </div>


</div>