<?php 
headerTienda($data);

$banner = media(). "/tienda/images/bg-01.jpg";
?>
<script>
 document.querySelector('header').classList.add('header-v4');
</script>

    <!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url(<?= $banner  ?>);">
		<h2 class="ltext-105 cl0 txt-center">
			Acerca de Nosotros
		</h2>
	</section>	

    	<!-- Content page -->
	<section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="row p-b-148">
				<div class="col-md-7 col-lg-8">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Historia
						</h3>

						<p class="stext-113 cl6 p-b-26">
						APPAREL STORE, es un minorista Costarricense de moda rápida con sede en La Fortuna de San Carlos.
						Originalmente conocida como APPAREL STORE, esta empresa fue fundada el 16 de abril del 2010 por Nadia Porras. APPAREL STORE es conocido por sus ofertas de moda y sus bajos precios. La empresa vende accesorios, ropa para mujeres y hombres.
						</p>

						<p class="stext-113 cl6 p-b-26">
						
						</p>

						<p class="stext-113 cl6 p-b-26">
							Cualquier consulta? Contactenos por medio de nuestra seccion Contacto.
						</p>
					</div>
				</div>

				<div class="col-11 col-md-5 col-lg-4 m-lr-auto">
					<div class="how-bor1 ">
						<div class="hov-img0">
							<img src="<?= media() ?>/tienda/images/about-01.jpg" alt="IMG">
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="order-md-2 col-md-7 col-lg-8 p-b-30">
					<div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Nuestra Mision
						</h3>

						<p class="stext-113 cl6 p-b-26">
						Vender a un buen precio con una facilidad de pago para sus clientes y llegar a vender a nivel nacional para posicionarse en un buen lugar en el mercado.
						</p>

						<div class="bor16 p-l-29 p-b-9 m-t-22">
							<p class="stext-114 cl6 p-r-40 p-b-11">
								Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn't really do it, they just saw something. It seemed obvious to them after a while.
							</p>

							<span class="stext-111 cl8">
								- Steve Job’s 
							</span>
						</div>
					</div>
				</div>

				<div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30">
					<div class="how-bor2">
						<div class="hov-img0">
							<img src="<?= media() ?>/tienda/images/about-02.jpg" alt="IMG">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<?php 
	footerTienda($data);
?>