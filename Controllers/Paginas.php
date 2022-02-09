<?php 

	class Paginas extends Controllers{
		public function __construct()
		{
			parent::__construct();
			session_start();
			if(empty($_SESSION['login']))
			{
				header('Location: '.base_url().'/login');
				die();
			}
			getPermisos(MDPAGINAS);
		}

		public function Paginas()
		{
			if(empty($_SESSION['permisosMod']['r'])){
				header("Location:".base_url().'/dashboard');
			}
			$data['page_tag'] = "Paginas";
			$data['page_title'] = "PAGINAS <small>Tienda Virtual</small>";
			$data['page_name'] = "paginas";
			$data['page_functions_js'] = "functions_paginas.js";
			$this->views->getView($this,"paginas",$data);
		}

        public function getPaginas()
		{
			if($_SESSION['permisosMod']['r']){
				$arrData = $this->model->selectPaginas();
			

                for ($i=0; $i < count($arrData); $i++) {
					$btnView = '';
					$btnEdit = '';
					$btnDelete = '';
                    $urlPage = base_url()."/".$arrData[$i]['ruta'];
                   

					if($_SESSION['permisosMod']['r']){
						$btnView = '<a title="Ver pagina"  href="'.$urlPage.'"  target="_blanck"  class="btn btn-info btn-sm"> <i class = "far fa-eye"></i></a>';
					}
					if($_SESSION['permisosMod']['u']){
						$btnEdit = '<a title="Editar pagina" href="'.base_url().'/paginas/editar/'.$arrData[$i]['idpost'].'"  class="btn btn-primary btn-sm"> <i class = "fas fa-pencil-alt"></i></a>';
					}
					if($_SESSION['permisosMod']['d']){	
						$btnDelete = '<button class="btn btn-danger btn-sm" onClick="fntDelInfo('.$arrData[$i]['idpost'].')" title="Eliminar producto"><i class="far fa-trash-alt"></i></button>';
					}
					$arrData[$i]['options'] = '<div class="text-center">'.$btnView.' '.$btnEdit.' '.$btnDelete.'</div>';
				}
				echo json_encode($arrData,JSON_UNESCAPED_UNICODE);
			}
		die();
		}

		public function editar($idpost)
		{
			if(empty($_SESSION['permisosMod']['r'])){
				header("Location:".base_url().'/dashboard');
			}
			$idpost = intval($idpost);
			if($idpost > 0)
			{
				$data['page_tag'] = "Actualizar Pagina";
				$data['page_title'] = "ACTUALIZAR PAGINAS <small>Tienda Virtual</small>";
				$data['page_name'] = "actualizar-paginas";
				$data['page_functions_js'] = "functions_paginas.js";

				$infoPage = getInfopage($idpost);
				if(empty($infoPage))
				{
					header("Location:".base_url().'/paginas');
				}
				else
				{
					$data['infoPage'] = $infoPage;
				}

				$this->views->getView($this,"editarpagina",$data);
			}else
			{
				header("Location:".base_url().'/paginas');
			}
			die();
		}



	}
?>