<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>About JSP</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="vCard template project">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/plugins/mCustomScrollbar/jquery.mCustomScrollbar.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/styles/main_styles.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/styles/responsive.css"/>" rel="stylesheet">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	<header class="header">
		<div class="header_content d-flex flex-row align-items-center justify-content-start">
			<div class="logo">Smith<span>.</span>CV</div>
			<div class="main_nav d-flex flex-row align-items-end justify-content-start">
				<ul class="d-flex flex-row align-items-center justify-content-start">
					<li class="active"><a href="about.html">About</a></li>
					<li><a href="skills.html">Skills</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="experience.html">Experience</a></li>
					<li><a href="education.html">Education</a></li>
					<li><a href="portfolio.html">Portfolio</a></li>
					<li><a href="testimonials.html">Testimonials</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
				<div class="header_button ml-auto">
					<a href="#">Available for freelance work</a>
					<div class="d-flex flex-column align-items-center justify-content-center"><img src="images/download.png" alt=""></div>
				</div>
			</div>
			<!-- Menu -->
	<div class="menu">
		<div class="menu_content d-flex flex-row align-items-start justify-content-end">
			<div class="hamburger ml-auto">menu</div>
			<div class="menu_nav text-right">
				<ul>
					<li><a href="about.html">About</a></li>
					<li><a href="skills.html">Skills</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="experience.html">Experience</a></li>
					<li><a href="education.html">Education</a></li>
					<li><a href="portfolio.html">Portfolio</a></li>
					<li><a href="testimonials.html">Testimonials</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
		</div>
	</div>
		</div>
	</header>

	<div class="content_container">
		<div class="main_content_outer d-flex flex-xl-row flex-column align-items-start justify-content-start">

			<!-- General Information -->
			<div class="general_info d-flex flex-xl-column flex-md-row flex-column">
				<div>
					<div class="general_info_image">
						<div class="background_image" style="background-image:url(images/smith.jpg)"></div>
						<div class="header_button_2">
							<a href="#">Available for freelance work</a>
							<div class="d-flex flex-column align-items-center justify-content-center"><img src="images/download.png" alt=""></div>
						</div>
					</div>
				</div>
				<div class="general_info_content">
					<div class="general_info_content_inner mCustomScrollbar" data-mcs-theme="minimal-dark">
						<div class="general_info_title">General Information</div>
						<ul class="general_info_list">
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="general_info_icon d-flex flex-column align-items-start justify-content-center"><img src="images/icon_1.png" alt=""></div>
								<div class="general_info_text">Name: <span>Jeremy Smith</span></div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="general_info_icon d-flex flex-column align-items-start justify-content-center"></div>
								<div class="general_info_text">Location: <span>London UK</span></div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="general_info_icon d-flex flex-column align-items-start justify-content-center"><img src="images/icon_2.png" alt=""></div>
								<div class="general_info_text">Date of Birth: <span>August 25, 1991</span></div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="general_info_icon d-flex flex-column align-items-start justify-content-center"><img src="images/icon_3.png" alt=""></div>
								<div class="general_info_text"><a href="mailto:contact@linque.com?subject=Job_Inquiry">contactme@templatename.com</a></div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="general_info_icon d-flex flex-column align-items-start justify-content-center"><img src="images/icon_4.png" alt=""></div>
								<div class="general_info_text">+76 6524 567862 763</div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="general_info_icon d-flex flex-column align-items-start justify-content-center"><img src="images/icon_5.png" alt=""></div>
								<div class="general_info_text"><a href="mailto:contact@linque.com">www.mytemplatename.com</a></div>
							</li>
						</ul>

						<!-- Social -->
						<div class="social_container">
							<ul class="d-flex flex-row align-items-start justify-content-start">
								<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Main Content -->

			<div class="main_content">
				<div class="main_title_container d-flex flex-column align-items-start justify-content-end">
					<div class="main_subtitle">HTML5 & CSS Developer</div>
					<div class="main_title">Jeremy Smith</div>
				</div>
				<div class="main_content_scroll mCustomScrollbar" data-mcs-theme="minimal-dark">
					<div class="about_content">
						<div class="about_title">Description</div>
						<div class="about_text">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae sapien porttitor, dignissim quam sit amet, aliquam lorem. Fusce id ligula non risus mollis consectetur. Nam lobortis, erat quis pulvinar dignissim, velit ligula ullamcorper ipsum, at sodales elit odio at velit. Sed a est a quam mattis suscipit. Proin et faucibus diam.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae sapien porttitor, dignissim quam sit amet, aliquam lorem. Fusce id ligula non risus mollis consectetur. Nam lobortis, erat quis pulvinar dignissim, velit ligula ullamcorper ipsum, at sodales elit odio at velit. Sed a est a quam mattis suscipit.</p>
						</div>

						<!-- Loaders -->

						<div class="loaders clearfix">

							<!-- Loader -->
							<div class="loader_container">
								<div class="loader" data-perc="0.75"></div>
								<div class="loader_content text-center">
									<div class="loader_title">intuition</div>
									<div class="loader_subtitle">Etiam nec odio vestibulum est.</div>
								</div>
							</div>
							
							<!-- Loader -->
							<div class="loader_container">
								<div class="loader" data-perc="0.83"></div>
								<div class="loader_content text-center">
									<div class="loader_title">creativity</div>
									<div class="loader_subtitle">Odio vestibulum est mattis.</div>
								</div>
							</div>

							<!-- Loader -->
							<div class="loader_container">
								<div class="loader" data-perc="0.25"></div>
								<div class="loader_content text-center">
									<div class="loader_title">pure luck</div>
									<div class="loader_subtitle">Vestibulum est mattis effic.</div>
								</div>
							</div>

							<!-- Loader -->
							<div class="loader_container">
								<div class="loader" data-perc="0.95"></div>
								<div class="loader_content text-center">
									<div class="loader_title">awesomeness</div>
									<div class="loader_subtitle">Vestibulum est mattis effic.</div>
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>


	</div>
<div align='center'>
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>

</div>

<script src="<c:url value="/resources/styles/bootstrap-4.1.2/popper.js" />"></script>
<script src="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/plugins/greensock/TweenMax.min.js" />"></script>
<script src="<c:url value="/resources/plugins/greensock/TimelineMax.min.js" />"></script>
<script src="<c:url value="/resources/plugins/scrollmagic/ScrollMagic.min.js" />"></script>
<script src="<c:url value="/resources/plugins/greensock/animation.gsap.min.js" />"></script>
<script src="<c:url value="/resources/plugins/greensock/ScrollToPlugin.min.js" />"></script>
<script src="<c:url value="/resources/plugins/progressbar/progressbar.js" />"></script>
<script src="<c:url value="/resources/plugins/mCustomScrollbar/jquery.mCustomScrollbar.js" />"></script>
<script src="<c:url value="/resources/plugins/easing/easing.js" />"></script>
<script src="<c:url value="/resources/plugins/parallax-js-master/parallax.min.js" />"></script>
<script src="<c:url value="/resources/js/custom.js" />"></script>
</body>
</html>