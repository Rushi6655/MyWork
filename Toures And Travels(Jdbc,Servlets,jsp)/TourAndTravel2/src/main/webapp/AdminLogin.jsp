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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

    <!-- custom js file link  -->
    <script src="js/script.js" defer></script>

</head>
<body>

	<% 
	    String msg="no";
		msg=(String) request.getAttribute("msg");
		if(msg=="wrongpass"){
	%> 
		<script type="text/javascript">
		alert("wrong password");
		</script>
	<%}else if(msg=="wrong"){ %>
		<script type="text/javascript">
		alert("wrong Details");
		</script>
	<%} %>   
<!-- header section starts  -->

<header class="header">

    <div id="menu-btn" class="fas fa-bars"></div>

    <a data-aos="zoom-in-left" data-aos-delay="150" href="./home.jsp" class="logo"> <i class="fas fa-paper-plane"></i>travel </a>

    <nav class="navbar">
        <a data-aos="zoom-in-left" data-aos-delay="300" href="#home">home</a>
        <a data-aos="zoom-in-left" data-aos-delay="450" href="#about">about</a>
        
        <a data-aos="zoom-in-left" data-aos-delay="750" href="#services">services</a>
        <a data-aos="zoom-in-left" data-aos-delay="900" href="#gallery">gallery</a>
        
    </nav>
    <a data-aos="zoom-in-left" data-aos-delay="1300" href="#book-form" class="btn">Log In</a>
  
</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <span data-aos="fade-up" data-aos-delay="150">follow us</span>
        <h3 data-aos="fade-up" data-aos-delay="300">Admin Login Page </h3>
        <p data-aos="fade-up" data-aos-delay="450">Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus quia illum quod perspiciatis harum in possimus? Totam consequuntur officia quia?</p>
    </div>

</section>

<!-- home section ends -->

<!-- booking form section starts  -->

<section class="book-form" id="book-form">
    <div data-aos="zoom-in" data-aos-delay="150" class="inputBox">
        <h2 class="myh">Enter Your Details</h2>
    </div>
    <form action="adminlogin" method="post">
        <div data-aos="zoom-in" data-aos-delay="150" class="inputBox">
            <span>Mail Id</span>
            <input type="email" placeholder="place name" value="" name="amail">
        </div>
        <div data-aos="zoom-in" data-aos-delay="300" class="inputBox">
            <span>Password</span>
            <input type="password" value="" name="apass">
        </div>
        <input data-aos="zoom-in" data-aos-delay="600" type="submit" value="Log In" class="btn">
    </form>

</section>

<!-- booking form section ends -->

<!-- about section starts  -->

<section class="about" id="about">

    <div class="video-container" data-aos="fade-right" data-aos-delay="300">
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
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde fugit repellat error deserunt nam aperiam odit libero quos provident. Nostrum?</p>
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
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Numquam, cumque.</p>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="300">
            <i class="fas fa-hiking"></i>
            <h3>adventures</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Numquam, cumque.</p>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="450">
            <i class="fas fa-utensils"></i>
            <h3>food & drinks</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Numquam, cumque.</p>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="600">
            <i class="fas fa-hotel"></i>
            <h3>affordable hotels</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Numquam, cumque.</p>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="750">
            <i class="fas fa-wallet"></i>
            <h3>affordable price</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Numquam, cumque.</p>
        </div>

        <div class="box" data-aos="zoom-in-up" data-aos-delay="900">
            <i class="fas fa-headset"></i>
            <h3>24/7 support</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Numquam, cumque.</p>
        </div>

    </div>

</section>

<!-- services section ends -->

    

<!-- review section starts  -->

<section class="review">

    <div class="content" data-aos="fade-right" data-aos-delay="300">
        <span>testimonials</span>
        <h3>good news from our clients</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda laudantium corporis fugiat quae unde perspiciatis similique ab modi enim consequatur aperiam cumque distinctio facilis sit, debitis possimus asperiores non harum.</p>
    </div>

    <div class="box-container" data-aos="fade-left" data-aos-delay="600">

        <div class="box">
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia, ratione.</p>
            <div class="user">
                <img src="images/pic-1.png" alt="">
                <div class="info">
                    <h3>john deo</h3>
                    <span>designer</span>
                </div>
            </div>
        </div>
        <div class="box">
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia, ratione.</p>
            <div class="user">
                <img src="images/pic-2.png" alt="">
                <div class="info">
                    <h3>john deo</h3>
                    <span>designer</span>
                </div>
            </div>
        </div>
        <div class="box">
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia, ratione.</p>
            <div class="user">
                <img src="images/pic-3.png" alt="">
                <div class="info">
                    <h3>john deo</h3>
                    <span>designer</span>
                </div>
            </div>
        </div>
        <div class="box">
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia, ratione.</p>
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

<!-- review section ends -->


<section class="footer">

    <div class="box-container">

        <div class="box" data-aos="fade-up" data-aos-delay="150">
            <a href="#" class="logo"> <i class="fas fa-paper-plane"></i>travel </a>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati, ad?</p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box" data-aos="fade-up" data-aos-delay="300">
            <h3>quick links</h3>
            <a href="#home" class="links"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#about" class="links"> <i class="fas fa-arrow-right"></i> about </a>
            <a href="#destination" class="links"> <i class="fas fa-arrow-right"></i> destination </a>
            <a href="#services" class="links"> <i class="fas fa-arrow-right"></i> services </a>
            <a href="#gallery" class="links"> <i class="fas fa-arrow-right"></i> gallery </a>
            <a href="#blogs" class="links"> <i class="fas fa-arrow-right"></i> blogs </a>
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

<div class="credit">created by <span>mr. web designer</span> | all rights reserved!</div>

<!-- footer section ends -->



<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

<script>

    AOS.init({
        duration: 800,
        offset:150,
    });
</script>

</body>
</html>