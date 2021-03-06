<?php
$anio=date('Y');
?>
<?php $form=$this->beginWidget('booster.widgets.TbActiveForm',array(
	'id'=>'historia-clinica-psicologia-form',
	'enableAjaxValidation'=>false,
)); ?>

<p class="help-block">Los campos con <span class="required">*</span> son requeridos.</p>

<?php echo $form->errorSummary($model); ?>

<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Datos Básicos</h3>
  </div>
  <div class="panel-body">
		 <?php if( $paciente->foto ){ ?>
          <div class="media">
            <div class="media-left" style="float:left;">
                <img class="media-object" src="images/pacientes/<?php echo $paciente->foto; ?> " width="196px" alt="Foto <?php echo $paciente->nombre." ".$paciente->apellido; ?>">
            </div>
      <?php } ?>
	 <div class="paciente">
     <b>Paciente</b>: <?php echo $paciente->nombre." ".$paciente->apellido; ?><br>
     <b>C.I</b>: <?php echo $paciente->cedula; ?><br>
     <b>N° Historia Clinica:</b> <?php echo $paciente->numero_historia; ?> <br/>
     <b>Lugar y Fecha de Nacimiento:</b> <?php echo $paciente->lugar_nacimiento."<b> - </b>". $paciente->fecha_nacimiento=date('d-m-Y',strtotime($paciente->fecha_nacimiento)); ?> <br/>
     <b>Edad:</b> <?php echo $paciente->sexo; ?> <br/>
     <b>Sexo:</b> <?php echo $paciente->sexo; ?> <br/>
     <b>Institución:</b> <?php echo $paciente->institucion0->nombre." / ".$paciente->departamento; ?> <br/>
     <b>Dirección de Habitación:</b> <?php echo $paciente->direccion; ?> <br/>
     <b>Teléfono:</b> <?php echo $paciente->telefono_celular; ?> <br/>
      </div>
      
          </div>
	
<!--<?php echo $form->textFieldGroup($model,'paciente',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5')))); ?>-->
	<br>
		 <div class="row">
  <div class="col-xs-6 col-md-4">
	 <?php echo $form->datePickerGroup($model,'fecha_ingreso',array('widgetOptions'=>array('options'=>array('format'=>'yyyy/mm/dd', 'language' => 'es', 'todayBtn'=>'true', 'startDate'=>'$anio/01/01', 'endDate'=>'$anio/12/31'),'htmlOptions'=>array('style' => 'width: 200px;' ) ), /*'hint' => 'Haga click en la caja de texto para seleccionar la fecha.',*/
'prepend' => '<i class="glyphicon glyphicon-calendar"></i>')); ?>
</div>
	
  <div class="col-xs-6 col-md-4">
	 <?php echo $form->labelEx($model, 'hora'); ?>
            <?php
            $this->widget(
                    'booster.widgets.TbTimePicker', array(
                'model' => $model,
                'id' => CHtml::activeId($model, 'hora'),
                'attribute' => 'hora',
                'options' => array(
                    'showMeridian' => true,
                    'minuteStep' => 60,
                ),
                'wrapperHtmlOptions' => array(
                    'class' => 'col-md-3',
                ),
                )
         );
?>
<br>
</div>
</div>

	<?php echo $form->textFieldGroup($model,'nombre_padre',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>30)))); ?>

	<?php echo $form->textFieldGroup($model,'nombre_madre',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>30)))); ?>

	<?php echo $form->textFieldGroup($model,'nombre_conyugue',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>30)))); ?>

  </div>
</div>

<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Datos Clinicos</h3>
  </div>
  <div class="panel-body">
    <?php echo $form->textAreaGroup($model,'referido', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>

	<?php echo $form->textAreaGroup($model,'motivo_consulta', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?> 
	
	<?php echo $form->textAreaGroup($model,'enfermedad_actual', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>
  </div>
</div>

<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Antecedentes Familiares</h3>
  </div>
  <div class="panel-body">
   <?php echo $form->textAreaGroup($model,'antecedentes_familiares', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>

	<?php echo $form->textAreaGroup($model,'padre', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>

	<?php echo $form->textAreaGroup($model,'madre', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>

	<?php echo $form->textAreaGroup($model,'hermanos', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>

	<?php echo $form->textAreaGroup($model,'otros', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>
  </div>
</div>
	
<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Antecedentes Personales</h3>
  </div>
  <div class="panel-body">
   <?php echo $form->textAreaGroup($model,'antecedentes_personales', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>

	<?php echo $form->textFieldGroup($model,'tabaco',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>50)))); ?>

	<?php echo $form->textFieldGroup($model,'alcohol',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>50)))); ?>

	<?php echo $form->textFieldGroup($model,'drogas',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>50)))); ?>

	<?php echo $form->textAreaGroup($model,'otros_hp', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>

  </div>
</div>

<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Signos Vitales</h3>
  </div>
  <div class="panel-body">
   <?php echo $form->textAreaGroup($model,'examen_fisico', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>

	<?php echo $form->textFieldGroup($model,'tension_alta',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>10)))); ?>

	<?php echo $form->textFieldGroup($model,'frecuencia_cardiaca',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>10)))); ?>

	<?php echo $form->textFieldGroup($model,'frecuencia_respiratoria',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>10)))); ?>

	<?php echo $form->textFieldGroup($model,'talla',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>3)))); ?>

	<?php echo $form->textFieldGroup($model,'peso',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>3)))); ?>

	<?php echo $form->textFieldGroup($model,'pulso',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5','maxlength'=>10)))); ?>

  </div>
</div>	
	
<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Examen Mental</h3>
  </div>
  <div class="panel-body">
   <?php echo $form->textAreaGroup($model,'examen_mental', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>
  </div>
</div>
	
<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Impresión Diagnostica (IDX)</h3>
  </div>
  <div class="panel-body">
    <?php echo $form->textAreaGroup($model,'impresion_diagnostica', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>   
  </div>
</div>

<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Plan o Tratamiento</h3>
  </div>
  <div class="panel-body">
    <?php echo $form->textAreaGroup($model,'plan_tratamiento', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>
    
    <?php echo $form->textAreaGroup($model,'observacion', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>

	<?php echo $form->textAreaGroup($model,'comentarios', array('widgetOptions'=>array('htmlOptions'=>array('rows'=>6, 'cols'=>50, 'class'=>'span8')))); ?>
  </div>
</div>

<!--
	<?php echo $form->checkBoxGroup($model,'estatus'); ?>

	<?php echo $form->textFieldGroup($model,'fecha_creacion',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5')))); ?>

	<?php echo $form->textFieldGroup($model,'fecha_actualizacion',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5')))); ?>

	<?php echo $form->textFieldGroup($model,'fk_usuario_creacion',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5')))); ?>

	<?php echo $form->textFieldGroup($model,'fk_usuario_actualizacion',array('widgetOptions'=>array('htmlOptions'=>array('class'=>'span5')))); ?>
-->
<div class="form-actions">
	<?php $this->widget('booster.widgets.TbButton', array(
			'buttonType'=>'submit',
			'icon' =>'glyphicon glyphicon-user',
			'context'=>'success',
			'label'=>'Crear Historia Clinica Psiquiatrica',
		)); ?>
</div>

<?php $this->endWidget(); ?>
