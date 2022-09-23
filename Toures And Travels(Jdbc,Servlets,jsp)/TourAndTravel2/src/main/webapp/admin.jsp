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
</style>
</head>

<body>
	<%
	String msg = "no";
	msg = (String) request.getAttribute("msg");
	if (msg == "yes") {
	%>
	<script type="text/javascript">
		alert("Log in successfull!");
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
			<a data-aos="zoom-in-left" data-aos-delay="450" href="#all-req">Booking
				Requests</a> <a data-aos="zoom-in-left" data-aos-delay="750"
				href="#services">services</a> <a data-aos="zoom-in-left"
				data-aos-delay="900" href="#all-bookings">All Bookings</a>

		</nav>
		<div>
			<a data-aos="zoom-in-left" data-aos-delay="1300" href="#book-form"
				class="btn">Add Packs</a> <a data-aos="zoom-in-left"
				data-aos-delay="1300" href="./home.jsp" onclick="logout()"
				class="btn">Log out</a>
		</div>
	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="home" id="home">

		<div class="content">
			<span data-aos="fade-up" data-aos-delay="150">follow us</span>
			<h3 data-aos="fade-up" data-aos-delay="300">Welcome Admin</h3>
			<p data-aos="fade-up" data-aos-delay="450">Lorem ipsum dolor sit
				amet consectetur adipisicing elit. Necessitatibus quia illum quod
				perspiciatis harum in possimus? Totam consequuntur officia quia?</p>
		</div>

	</section>

	<!-- home section ends -->

	<!-- booking form section starts  -->

	<!-- booking form section ends -->

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
	<div class="gap"></div>
	<section class="addpack" id="book-form">
		<div data-aos="zoom-in" class="card">
			<%
			String msgString = "";
			msgString = (String) request.getAttribute("msgString");
			if (msgString == "inserted") {
			%>
			<script type="text/javascript">
				alert("Pakage Added Successfully");
			</script>
			<%
			} else if (msgString == "fail") {
			%>
			<script type="text/javascript">
				alert("Error! while Adding");
			</script>
			<%
			}
			%>

			<form action="addPack" method="post" enctype="multipart/form-data">

				<div data-aos="zoom-in" class="innerbox">
					<h1 class="myh">Add New Package</h1>
					<input type="file" class="in-group" placeholder="Select Add Banner"
						name="img"> <input type="text" class="in-group"
						placeholder="Set Package Id" name="pid"> <input
						type="text" class="in-group" placeholder="location"
						name="location"> <input type="number" class="in-group"
						placeholder="Price" name="price"> <input
						data-aos="zoom-in" data-aos-delay="600" type="submit"
						value="Add Package" class="btn">
				</div>

			</form>
		</div>
	</section>

	<!-- review section starts  -->

	<section class="review">

		<div class="content" data-aos="fade-right" data-aos-delay="300">
			<span>testimonials</span>
			<h3>good news from our clients</h3>
			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
				Assumenda laudantium corporis fugiat quae unde perspiciatis
				similique ab modi enim consequatur aperiam cumque distinctio facilis
				sit, debitis possimus asperiores non harum.</p>
		</div>

		<div class="box-container" data-aos="fade-left" data-aos-delay="600">

			<div class="box">
				<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
					Quia, ratione.</p>
				<div class="user">
					<img src="images/pic-1.png" alt="">
					<div class="info">
						<h3>john deo</h3>
						<span>designer</span>
					</div>
				</div>
			</div>
			<div class="box">
				<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
					Quia, ratione.</p>
				<div class="user">
					<img src="images/pic-2.png" alt="">
					<div class="info">
						<h3>john deo</h3>
						<span>designer</span>
					</div>
				</div>
			</div>
			<div class="box">
				<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
					Quia, ratione.</p>
				<div class="user">
					<img src="images/pic-3.png" alt="">
					<div class="info">
						<h3>john deo</h3>
						<span>designer</span>
					</div>
				</div>
			</div>
			<div class="box">
				<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
					Quia, ratione.</p>
				<div class="user">
					<img src="images/pic-4.png" alt="">
					<div class="info">
						<h3>john deo</h3>
						<span>designer</span>
					</div>
				</div>
			</div>

		</div>

	</section>
	<section id="all-req" class="bookings">
		<span class="span1">Booking Requests</span>
		<table class="responsive-table">
			<thead>
				<tr>
					<th><h1 class="myh">req. id</h1></th>
					<th><h1 class="myh">User mail</h1></th>
					<th><h1 class="myh">Location</h1></th>
					<th><h1 class="myh">Price</h1></th>
					<th><h1 class="myh">Pack Id</h1></th>
				</tr>
			</thead>

			<tbody>
				<%
				ResultSet rs = (ResultSet) request.getAttribute("Req");
				String msg1 = "";
				msg1 = (String) request.getAttribute("msg1");
				int count = 0;
				if (msg1 == "yes") {
				%>
				<script>
					alert("Verified")
				</script>
				<%
				} else if (msg1 == "no") {
				%>
				<script>
					alert("Verified")
				</script>
				<%}else if(msg1=="del"){ %>
				<script>
					alert("Request Removed")
				</script>
				
				<%
				}
				if(rs!=null){
				while (rs.next()) {
				%>
				<tr>
					<form action="verify" method="post">
						<td><input class="in-group" type="text"
							value=<%=rs.getString(1)%> name="rid"></td>
						<td><input class="in-group" type="text"
							value=<%=rs.getString(2)%> name="umail"></td>

						<td><input class="in-group" type="text"
							value=<%=rs.getString(3)%> name="loc">
						<td><input class="in-group" type="text"
							value=<%=rs.getString(4)%> name="price"></td>
						<td><input class="in-group" type="text"
							value=<%=rs.getString(5)%> name="pid"></td>
						<td><input class="in-group" type="text"
							value=<%=rs.getString(6)%> name="date"></td>
	
						<td><button class="btn waves-effect waves-light button2"
								type="submit" name="action">verify</button></td>
					</form>
					<form action="deletereq" method="post">
						<input class="in-group" type="hidden"
							value=<%=rs.getString(1)%> name="rid">
						<td><button class="btn waves-effect waves-light button2"
								type="submit" name="action">Delete</button></td>
					</form>
				</tr>
				<%
				}}
				%>
			</tbody>
		</table>
	</section>

	<section id="all-bookings" class="review">
		<span class="span1">Bookings</span>
		<div class="box-container" data-aos="fade-left" data-aos-delay="600">
			<%
			ResultSet bookings = (ResultSet) request.getAttribute("bookings");
			if(bookings!=null){
			while (bookings.next()) {
			%>
			<div class="box">
				<div class="user">
					<img src="./images/userlogo.png" alt="">
					<div class="info">
						<h3><%=bookings.getString(2)%></h3>
						<span><%=bookings.getString(3)%></span>
					</div>
				</div>
			</div>
			<%
			}}
			%>
		</div>

	</section>

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
				</a> <a href="#all-req" class="links"> <i class="fas fa-arrow-right"></i>
					Booking requests
				</a> <a href="#services" class="links"> <i
					class="fas fa-arrow-right"></i> services
				</a> <a href="#all-bookings" class="links"> <i
					class="fas fa-arrow-right"></i> Bookings
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