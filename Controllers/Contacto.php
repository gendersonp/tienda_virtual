<?php 

	class Contacto extends Controllers{
		public function __construct()
		{
			parent::__construct();
			session_start();
		}

		public function contacto()
		{
			$data['page_tag'] = NOMBRE_EMPESA;
			$data['page_title'] = NOMBRE_EMPESA;
			$data['page_name'] = "tienda_virtual";
			$this->views->getView($this,"contacto",$data); 
		}

	}
 ?>