<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="vCard template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<script src="<c:url value="/resources/bootstrap/js/bootstrap.js" />"></script> --%>
<!-- template -->
<link href="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/mCustomScrollbar/jquery.mCustomScrollbar.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/education.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/education_responsive.css"/>"> --%>
<link href="<c:url value="/resources/plugins/mCustomScrollbar/jquery.mCustomScrollbar.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/styles/education.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/styles/education_responsive.css"/>" rel="stylesheet">
<title>Employee Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Employee List</h1>
		<h3>
			<a href="newEmployee">New Employee</a>
		</h3>
		<button type="button" class="btn btn-primary">Primary</button>
		<table border="1">
			<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>Telephone</th>
			<th>Action</th>
			</tr>
			<c:forEach var="employee" items="${listEmployee}">
				<tr>

					<td>${employee.name}</td>
					<td>${employee.email}</td>
					<td>${employee.address}</td>
					<td>${employee.telephone}</td>
					<td><a href="editEmployee?id=${employee.id}"><button type="button" class="btn btn-primary">Edit</button></a> <a
						href="deleteEmployee?id=${employee.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="super_container">
		<header class="header">
		<div class="header_content d-flex flex-row align-items-center justify-content-start">
			<div class="logo">Smith<span>.</span>CV</div>
			<div class="main_nav d-flex flex-row align-items-end justify-content-start">
				<ul class="d-flex flex-row align-items-center justify-content-start">
					<li><a href="about.html">About</a></li>
					<li><a href="skills.html">Skills</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="experience.html">Experience</a></li>
					<li class="active"><a href="education.html">Education</a></li>
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
						<!-- <div class="background_image" style="background-image:url(resources/images/samp.jpg)"></div> -->
						<div class="background_image" style="background-image:url(resources/images/smith.jpg)"></div>
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
					<div class="main_subtitle">What I am good at</div>
					<div class="main_title">My Education</div>
				</div>
				<div class="main_content_scroll mCustomScrollbar" data-mcs-theme="minimal-dark">
					
					<!-- Education -->

					<div class="education">
						
						<!-- Education Item -->
						<div class="edu_item d-flex flex-lg-row flex-column align-items-start justfy-content-start">
							<div><div class="edu_year">2010</div></div>
							<div><div class="edu_image"><img src="images/edu_1.png" alt=""></div></div>
							<div class="edu_content">
								<div class="edu_title_container">
									<div class="edu_title">University of Colorado</div>
									<div class="edu_subtitle">Developer Diploma PhD</div>
								</div>
								<div class="edu_text">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae sapien porttitor, dignissim quam sit ame. Proin vitae tortor nec risus tristique efficitur. Aliquam luctus est urna, id aliquam orci tempus sed. Aenean sit amet leo id enim dapibus eleifend. Phasellus ut erat dapibus, tempor sapien non, porta urna.</p>
								</div>
							</div>
						</div>

						<!-- Education Item -->
						<div class="edu_item d-flex flex-lg-row flex-column align-items-start justfy-content-start">
							<div><div class="edu_year">2008</div></div>
							<div><div class="edu_image"><img src="images/edu_2.png" alt=""></div></div>
							<div class="edu_content">
								<div class="edu_title_container">
									<div class="edu_title">Graphic School</div>
									<div class="edu_subtitle">Graphic Design Course</div>
								</div>
								<div class="edu_text">
									<p>Ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae sapien porttitor, dignissim quam sit ame. Proin vitae tortor nec risus tristique efficitur. Aliquam luctus est urna, id aliquam orci tempus sed. Aenean sit amet leo id enim dapibus eleifend. Phasellus ut erat dapibus, tempor sapien non, porta urna.</p>
								</div>
							</div>
						</div>

						<!-- Education Item -->
						<div class="edu_item d-flex flex-lg-row flex-column align-items-start justfy-content-start">
							<div><div class="edu_year">2007</div></div>
							<div><div class="edu_image"><img src="images/edu_3.png" alt=""></div></div>
							<div class="edu_content">
								<div class="edu_title_container">
									<div class="edu_title">Colorado High School</div>
									<div class="edu_subtitle">Bachelor Degree - Developer</div>
								</div>
								<div class="edu_text">
									<p>Consectetur adipiscing elit. Phasellus vitae sapien porttitor, dignissim quam sit ame. Proin vitae tortor nec risus tristique efficitur. Aliquam luctus est urna, id aliquam orci tempus sed. Aenean sit amet leo id enim dapibus eleifend. Phasellus ut erat dapibus, tempor sapien non, porta urna.</p>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
	</div>
	<script src="<c:url value="/resources/styles/bootstrap-4.1.2/popper.js" />"></script>
	<script src="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/bootstrap/js/bootstrap.js" />"></script>
	<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
	<script src="<c:url value="/resources/plugins/mCustomScrollbar/jquery.mCustomScrollbar.js" />"></script>
	<script src="<c:url value="/resources/plugins/easing/easing.js" />"></script>
	<script src="<c:url value="/resources/plugins/parallax-js-master/parallax.min.js" />"></script>
	<script src="<c:url value="/resources/js/education.js" />"></script>
</body>
</html>