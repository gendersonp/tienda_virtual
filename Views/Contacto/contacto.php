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
			Contacto
		</h2>
	</section>	

    	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					<form id="frmContacto">
						<h4 class="mtext-105 cl2 txt-center p-b-30">
							Enviar un Mensaje
						</h4>

						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" id="nombreContacto" name="nombreContacto" placeholder=" Nombre Completo">
							<img class="how-pos4 pointer-none" src="<?= media() ?>/tienda/images/icons/icon-name.png" alt="ICON" style= "width: 28px;">
						</div>

						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" id="emailContacto" name="emailContacto" placeholder="Correo Electronico">
							<img class="how-pos4 pointer-none" src="<?= media() ?>/tienda/images/icons/icon-email.png" alt="ICON">
						</div>

						<div class="bor8 m-b-30">
							<textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" id="mensaje" name="mensaje" placeholder="En que te podemos ayudar?"></textarea>
						</div>

						<button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
							Enviar
						</button>
					</form>
				</div>

				<div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Direccion
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
                            <?= DIRECCION ?>
							</p>
						</div>
					</div>

					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-phone-handset"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Telefono
							</span>

							<p class="stext-115 cl1 size-213 p-t-18">
                            <a class="" href="tel:<?= TELEMPRESA ?>"><?= TELEMPRESA ?></a><br>
							</p>
						</div>
					</div>

					<div class="flex-w w-full">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-envelope"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Email
							</span>

							<p class="stext-115 cl1 size-213 p-t-18">
                            <a class="" href="mailto:<?= EMAIL_EMPRESA ?>"><?= EMAIL_EMPRESA ?></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	
	
	
	<!-- Map -->
	<div class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15693.556393017521!2d-84.64914313194963!3d10.469961231011121!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8fa00c890660e999%3A0x69e3a87bd2572ce6!2sProvincia%20de%20Alajuela%2C%20La%20Fortuna!5e0!3m2!1ses!2scr!4v1625714139274!5m2!1ses!2scr" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
	</div>

<?php 
footerTienda($data);
?>