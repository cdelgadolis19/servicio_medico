<?php
$this->breadcrumbs=array(
	'Patologías'=>array('admin'),
);
?>

<h1 class="titulo">Detalle Patología N° <?php echo $model->id_tipo_patologia; ?></h1>

<?php $this->widget('booster.widgets.TbDetailView',array(
'data'=>$model,
'type' => 'striped bordered condensed',
'attributes'=>array(
		'id_tipo_patologia',
		'patologia',
		array(
			'label'=>'Fecha Creación',
			'name'=>'fecha_creacion',
			'value' => Yii::app()->dateFormatter->format("dd/MM/yyyy", strtotime($model->fecha_creacion)),
		),
		array(
			'label'=>'Usuario Creación',
			'name'=>'usuario_creacion',
			'value' => $model->usuarioCreacion->id_usuario." - ". $model->usuarioCreacion->nombre,
			),
		array(
			'label'=>'Fecha Actualización',
			'type'=>'raw',
			'name'=>'fecha_actualizacion',
			'value' =>$model->fecha_actualizacion == NULL  ? '<i>No asignado</i>' : Yii::app()->dateFormatter->format("dd/MM/yyyy", strtotime($model->fecha_actualizacion)),
		),
		array(
			'label'=>'Usuario Actualización',
			'type'=>'raw',
			'name'=>'usuario_actualizacion',
			'value' =>$model->usuarioActualizacion == NULL  ? '<i>No asignado</i>' : $model->usuarioActualizacion->id_usuario." - ". $model->usuarioActualizacion->nombre,
			),
		array(
			'label'=>'Estatus',
			'name'=>'status',
			'value' => $model->status == TRUE ? 'ACTIVO':'ANULADO',
			),
),
)); ?>
