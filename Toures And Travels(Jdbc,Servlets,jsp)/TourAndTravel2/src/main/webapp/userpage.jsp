<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>travel</title>

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

<!-- custom js file link  -->
<script src="js/script.js" defer></script>
<script type="text/javascript">
	function logout() {
		alert("loging out..")
	}
</script>
<style type="text/css">
.span1 {
	font-size: 4rem;
	color: white;
}
</style>
</head>
<body>

	<%
	String msg = "";
	String umail = "";
	msg = (String) request.getAttribute("msg");
	umail = (String) request.getAttribute("umail");
	ResultSet packs = (ResultSet) request.getAttribute("packs");
	if (msg == "valid") {
	%>
	<script type="text/javascript">
		alert("Log in successfull");
	</script>
	<%
	} else if (msg == "req") {
	%>

	<script type="text/javascript">
		alert("Booking Req Sent!")
	</script>
	<%
	}
	%>

	<!-- header section starts  -->

	<header class="header">

		<div id="menu-btn" class="fas fa-bars"></div>

		<a data-aos="zoom-in-left" data-aos-delay="150" href="./home.jsp"
			class="logo"> <i class="fas fa-paper-plane"></i>travel
		</a>

		<nav class="navbar">
			<a data-aos="zoom-in-left" data-aos-delay="300" href="#home">home</a>
			<a data-aos="zoom-in-left" data-aos-delay="450" href="#about">about</a>
			<a data-aos="zoom-in-left" data-aos-delay="600" href="#destination">destination</a>
			<a data-aos="zoom-in-left" data-aos-delay="750" href="#services">services</a>
			<a data-aos="zoom-in-left" data-aos-delay="900" href="#my-bookings">My
				Bookings</a> <a data-aos="zoom-in-left" data-aos-delay="900"
				href="#gallery">gallery</a> <a data-aos="zoom-in-left"
				data-aos-delay="1150" href="#blogs">blogs</a>
		</nav>
		<div>
			<a data-aos="zoom-in-left" data-aos-delay="1300" href="#destination"
				class="btn">book now</a> <a data-aos="zoom-in-left"
				data-aos-delay="1300" href="./home.jsp" onclick="logout()"
				class="btn">log out</a>
		</div>
	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="home" id="home">

		<div class="content">
			<span data-aos="fade-up" data-aos-delay="150">follow us</span>
			<h3 data-aos="fade-up" data-aos-delay="300">Welcome</h3>
			<p data-aos="fade-up" data-aos-delay="450">Lorem ipsum dolor sit
				amet consectetur adipisicing elit. Necessitatibus quia illum quod
				perspiciatis harum in possimus? Totam consequuntur officia quia?</p>
			<a data-aos="fade-up" data-aos-delay="600" href="#" class="btn">book
				now</a>
		</div>

	</section>

	<!-- home section ends -->


	<!-- about section starts  -->

	<section class="about" id="about">

		<div class="video-container" data-aos="fade-right"
			data-aos-delay="300">
			<video src="images/about-vid-1.mp4" muted autoplay loop class="video"></video>
			<div class="controls">
				<span class="control-btn" data-src="images/about-vid-1.mp4"></span>
				<span class="control-btn" data-src="images/about-vid-2.mp4"></span>
				<span class="control-btn" data-src="images/about-vid-3.mp4"></span>
			</div>
		</div>

		<div class="content" data-aos="fade-left" data-aos-delay="600">
			<span>why choose us?</span>
			<h3>Nature's Majesty Awaits You</h3>
			<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde
				fugit repellat error deserunt nam aperiam odit libero quos
				provident. Nostrum?</p>
			<a href="#" class="btn">read more</a>
		</div>

	</section>

	<!-- about section ends -->

	<!-- destination section starts  -->

	<section class="destination" id="destination">

		<div class="heading">
			<span>our destination</span>
			<h1>make yours destination</h1>
		</div>

		<div class="box-container">
			<%
			while (packs.next()) {
				int count = 150;
				String c = "" + count;
				String url = "Packs/" + packs.getString(2);
			%>
			<div class="box" data-aos="fade-up" data-aos-delay=<%=c%>>
				<div class="image">
					<img src=<%=url%> alt="">
				</div>
				<div class="content">

					<h3><%=packs.getString(3)%></h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Quis molestiae</p>
					<p>The Price mentioned below is for 2 peoples.</p>
					<form action="booktour" method="post">
						<a href="#"><%=packs.getDouble(4)%><i
							class="fas fa-angle-right"></i></a> <input type="hidden"
							value=<%=packs.getString(1)%> name="bookpid"> <input
							type="hidden" value=<%=umail%> name="umail"> <input
							type="hidden" value=<%=packs.getDouble(4)%> name="bookprice">
							<br>
						<input type="hidden" value=<%=packs.getString(3)%> name="bookloc">
					
						<input data-aos="zoom-in" data-aos-delay="600" type="date"
							value="" class="btn" name="date">
						<input data-aos="zoom-in" data-aos-delay="600" type="submit"
							value="Request Booking" class="btn">
					</form>
				</div>
			</div>
			<%
			}
			%>

		</div>

	</section>

	<!-- destination section ends -->

	<!-- services section starts  -->

	<section class="services" id="services">

		<div class="heading">
			<span>our services</span>
			<h1>countless expericences</h1>
		</div>

		<div class="box-container">

			<div class="box" data-aos="zoom-in-up" data-aos-delay="150">
				<i class="fas fa-globe"></i>
				<h3>worldwide</h3>
				<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
					Numquam, cumque.</p>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="300">
				<i class="fas fa-hiking"></i>
				<h3>adventures</h3>
				<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
					Numquam, cumque.</p>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="450">
				<i class="fas fa-utensils"></i>
				<h3>food & drinks</h3>
				<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
					Numquam, cumque.</p>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="600">
				<i class="fas fa-hotel"></i>
				<h3>affordable hotels</h3>
				<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
					Numquam, cumque.</p>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="750">
				<i class="fas fa-wallet"></i>
				<h3>affordable price</h3>
				<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
					Numquam, cumque.</p>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="900">
				<i class="fas fa-headset"></i>
				<h3>24/7 support</h3>
				<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
					Numquam, cumque.</p>
			</div>

		</div>

	</section>

	<!-- services section ends -->

	<!-- gallery section starts  -->

	<section class="gallery" id="gallery">

		<div class="heading">
			<span>our gallery</span>
			<h1>we record memories</h1>
		</div>

		<div class="box-container">

			<div class="box" data-aos="zoom-in-up" data-aos-delay="150">
				<img src="images/gallery-img-1.jpg" alt=""> <span>travel
					spot</span>
				<h3>iceland</h3>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="300">
				<img src="images/gallery-img-2.jpg" alt=""> <span>travel
					spot</span>
				<h3>greenland</h3>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="450">
				<img src="images/gallery-img-3.jpg" alt=""> <span>travel
					spot</span>
				<h3>alaska</h3>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="150">
				<img src="images/gallery-img-4.jpg" alt=""> <span>travel
					spot</span>
				<h3>thailand</h3>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="300">
				<img src="images/gallery-img-5.jpg" alt=""> <span>travel
					spot</span>
				<h3>brazil</h3>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="450">
				<img src="images/gallery-img-6.jpg" alt=""> <span>travel
					spot</span>
				<h3>maldive</h3>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="150">
				<img src="images/gallery-img-7.jpg" alt=""> <span>travel
					spot</span>
				<h3>iceland</h3>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="300">
				<img src="images/gallery-img-8.jpg" alt=""> <span>travel
					spot</span>
				<h3>alaska</h3>
			</div>

			<div class="box" data-aos="zoom-in-up" data-aos-delay="450">
				<img src="images/gallery-img-9.jpg" alt=""> <span>travel
					spot</span>
				<h3>maldive</h3>
			</div>

		</div>

	</section>

	<!-- gallery section ends -->

	<!-- review section starts  -->

	<section id="my-bookings" class="review">
		<span class="span1">My Bookings</span>
		<div class="box-container" data-aos="fade-left" data-aos-delay="600">
			<%
			ResultSet bookings = (ResultSet) request.getAttribute("bookings");
			if(bookings!=null){				
			while (bookings.next()) {
				if (bookings.getString(2).equals(umail)) {
			%>
			<div class="box">
				<div class="user">
					<img src="./images/userlogo.png" alt="">
					<div class="info">
						<h3><%=bookings.getString(2)%></h3>
						<span><%=bookings.getString(3)%></span>
					</div>
					<div class="icon">
						<a href="#"><i class="fas fa-clock"></i><%=bookings.getString(6) %></a>
					</div>
				</div>
			</div>
			<%
			}}
			}
			%>
		</div>

	</section>

	<!-- review section ends -->

	<!-- blogs section starts  -->

	<section class="blogs" id="blogs">

		<div class="heading">
			<span>blogs & posts</span>
			<h1>we untold stories</h1>
		</div>

		<div class="box-container">

			<div class="box" data-aos="fade-up" data-aos-delay="150">
				<div class="image">
					<img src="images/blog-1.jpg" alt="">
				</div>
				<div class="content">
					<a href="#" class="link">Life is a journey, not a destination</a>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Pariatur, natus!</p>
					<div class="icon">
						<a href="#"><i class="fas fa-clock"></i> 21st may, 2021</a> <a
							href="#"><i class="fas fa-user"></i> by admin</a>
					</div>
				</div>
			</div>

			<div class="box" data-aos="fade-up" data-aos-delay="300">
				<div class="image">
					<img src="images/blog-2.jpg" alt="">
				</div>
				<div class="content">
					<a href="#" class="link">Life is a journey, not a destination</a>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Pariatur, natus!</p>
					<div class="icon">
						<a href="#"><i class="fas fa-clock"></i> 21st may, 2021</a> <a
							href="#"><i class="fas fa-user"></i> by admin</a>
					</div>
				</div>
			</div>

			<div class="box" data-aos="fade-up" data-aos-delay="450">
				<div class="image">
					<img src="images/blog-3.jpg" alt="">
				</div>
				<div class="content">
					<a href="#" class="link">Life is a journey, not a destination</a>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Pariatur, natus!</p>
					<div class="icon">
						<a href="#"><i class="fas fa-clock"></i> 21st may, 2021</a> <a
							href="#"><i class="fas fa-user"></i> by admin</a>
					</div>
				</div>
			</div>

		</div>

	</section>

	<!-- blogs section ends -->

	<!-- banner section starts  -->

	<div class="banner">

		<div class="content" data-aos="zoom-in-up" data-aos-delay="300">
			<span>start your adventures</span>
			<h3>Let's Explore This World</h3>
			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum
				voluptatum praesentium amet quibusdam quam officia suscipit odio.</p>
			<a href="#book-form" class="btn">book now</a>
		</div>

	</div>

	<!-- banner section ends -->

	<!-- footer section starts  -->

	<section class="footer">

		<div class="box-container">

			<div class="box" data-aos="fade-up" data-aos-delay="150">
				<a href="#" class="logo"> <i class="fas fa-paper-plane"></i>travel
				</a>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Obcaecati, ad?</p>
				<div class="share">
					<a href="#" class="fab fa-facebook-f"></a> <a href="#"
						class="fab fa-twitter"></a> <a href="#" class="fab fa-instagram"></a>
					<a href="#" class="fab fa-linkedin"></a>
				</div>
			</div>

			<div class="box" data-aos="fade-up" data-aos-delay="300">
				<h3>quick links</h3>
				<a href="#home" class="links"> <i class="fas fa-arrow-right"></i>
					home
				</a> <a href="#about" class="links"> <i class="fas fa-arrow-right"></i>
					about
				</a> <a href="#destination" class="links"> <i
					class="fas fa-arrow-right"></i> destination
				</a> <a href="#services" class="links"> <i
					class="fas fa-arrow-right"></i> services
				</a> <a href="#gallery" class="links"> <i class="fas fa-arrow-right"></i>
					gallery
				</a> <a href="#blogs" class="links"> <i class="fas fa-arrow-right"></i>
					blogs
				</a>
			</div>

			<div class="box" data-aos="fade-up" data-aos-delay="450">
				<h3>contact info</h3>
				<p>
					<i class="fas fa-map"></i> your city, india
				</p>
				<p>
					<i class="fas fa-phone"></i> +123-456-7890
				</p>
				<p>
					<i class="fas fa-envelope"></i> mail@gmail.com
				</p>
			</div>


		</div>

	</section>

	<div class="credit">
		created by <span>mr. web designer</span> | all rights reserved!
	</div>

	<!-- footer section ends -->



	<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

	<script>
		AOS.init({
			duration : 800,
			offset : 150,
		});
	</script>

</body>
</html>