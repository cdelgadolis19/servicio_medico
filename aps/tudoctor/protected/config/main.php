<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Tu Doctor',
    'defaultController'=>'paciente/home',
	//'theme' =>'abound',

	// preloading 'log' component
	'preload'=>array('log', 'booster'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'ext.YiiMailer.YiiMailer',
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool

		'gii'=>array(
            'generatorPaths' => array('booster.gii'),
			'class'=>'system.gii.GiiModule',
			'password'=>'123456',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			// Agregar +ip
			'ipFilters'=>array('172.16.34.50','127.0.0.1','::1'),
			//'defaultSessionFilter'=>'application.components.MiSesionCruge',
		),

	),

	// application components
	'components'=>array(

		'booster' => array(
			'class' => 'ext.booster.components.Booster',
			'responsiveCss' => true,
		    ),

		'user'=>array(
			// enable cookie-based authentication
			//'allowAutoLogin'=>true,
		),

		// uncomment the following to enable URLs in path-format
	
		/*'urlManager'=>array(
			'urlFormat'=>'path',
			'showScriptName'=>false,
			'caseSensitive'=>false,		
		),*/
		

		// database settings are configured in database.php
		//'db'=>require(dirname(__FILE__).'/database.php'),
		//'db1'=>require(dirname(__FILE__).'/database1.php'),
		'db' => array(
            	'connectionString' => 'pgsql:host=localhost;dbname=tudoctor',
				'emulatePrepare' => true,
				'username' => 'postgres',
				 'password' => 'linux',
        ),
        'db1' => array(
			'connectionString' => 'pgsql:host=172.16.34.50;dbname=saime',
			'emulatePrepare' => true,
			'username' => 'postgres',
			'password' => 'linux',
        ),
		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),
/*
        'booster' => array(
            'class' => 'ext.booster.components.Booster',
            'responsiveCss' => true,
        ),
*/
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),

	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'cdelgadolis@gmail.com',
	),


    'language' => 'es',
    'sourceLanguage' => 'en',
);
