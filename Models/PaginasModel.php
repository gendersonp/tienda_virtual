<?php 
	//require_once("CategoriasModel.php");
	class PaginasModel extends Mysql
	{
        private $intIdPagina;
        private $strTitulo;
        private $strContenido;
        private $intStatus;
        private $strRuta;
        private $strImagen;

		private $objCategoria;
		public function __construct()
		{
			parent::__construct();
			
		}

		public function selectPaginas()
                {
            $sql = "SELECT idpost, titulo, DATE_FORMAT(datecreated, '%d/%m/%Y') as fecha, ruta, status
            FROM post
            WHERE status != 0";
    $request = $this->select_all($sql);
    return $request;
		}	
	}
 ?>