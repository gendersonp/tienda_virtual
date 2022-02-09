<?php 
	
	//define("BASE_URL", "http://localhost/tienda_virtual/");
	//const BASE_URL = "https://apparelstore.clothing";
	const BASE_URL = "http://localhost/tienda_virtual";
	

	

	//Zona horaria
	date_default_timezone_set('America/Costa_Rica');

		//Datos de conexión a Base de Datos
		const DB_HOST = "localhost";
		const DB_NAME = "db_tiendavirtual";
		const DB_USER = "root";
		const DB_PASSWORD = "";
		const DB_CHARSET = "utf8";

	//Datos de conexión a Base de Datos en hosting
	/*const DB_HOST = "localhost";
	const DB_NAME = "appakofj_db_tiendavirtual";
	const DB_USER = "appakofj_db_us_tiendavirtual";
	const DB_PASSWORD = "Tetotico180897";
	const DB_CHARSET = "utf8";*/

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "$";
	const CURRENCY = "USD";

		//Api PayPal
	//SANDBOX PAYPAL
	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTE = "AQrx8ifG2Legv1t4rX7mfdMRkk5L7YrHRaWZ0TNPOl6kXa78Cml33U4nx1oNFE6SvLFN4TOSXfrOqmFe";
	const SECRET = "EK5DD-jE1zsVon5mbSnVzwlopkK8vvWfEu1i_N0EgfpNh6MHUmGhgEnnI2HnM7m4QP-M2hAug_F0H1Re";
	//LIVE PAYPAL
	//const URLPAYPAL = "https://api-m.paypal.com";
	//const IDCLIENTE = "ATawbMkjxq1C7jZv3TF0GypX5c6yR9kfwxgj0C1DH5MF5ju1KZr8LnI_Sf3tMKDnywHRflbjxZaZF-41";
	//const SECRET = "EDzJLoJe5JcPaEksObg6H5cUKeaIWiaWwcZas97MOFhFQqczgF-p1lfdRE0m8W20JjFudaThGf11YUB1";


	//Datos envio de correo
	const NOMBRE_REMITENTE = "Tienda Virtual";
	const EMAIL_REMITENTE = "no-reply@store.com";
	const NOMBRE_EMPESA = "Apparel Store";
	const WEB_EMPRESA = "apparelstore.clothing";

	const DESCRIPCION = "La mejor tienda en línea con artículos de moda.";
	const SHAREDHASH = "TiendaVirtual";

	//Datos Empresa
	const DIRECCION = "La Fortuna de San Carlos, Costa Rica ";
	const TELEMPRESA = "+(506)88028771";
	const WHATSAPP = "+50688028771";
	const EMAIL_EMPRESA = "tiendavinfo@gmail.com";
	const EMAIL_PEDIDOS = "tiendavinfo@gmail.com";
	const EMAIL_SUSCRIPCION = "tiendavinfo@gmail.com";
	const EMAIL_CONTACTO = "tiendavinfo@gmail.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,6";
	const CAT_FOOTER = "1,2,3";

		//Datos para Encriptar / Desencriptar
		const KEY = 'gendrsonp';
		const METHODENCRIPT = "AES-128-ECB";
	
		//Envío
		const COSTOENVIO = 3;

		//Módulos
		const MCLIENTES = 3;
		const MPEDIDOS = 5;
		const MSUSCRIPTORES = 7;
		const MDCONTACTOS = 8;
		const MDPAGINAS = 10;

		//Roles
		const RADMINISTRADOR = 1;
		const RCLIENTES = 7;

		const STATUS = array('Completo','Aprobado','Cancelado','Reembolsado','Pendiente','Entregado');

			//Productos por página
	const CANTPORDHOME = 8;
	const PROPORPAGINA = 4;
	const PROCATEGORIA = 4;
	const PROBUSCAR = 4;

	//REDES SOCIALES
	const FACEBOOK = "https://www.facebook.com/genderson.porras.7/";
	const INSTAGRAM = "https://www.instagram.com/genderson18/?hl=es";
		


 ?>