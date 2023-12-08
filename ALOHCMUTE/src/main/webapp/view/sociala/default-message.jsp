<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from uitheme.net/sociala/default-message.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Nov 2023 14:44:23 GMT -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sociala - Social Network App HTML Template</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/sociala/css/themify-icons.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/sociala/css/feather.css">
<!-- Favicon icon -->
<link rel="icon"
	type="<%=request.getContextPath()%>/view/sociala/image/png"
	sizes="16x16"
	href="<%=request.getContextPath()%>/view/sociala/images/favicon.png">
<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/sociala/css/style.css">

</head>

<body class="color-theme-blue mont-font">

	<div class="preloader"></div>


	<div class="main-wrapper">

		<!-- navigation top-->
		<div class="nav-header bg-white shadow-xs border-0">
			<div class="nav-top">
				<a href="home"><i
					class="feather-zap text-success display1-size me-2 ms-0"></i><span
					class="d-inline-block fredoka-font ls-3 fw-600 text-current font-xxl logo-text mb-0">Sociala.
				</span> </a> <a href="#" class="mob-menu ms-auto me-2 chat-active-btn"><i
					class="feather-message-circle text-grey-900 font-sm btn-round-md bg-greylight"></i></a>
				<a href="default-video.html" class="mob-menu me-2"><i
					class="feather-video text-grey-900 font-sm btn-round-md bg-greylight"></i></a>
				<a href="#" class="me-2 menu-search-icon mob-menu"><i
					class="feather-search text-grey-900 font-sm btn-round-md bg-greylight"></i></a>
				<button class="nav-menu me-0 ms-2"></button>
			</div>

			<form action="#" class="float-left header-search">
				<div class="form-group mb-0 icon-input">
					<i class="feather-search font-sm text-grey-400"></i> <input
						type="text" placeholder="Start typing to search.."
						class="bg-grey border-0 lh-32 pt-2 pb-2 ps-5 pe-3 font-xssss fw-500 rounded-xl w350 theme-dark-bg">
				</div>
			</form>
			<a href="default.html"
				class="p-2 text-center ms-3 menu-icon center-menu-icon"><i
				class="feather-home font-lg alert-primary btn-round-lg theme-dark-bg text-current "></i></a>
			<a href="default-storie.html"
				class="p-2 text-center ms-0 menu-icon center-menu-icon"><i
				class="feather-zap font-lg bg-greylight btn-round-lg theme-dark-bg text-grey-500 "></i></a>
			<a href="default-video.html"
				class="p-2 text-center ms-0 menu-icon center-menu-icon"><i
				class="feather-video font-lg bg-greylight btn-round-lg theme-dark-bg text-grey-500 "></i></a>
			<a href="default-group.html"
				class="p-2 text-center ms-0 menu-icon center-menu-icon"><i
				class="feather-user font-lg bg-greylight btn-round-lg theme-dark-bg text-grey-500 "></i></a>
			<a href="shop-2.html"
				class="p-2 text-center ms-0 menu-icon center-menu-icon"><i
				class="feather-shopping-bag font-lg bg-greylight btn-round-lg theme-dark-bg text-grey-500 "></i></a>

			<a href="#" class="p-2 text-center ms-auto menu-icon"
				id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false" data-bs-toggle="dropdown"><span
				class="dot-count bg-warning"></span><i
				class="feather-bell font-xl text-current"></i></a>
			<div
				class="dropdown-menu dropdown-menu-end p-4 rounded-3 border-0 shadow-lg"
				aria-labelledby="dropdownMenu3">

				<h4 class="fw-700 font-xss mb-4">Notification</h4>
				<div class="card bg-transparent-card w-100 border-0 ps-5 mb-3">
					<img src="images/user-8.png" alt="user"
						class="w40 position-absolute left-0">
					<h5 class="font-xsss text-grey-900 mb-1 mt-0 fw-700 d-block">
						Hendrix Stamp <span
							class="text-grey-400 font-xsssss fw-600 float-right mt-1">
							3 min</span>
					</h5>
					<h6 class="text-grey-500 fw-500 font-xssss lh-4">There are
						many variations of pass..</h6>
				</div>
				<div class="card bg-transparent-card w-100 border-0 ps-5 mb-3">
					<img src="images/user-4.png" alt="user"
						class="w40 position-absolute left-0">
					<h5 class="font-xsss text-grey-900 mb-1 mt-0 fw-700 d-block">
						Goria Coast <span
							class="text-grey-400 font-xsssss fw-600 float-right mt-1">
							2 min</span>
					</h5>
					<h6 class="text-grey-500 fw-500 font-xssss lh-4">Mobile Apps
						UI Designer is require..</h6>
				</div>

				<div class="card bg-transparent-card w-100 border-0 ps-5 mb-3">
					<img src="images/user-7.png" alt="user"
						class="w40 position-absolute left-0">
					<h5 class="font-xsss text-grey-900 mb-1 mt-0 fw-700 d-block">
						Surfiya Zakir <span
							class="text-grey-400 font-xsssss fw-600 float-right mt-1">
							1 min</span>
					</h5>
					<h6 class="text-grey-500 fw-500 font-xssss lh-4">Mobile Apps
						UI Designer is require..</h6>
				</div>
				<div class="card bg-transparent-card w-100 border-0 ps-5">
					<img src="images/user-6.png" alt="user"
						class="w40 position-absolute left-0">
					<h5 class="font-xsss text-grey-900 mb-1 mt-0 fw-700 d-block">
						Victor Exrixon <span
							class="text-grey-400 font-xsssss fw-600 float-right mt-1">
							30 sec</span>
					</h5>
					<h6 class="text-grey-500 fw-500 font-xssss lh-4">Mobile Apps
						UI Designer is require..</h6>
				</div>
			</div>
			<a href="#" class="p-2 text-center ms-3 menu-icon chat-active-btn"><i
				class="feather-message-square font-xl text-current"></i></a>
			<div
				class="p-2 text-center ms-3 position-relative dropdown-menu-icon menu-icon cursor-pointer">
				<i
					class="feather-settings animation-spin d-inline-block font-xl text-current"></i>
				<div class="dropdown-menu-settings switchcolor-wrap">
					<h4 class="fw-700 font-sm mb-4">Settings</h4>
					<h6 class="font-xssss text-grey-500 fw-700 mb-3 d-block">Choose
						Color Theme</h6>
					<ul>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="red" checked=""><i
								class="ti-check"></i> <span class="circle-color bg-red"
								style="background-color: #ff3b30;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="green"><i
								class="ti-check"></i> <span class="circle-color bg-green"
								style="background-color: #4cd964;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="blue" checked=""><i
								class="ti-check"></i> <span class="circle-color bg-blue"
								style="background-color: #132977;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="pink"><i
								class="ti-check"></i> <span class="circle-color bg-pink"
								style="background-color: #ff2d55;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="yellow"><i
								class="ti-check"></i> <span class="circle-color bg-yellow"
								style="background-color: #ffcc00;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="orange"><i
								class="ti-check"></i> <span class="circle-color bg-orange"
								style="background-color: #ff9500;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="gray"><i
								class="ti-check"></i> <span class="circle-color bg-gray"
								style="background-color: #8e8e93;"></span>
						</label></li>

						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="brown"><i
								class="ti-check"></i> <span class="circle-color bg-brown"
								style="background-color: #D2691E;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="darkgreen"><i
								class="ti-check"></i> <span class="circle-color bg-darkgreen"
								style="background-color: #228B22;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="deeppink"><i
								class="ti-check"></i> <span class="circle-color bg-deeppink"
								style="background-color: #FFC0CB;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="cadetblue"><i
								class="ti-check"></i> <span class="circle-color bg-cadetblue"
								style="background-color: #5f9ea0;"></span>
						</label></li>
						<li><label class="item-radio item-content"> <input
								type="radio" name="color-radio" value="darkorchid"><i
								class="ti-check"></i> <span class="circle-color bg-darkorchid"
								style="background-color: #9932cc;"></span>
						</label></li>
					</ul>

					<div class="card bg-transparent-card border-0 d-block mt-3">
						<h4 class="d-inline font-xssss mont-font fw-700">Header
							Background</h4>
						<div class="d-inline float-right mt-1">
							<label class="toggle toggle-menu-color"><input
								type="checkbox"><span class="toggle-icon"></span></label>
						</div>
					</div>
					<div class="card bg-transparent-card border-0 d-block mt-3">
						<h4 class="d-inline font-xssss mont-font fw-700">Menu
							Position</h4>
						<div class="d-inline float-right mt-1">
							<label class="toggle toggle-menu"><input type="checkbox"><span
								class="toggle-icon"></span></label>
						</div>
					</div>
					<div class="card bg-transparent-card border-0 d-block mt-3">
						<h4 class="d-inline font-xssss mont-font fw-700">Dark Mode</h4>
						<div class="d-inline float-right mt-1">
							<label class="toggle toggle-dark"><input type="checkbox"><span
								class="toggle-icon"></span></label>
						</div>
					</div>

				</div>
			</div>


			<a href="/ALOHCMUTE/view/sociala/default-settings.jsp" class="p-0 ms-3 menu-icon"><img
				src="${sessionScope.AvatarURL }" alt="user" class="w40 mt--1"></a>

		</div>
		<!-- navigation top -->

		<!-- navigation left -->
		<nav class="navigation scroll-bar">
			<div class="container ps-0 pe-0">
				<div class="nav-content">
					<ul class="list-group list-group-flush">
						<c:forEach var="i" items="${listfriend}">
							<li
								class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
								<figure class="avatar float-left mb-0 me-2">
									<img src="${i.avatarURL}" alt="image" class="w35">
								</figure>
								<h3 class="fw-700 mb-0 mt-0">
									<a class="font-xssss text-grey-600 d-block text-dark "
										href="?userid=${i.userID}">${i.userName}</a>
								</h3> <span class="bg-success ms-auto btn-round-xss"></span>
							</li>
						</c:forEach>

					</ul>


				</div>
			</div>
		</nav>
		<!-- navigation left -->
		<!-- main content -->
		<div class="main-content right-chat-active">

			<div class="middle-sidebar-bottom">
				<div class="middle-sidebar-left pe-0 ps-lg-3 ms-0 me-0"
					style="max-width: 100%;">
					<div class="row">


						<div class="col-lg-12 position-relative">
							<div
								class="chat-wrapper pt-0 w-100 position-relative scroll-bar bg-white theme-dark-bg">
								<div class="chat-body p-3 ">
									<div class="messages-content pb-5">
										<c:forEach var="i" items="${listmes}">
											<div
												class="${i.user2.userID eq sessionScope.userID ? 'message-item' : 'message-item outgoing-message'}">
												<div class="message-user">
													<figure class="avatar">
														<img src="${i.user1.avatarURL}" alt="image">
													</figure>
													<div>
														<h5>${i.user1.userName}</h5>
														<div class="time">${i.timestamp}</div>
													</div>
												</div>
												<div class="message-wrap">${i.messageContent}</div>
											</div>
										</c:forEach>









										<div class="clearfix"></div>


									</div>
								</div>
							</div>
							<div class="chat-bottom dark-bg p-3 shadow-none theme-dark-bg"
								style="width: 98%;">
								<form action="chat" method="post" class="chat-form">
									<input type="file" name="image" class="bg-grey float-left" id="imageInput"
										accept="image/*" style="display: none;"> <label
										for="imageInput" class=" float-left ml-4"> <i
										class="ti-image text-grey-600"></i>
									</label>
									<div class="form-group">
										<input type="text" name="messageContent"
											placeholder="Start typing..">
									</div>
									<button type="submit" class="bg-current">
										<i class="ti-arrow-right text-white"></i>
									</button>
								</form>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
		<!-- main content -->

		<!-- right chat -->
		<div class="right-chat nav-wrap mt-2 right-scroll-bar">
			<div
				class="middle-sidebar-right-content bg-white shadow-xss rounded-xxl">

				<!-- loader wrapper -->
				<div class="preloader-wrap p-3">
					<div class="box shimmer">
						<div class="lines">
							<div class="line s_shimmer"></div>
							<div class="line s_shimmer"></div>
							<div class="line s_shimmer"></div>
							<div class="line s_shimmer"></div>
						</div>
					</div>
					<div class="box shimmer mb-3">
						<div class="lines">
							<div class="line s_shimmer"></div>
							<div class="line s_shimmer"></div>
							<div class="line s_shimmer"></div>
							<div class="line s_shimmer"></div>
						</div>
					</div>
					<div class="box shimmer">
						<div class="lines">
							<div class="line s_shimmer"></div>
							<div class="line s_shimmer"></div>
							<div class="line s_shimmer"></div>
							<div class="line s_shimmer"></div>
						</div>
					</div>
				</div>
				<!-- loader wrapper -->

				<div class="section full pe-3 ps-4 pt-4 position-relative feed-body">
					<h4 class="font-xsssss text-grey-500 text-uppercase fw-700 ls-3">CONTACTS</h4>
					<ul class="list-group list-group-flush">
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
							<figure class="avatar float-left mb-0 me-2">
								<img src="images/user-8.png" alt="image" class="w35">
							</figure>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Hurin Seary</a>
							</h3> <span
							class="badge badge-primary text-white badge-pill fw-500 mt-0">2</span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
							<figure class="avatar float-left mb-0 me-2">
								<img src="images/user-7.png" alt="image" class="w35">
							</figure>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Victor Exrixon</a>
							</h3> <span class="bg-success ms-auto btn-round-xss"></span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
							<figure class="avatar float-left mb-0 me-2">
								<img src="images/user-6.png" alt="image" class="w35">
							</figure>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Surfiya Zakir</a>
							</h3> <span class="bg-warning ms-auto btn-round-xss"></span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
							<figure class="avatar float-left mb-0 me-2">
								<img src="images/user-5.png" alt="image" class="w35">
							</figure>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Goria Coast</a>
							</h3> <span class="bg-success ms-auto btn-round-xss"></span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
							<figure class="avatar float-left mb-0 me-2">
								<img src="images/user-4.png" alt="image" class="w35">
							</figure>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Hurin Seary</a>
							</h3> <span
							class="badge mt-0 text-grey-500 badge-pill pe-0 font-xsssss">4:09
								pm</span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
							<figure class="avatar float-left mb-0 me-2">
								<img src="images/user-3.png" alt="image" class="w35">
							</figure>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">David Goria</a>
							</h3> <span
							class="badge mt-0 text-grey-500 badge-pill pe-0 font-xsssss">2
								days</span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
							<figure class="avatar float-left mb-0 me-2">
								<img src="images/user-2.png" alt="image" class="w35">
							</figure>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Seary Victor</a>
							</h3> <span class="bg-success ms-auto btn-round-xss"></span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
							<figure class="avatar float-left mb-0 me-2">
								<img src="images/user-12.png" alt="image" class="w35">
							</figure>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Ana Seary</a>
							</h3> <span class="bg-success ms-auto btn-round-xss"></span>
						</li>

					</ul>
				</div>
				<div
					class="section full pe-3 ps-4 pt-4 pb-4 position-relative feed-body">
					<h4 class="font-xsssss text-grey-500 text-uppercase fw-700 ls-3">GROUPS</h4>
					<ul class="list-group list-group-flush">
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

							<span
							class="btn-round-sm bg-primary-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Studio Express</a>
							</h3> <span
							class="badge mt-0 text-grey-500 badge-pill pe-0 font-xsssss">2
								min</span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

							<span
							class="btn-round-sm bg-gold-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Armany Design</a>
							</h3> <span class="bg-warning ms-auto btn-round-xss"></span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

							<span
							class="btn-round-sm bg-mini-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">De fabous</a>
							</h3> <span class="bg-success ms-auto btn-round-xss"></span>
						</li>
					</ul>
				</div>
				<div
					class="section full pe-3 ps-4 pt-0 pb-4 position-relative feed-body">
					<h4 class="font-xsssss text-grey-500 text-uppercase fw-700 ls-3">Pages</h4>
					<ul class="list-group list-group-flush">
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

							<span
							class="btn-round-sm bg-primary-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Armany Seary</a>
							</h3> <span class="bg-success ms-auto btn-round-xss"></span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

							<span
							class="btn-round-sm bg-gold-gradiant me-3 ls-3 text-white font-xssss fw-700">UD</span>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Entropio Inc</a>
							</h3> <span class="bg-success ms-auto btn-round-xss"></span>
						</li>

					</ul>
				</div>

			</div>
		</div>


		<!-- right chat -->

		<div class="app-footer border-0 shadow-lg bg-primary-gradiant">
			<a href="default.html" class="nav-content-bttn nav-center"><i
				class="feather-home"></i></a> <a href="default-video.html"
				class="nav-content-bttn"><i class="feather-package"></i></a> <a
				href="default-live-stream.html" class="nav-content-bttn"
				data-tab="chats"><i class="feather-layout"></i></a> <a
				href="shop-2.html" class="nav-content-bttn"><i
				class="feather-layers"></i></a> <a href="default-settings.html"
				class="nav-content-bttn"><img src="images/female-profile.png"
				alt="user" class="w30 shadow-xss"></a>
		</div>

		<div class="app-header-search">
			<form class="search-form">
				<div class="form-group searchbox mb-0 border-0 p-1">
					<input type="text" class="form-control border-0"
						placeholder="Search..."> <i class="input-icon"> <ion-icon
							name="search-outline" role="img" class="md hydrated"
							aria-label="search outline"></ion-icon>
					</i> <a href="#" class="ms-1 mt-1 d-inline-block close searchbox-close">
						<i class="ti-close font-xs"></i>
					</a>
				</div>
			</form>
		</div>

	</div>

	<div class="modal bottom side fade" id="Modalstries" tabindex="-1"
		role="dialog" style="overflow-y: auto;">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content border-0 bg-transparent">
				<button type="button"
					class="close mt-0 position-absolute top--30 right--10"
					data-dismiss="modal" aria-label="Close">
					<i class="ti-close text-white font-xssss"></i>
				</button>
				<div class="modal-body p-0">
					<div
						class="card w-100 border-0 rounded-3 overflow-hidden bg-gradiant-bottom bg-gradiant-top">
						<div
							class="owl-carousel owl-theme dot-style3 story-slider owl-dot-nav nav-none">
							<div class="item">
								<img src="images/story-5.jpg" alt="image">
							</div>
							<div class="item">
								<img src="images/story-6.jpg" alt="image">
							</div>
							<div class="item">
								<img src="images/story-7.jpg" alt="image">
							</div>
							<div class="item">
								<img src="images/story-8.jpg" alt="image">
							</div>

						</div>
					</div>
					<div
						class="form-group mt-3 mb-0 p-3 position-absolute bottom-0 z-index-1 w-100">
						<input type="text"
							class="style2-input w-100 bg-transparent border-light-md p-3 pe-5 font-xssss fw-500 text-white"
							value="Write Comments"> <span
							class="feather-send text-white font-md text-white position-absolute"
							style="bottom: 35px; right: 30px;"></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal-popup-chat">
		<div class="modal-popup-wrap bg-white p-0 shadow-lg rounded-3">
			<div class="modal-popup-header w-100 border-bottom">
				<div class="card p-3 d-block border-0 d-block">
					<figure class="avatar mb-0 float-left me-2">
						<img src="images/user-12.png" alt="image" class="w35 me-1">
					</figure>
					<h5 class="fw-700 text-primary font-xssss mt-1 mb-1">Hendrix
						Stamp</h5>
					<h4 class="text-grey-500 font-xsssss mt-0 mb-0">
						<span class="d-inline-block bg-success btn-round-xss m-0"></span>
						Available
					</h4>
					<a href="#"
						class="font-xssss position-absolute right-0 top-0 mt-3 me-4"><i
						class="ti-close text-grey-900 mt-2 d-inline-block"></i></a>
				</div>
			</div>
			<div class="modal-popup-body w-100 p-3 h-auto">
				<div class="message">
					<div class="message-content font-xssss lh-24 fw-500">Hi, how
						can I help you?</div>
				</div>
				<div
					class="date-break font-xsssss lh-24 fw-500 text-grey-500 mt-2 mb-2">Mon
					10:20am</div>
				<div class="message self text-right mt-2">
					<div class="message-content font-xssss lh-24 fw-500">I want
						those files for you. I want you to send 1 PDF and 1 image file.</div>
				</div>
				<div
					class="snippet pt-3 ps-4 pb-2 pe-3 mt-2 bg-grey rounded-xl float-right"
					data-title=".dot-typing">
					<div class="stage">
						<div class="dot-typing"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="modal-popup-footer w-100 border-top">
				<div class="card p-3 d-block border-0 d-block">
					<div class="form-group icon-right-input style1-input mb-0">
						<input type="text" placeholder="Start typing.."
							class="form-control rounded-xl bg-greylight border-0 font-xssss fw-500 ps-3"><i
							class="feather-send text-grey-500 font-md"></i>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="<%=request.getContextPath()%>/view/sociala/js/plugin.js"></script>
	<script src="<%=request.getContextPath()%>/view/sociala/js/scripts.js"></script>

</body>


<!-- Mirrored from uitheme.net/sociala/default-message.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Nov 2023 14:44:23 GMT -->
</html>