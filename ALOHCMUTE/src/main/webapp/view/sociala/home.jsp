<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from uitheme.net/sociala/default.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Nov 2023 14:30:43 GMT -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>ALOHCMUTE - Nhom 3</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/sociala/css/themify-icons.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/sociala/css/feather.css">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="<%=request.getContextPath()%>/view/sociala/images/favicon.png">

<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/sociala/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/sociala/css/emoji.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/sociala/css/lightbox.css">

</head>

<body class="color-theme-blue mont-font">

	<div class="preloader"></div>


	<div class="main-wrapper">

		<!-- navigation top-->
		<div class="nav-header bg-white shadow-xs border-0">
			<div class="nav-top">
				<a href="index.html"><i
					class="feather-zap text-success display1-size me-2 ms-0"></i><span
					class="d-inline-block fredoka-font ls-3 fw-600 text-current font-xxl logo-text mb-0">ALOHCMUTE</span>
				</a> <a href="#" class="mob-menu ms-auto me-2 chat-active-btn"><i
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
				id="dropdownMenu3" data-bs-toggle="dropdown" aria-expanded="false"><span
				class="dot-count bg-warning"></span><i
				class="feather-bell font-xl text-current"></i></a>
			<div
				class="dropdown-menu dropdown-menu-end p-4 rounded-3 border-0 shadow-lg"
				aria-labelledby="dropdownMenu3">

				<h4 class="fw-700 font-xss mb-4">Notification</h4>
				<div class="card bg-transparent-card w-100 border-0 ps-5 mb-3">
					<img
						src="<%=request.getContextPath()%>/view/sociala/images/user-8.png"
						alt="user" class="w40 position-absolute left-0">
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
			<a href="listfriend"
				class="p-2 text-center ms-3 menu-icon chat-active-btn"><i
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


			<a href="/ALOHCMUTE/view/sociala/default-settings.jsp"
				class="p-0 ms-3 menu-icon"><img src="${sessionScope.AvatarURL}"
				alt="user" class="w40 mt--1"></a>

		</div>
		<!-- navigation top -->

		<!-- navigation left -->
		<nav class="navigation scroll-bar">
			<div class="container ps-0 pe-0">
				<div class="nav-content">


					<div
						class="nav-wrap bg-white bg-transparent-card rounded-xxl shadow-xss pt-3 pb-1">
						<div class="nav-caption fw-600 font-xssss text-grey-500">
							<span></span> Account
						</div>
						<ul class="mb-1">
							<li class="logo d-none d-xl-block d-lg-block"></li>
							<li><a href="/ALOHCMUTE/view/sociala/default-settings.jsp"
								class="nav-content-bttn open-font h-auto pt-2 pb-2"><i
									class="font-sm feather-settings me-3 text-grey-500"></i><span>Settings</span></a></li>
							<li><a href="default-analytics.html"
								class="nav-content-bttn open-font h-auto pt-2 pb-2"><i
									class="font-sm feather-pie-chart me-3 text-grey-500"></i><span>Analytics</span></a></li>
							<li><a href="chat?userid=${id}"
								class="nav-content-bttn open-font h-auto pt-2 pb-2"><i
									class="font-sm feather-message-square me-3 text-grey-500"></i><span>Chat</span><span
									class="circle-count bg-warning mt-0">23</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!-- navigation left -->
		<!-- main content -->
		<div class="main-content right-chat-active">

			<div class="middle-sidebar-bottom">
				<div class="middle-sidebar-left">
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
					<div class="row feed-body">

						<div class="col-xl-8 col-xxl-9 col-lg-8">

							<div
								class="card w-100 shadow-xss rounded-xxl border-0 ps-4 pt-4 pe-4 pb-3 mb-3">
								<div class="card-body p-0">
									<a href="#"
										class="font-xssss fw-600 text-grey-500 card-body p-0 d-flex align-items-center">
										<i
										class="btn-round-sm font-xs text-primary feather-edit-3 me-2 bg-greylight"></i>Create
										Post
									</a>
								</div>
								<div class="card-body p-0 mt-3 position-relative">
									<figure class="avatar position-absolute ms-2 mt-1 top-5">
										<img src="${sessionScope.AvatarURL}" alt="ảnh"
											class="shadow-sm rounded-circle w30">
									</figure>
									<form action="/ALOHCMUTE/insertPost" method="post"
										enctype="multipart/form-data">
										<!-- Thay "dia_chi_xu_ly_form" bằng địa chỉ thực xử lý form -->
										<input type="text" name="content"
											class="h100 bor-0 w-100 rounded-xxl p-2 ps-5 font-xssss text-grey-500 fw-500 border-light-md theme-dark-bg"
											cols="30" rows="10" placeholder="Bạn đang nghĩ gì?">
										<div class="card-body d-flex p-0 mt-0">
											<label for="fileInput"
												class="d-flex align-items-center font-xssss fw-600 ls-1 text-grey-700 text-dark pe-4">
												<i class="font-md text-success feather-image me-2"></i> <span
												class="d-none-xs">Photo/Video</span>
											</label> <input type="file" id="fileInput" name="imageVideoURL"
												class="d-none"> <a href="#" class="ms-auto"
												id="dropdownMenu4" data-bs-toggle="dropdown"
												aria-expanded="false"><i
												class="ti-more-alt text-grey-900 btn-round-md bg-greylight font-xss"></i></a>
											<div
												class="dropdown-menu dropdown-menu-start p-4 rounded-xxl border-0 shadow-lg"
												aria-labelledby="dropdownMenu4">
												<div class="card-body p-0 d-flex">
													<i class="feather-bookmark text-grey-500 me-3 font-lg"></i>
													<h4 class="fw-600 text-grey-900 font-xssss mt-0 me-4">
														Save Link <span
															class="d-block font-xsssss fw-500 mt-1 lh-3 text-grey-500">Add
															this to your saved items</span>
													</h4>
												</div>
												<div class="card-body p-0 d-flex mt-2">
													<i class="feather-alert-circle text-grey-500 me-3 font-lg"></i>
													<h4 class="fw-600 text-grey-900 font-xssss mt-0 me-4">
														Hide Post <span
															class="d-block font-xsssss fw-500 mt-1 lh-3 text-grey-500">Save
															to your saved items</span>
													</h4>
												</div>
												<div class="card-body p-0 d-flex mt-2">
													<i class="feather-alert-octagon text-grey-500 me-3 font-lg"></i>
													<h4 class="fw-600 text-grey-900 font-xssss mt-0 me-4">
														Hide all from Group <span
															class="d-block font-xsssss fw-500 mt-1 lh-3 text-grey-500">Save
															to your saved items</span>
													</h4>
												</div>
												<div class="card-body p-0 d-flex mt-2">
													<i class="feather-lock text-grey-500 me-3 font-lg"></i>
													<h4 class="fw-600 mb-0 text-grey-900 font-xssss mt-0 me-4">
														Unfollow Group <span
															class="d-block font-xsssss fw-500 mt-1 lh-3 text-grey-500">Save
															to your saved items</span>
													</h4>
												</div>
											</div>
										</div>
										<button type="submit"
											class="form-control text-center style2-input text-white fw-600 bg-dark border-0 p-0">Post</button>
									</form>

								</div>

							</div>

							<!-- hhh -->


							<!--create post-->
							<!--post 1 -->
							<c:forEach var="i" items="${listpost}">
								<div class="card w-100 shadow-xss rounded-xxl border-0 p-4 mb-3">
									<div class="card-body p-0 d-flex">
										<figure class="avatar me-3">
											<img src="${i.user.avatarURL}" alt="image"
												class="shadow-sm rounded-circle w45">
										</figure>
										<h4 class="fw-700 text-grey-900 font-xssss mt-1">${i.user.userName}<span
												class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">${i.postTime}</span>
										</h4>
										<a href="#" class="ms-auto" id="dropdownMenu2"
											data-bs-toggle="dropdown" aria-expanded="false"><i
											class="ti-more-alt text-grey-900 btn-round-md bg-greylight font-xss"></i></a>
										<div
											class="dropdown-menu dropdown-menu-end p-4 rounded-xxl border-0 shadow-lg"
											aria-labelledby="dropdownMenu2">

											<div class="card-body p-0 d-flex mt-2">
												<i class="feather-alert-circle text-grey-500 me-3 font-lg"></i>
												<h4 class="fw-600 text-grey-900 font-xssss mt-0 me-4">
													Edit Post <span
														class="d-block font-xsssss fw-500 mt-1 lh-3 text-grey-500">Edit
														your post</span>
												</h4>
											</div>

										</div>
									</div>
									<div class="card-body p-0 me-lg-5">
										<p class="fw-500 text-grey-500 lh-26 font-xssss w-100">
											${i.content}<a href="#" class="fw-600 text-primary ms-2">See
												more</a>
										</p>
									</div>
									<div class="card-body d-block p-0">
										<div class="row ps-2 pe-2 justify-content-center">
											<div class="col-xs-4 col-sm-4 p-1 text-center">
												<a href="${i.imageVideoURL}" data-lightbox="roadtrip"> <img
													src="${i.imageVideoURL}" class="rounded-3 w-100"
													alt="image">
												</a>
											</div>
										</div>

									</div>
									<div class="card-body d-flex p-0 mt-3">
										<a href="#"
											class="emoji-bttn d-flex align-items-center fw-600 text-grey-900 text-dark lh-26 font-xssss me-2"><i
											class="feather-thumbs-up text-white bg-primary-gradiant me-1 btn-round-xs font-xss"></i>
											<i
											class="feather-heart text-white bg-red-gradiant me-2 btn-round-xs font-xss"></i>${i.likes }
											Like</a>
										<div class="emoji-wrap">
											<ul class="emojis list-inline mb-0">
												<li class="emoji list-inline-item"><i class="em em---1"></i>
												</li>
												<li class="emoji list-inline-item"><i
													class="em em-angry"></i></li>
												<li class="emoji list-inline-item"><i
													class="em em-anguished"></i></li>
												<li class="emoji list-inline-item"><i
													class="em em-astonished"></i></li>
												<li class="emoji list-inline-item"><i
													class="em em-blush"></i></li>
												<li class="emoji list-inline-item"><i
													class="em em-clap"></i></li>
												<li class="emoji list-inline-item"><i class="em em-cry"></i></li>
												<li class="emoji list-inline-item"><i
													class="em em-full_moon_with_face"></i></li>
											</ul>
										</div>
										<a href="#"
											class="d-flex align-items-center fw-600 text-grey-900 text-dark lh-26 font-xssss"><i
											class="feather-message-circle text-dark text-grey-900 btn-round-sm font-lg"></i><span
											class="d-none-xss">${i.comments } Comment</span></a>
									</div>
								</div>

							</c:forEach>


							<!--post 1 -->


							<div
								class="card w-100 text-center shadow-xss rounded-xxl border-0 p-4 mb-3 mt-3">
								<div class="snippet mt-2 ms-auto me-auto"
									data-title=".dot-typing">
									<div class="stage">
										<div class="dot-typing"></div>
									</div>
								</div>
							</div>


						</div>
						<!--friend request -->
						<div class="col-xl-4 col-xxl-3 col-lg-4 ps-lg-0">
							<div class="card w-100 shadow-xss rounded-xxl border-0 mb-3">
								<div class="card-body d-flex align-items-center p-4">
									<h4 class="fw-700 mb-0 font-xssss text-grey-900">Friend
										Request</h4>
									<a href="default-member.html"
										class="fw-600 ms-auto font-xssss text-primary">See all</a>
								</div>
								<c:forEach var="i" items="${listfriendrequest}" varStatus="loopStatus">
									<c:if test="${loopStatus.index < 3}">
									<div
										class="card-body d-flex pt-4 ps-4 pe-4 pb-0 border-top-xs bor-0">
										<figure class="avatar me-3">
											<img src="${i.user1.avatarURL}" alt="image"
												class="shadow-sm rounded-circle w45">
										</figure>
										<h4 class="fw-700 text-grey-900 font-xssss mt-1">${i.user1.userName}<span
												class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">12
												mutual friends</span>
										</h4>
									</div>
									<div
										class="card-body d-flex align-items-center pt-0 ps-4 pe-4 pb-4">
										<a href="home/confirm?userid=${i.user1.userID}&requestid=${i.requestID}"
											class="p-2 lh-20 w100 bg-primary-gradiant me-2 text-white text-center font-xssss fw-600 ls-1 rounded-xl">Confirm</a>
										<a href="#"
											class="p-2 lh-20 w100 bg-grey text-grey-800 text-center font-xssss fw-600 ls-1 rounded-xl">Delete</a>
									</div>
									</c:if>
								</c:forEach>




							</div>

							<div class="card w-100 shadow-xss rounded-xxl border-0 p-0 ">
								<div class="card-body d-flex align-items-center p-4 mb-0">
									<h4 class="fw-700 mb-0 font-xssss text-grey-900">Confirm
										Friend</h4>
									<a href="default-member.html"
										class="fw-600 ms-auto font-xssss text-primary">See all</a>
								</div>
								<c:forEach var="i" items="${listConfirm}" varStatus="loopStatus">
									<c:if test="${loopStatus.index < 3}">
										<div
											class="card-body bg-transparent-card d-flex p-3 bg-greylight m-3 rounded-3">
											<figure class="avatar me-2 mb-0">
												<img src="${i.avatarURL}" alt="image"
													class="shadow-sm rounded-circle w45">
											</figure>
											<h4 class="fw-700 text-grey-900 font-xssss mt-2">
												${i.userName}<span
													class="d-block font-xssss fw-500 mt-1 lh-3 text-grey-500">
													mutual friends</span>
											</h4>
											<a href="#" class="btn-round-sm bg-white text-grey-900 feather-plus font-xss ms-auto mt-2"></a>
										</div>
									</c:if>
								</c:forEach>



							</div>

							<div class="card w-100 shadow-xss rounded-xxl border-0 mb-3 mt-3">
								<div class="card-body d-flex align-items-center p-4">
									<h4 class="fw-700 mb-0 font-xssss text-grey-900">Suggest
										Group</h4>
									<a href="default-group.html"
										class="fw-600 ms-auto font-xssss text-primary">See all</a>
								</div>
								<div
									class="card-body d-flex pt-4 ps-4 pe-4 pb-0 overflow-hidden border-top-xs bor-0">
									<img src="images/e-2.jpg" alt="img"
										class="img-fluid rounded-xxl mb-2">
								</div>
								<div class="card-body dd-block pt-0 ps-4 pe-4 pb-4">
									<ul class="memberlist mt-1 mb-2 ms-0 d-block">
										<li class="w20"><a href="#"><img
												src="images/user-6.png" alt="user"
												class="w35 d-inline-block" style="opacity: 1;"></a></li>
										<li class="w20"><a href="#"><img
												src="images/user-7.png" alt="user"
												class="w35 d-inline-block" style="opacity: 1;"></a></li>
										<li class="w20"><a href="#"><img
												src="images/user-8.png" alt="user"
												class="w35 d-inline-block" style="opacity: 1;"></a></li>
										<li class="w20"><a href="#"><img
												src="images/user-3.png" alt="user"
												class="w35 d-inline-block" style="opacity: 1;"></a></li>
										<li class="last-member"><a href="#"
											class="bg-greylight fw-600 text-grey-500 font-xssss w35 ls-3 text-center"
											style="height: 35px; line-height: 35px;">+2</a></li>
										<li class="ps-3 w-auto ms-1"><a href="#"
											class="fw-600 text-grey-500 font-xssss">Member apply</a></li>
									</ul>
								</div>



							</div>

							<div class="card w-100 shadow-xss rounded-xxl border-0 mb-3">
								<div class="card-body d-flex align-items-center p-4">
									<h4 class="fw-700 mb-0 font-xssss text-grey-900">Suggest
										Pages</h4>
									<a href="default-group.html"
										class="fw-600 ms-auto font-xssss text-primary">See all</a>
								</div>
								<div
									class="card-body d-flex pt-4 ps-4 pe-4 pb-0 overflow-hidden border-top-xs bor-0">
									<img src="images/g-2.jpg" alt="img"
										class="img-fluid rounded-xxl mb-2">
								</div>
								<div
									class="card-body d-flex align-items-center pt-0 ps-4 pe-4 pb-4">
									<a href="#"
										class="p-2 lh-28 w-100 bg-grey text-grey-800 text-center font-xssss fw-700 rounded-xl"><i
										class="feather-external-link font-xss me-2"></i> Like Page</a>
								</div>

								<div
									class="card-body d-flex pt-0 ps-4 pe-4 pb-0 overflow-hidden">
									<img src="images/g-3.jpg" alt="img"
										class="img-fluid rounded-xxl mb-2 bg-lightblue">
								</div>
								<div
									class="card-body d-flex align-items-center pt-0 ps-4 pe-4 pb-4">
									<a href="#"
										class="p-2 lh-28 w-100 bg-grey text-grey-800 text-center font-xssss fw-700 rounded-xl"><i
										class="feather-external-link font-xss me-2"></i> Like Page</a>
								</div>


							</div>


							<div class="card w-100 shadow-xss rounded-xxl border-0 mb-3">
								<div class="card-body d-flex align-items-center  p-4">
									<h4 class="fw-700 mb-0 font-xssss text-grey-900">Event</h4>
									<a href="default-event.html"
										class="fw-600 ms-auto font-xssss text-primary">See all</a>
								</div>
								<div
									class="card-body d-flex pt-0 ps-4 pe-4 pb-3 overflow-hidden">
									<div class="bg-success me-2 p-3 rounded-xxl">
										<h4 class="fw-700 font-lg ls-3 lh-1 text-white mb-0">
											<span class="ls-1 d-block font-xsss text-white fw-600">FEB</span>22
										</h4>
									</div>
									<h4 class="fw-700 text-grey-900 font-xssss mt-2">
										Meeting with clients <span
											class="d-block font-xsssss fw-500 mt-1 lh-4 text-grey-500">41
											madison ave, floor 24 new work, NY 10010</span>
									</h4>
								</div>

								<div
									class="card-body d-flex pt-0 ps-4 pe-4 pb-3 overflow-hidden">
									<div class="bg-warning me-2 p-3 rounded-xxl">
										<h4 class="fw-700 font-lg ls-3 lh-1 text-white mb-0">
											<span class="ls-1 d-block font-xsss text-white fw-600">APR</span>30
										</h4>
									</div>
									<h4 class="fw-700 text-grey-900 font-xssss mt-2">
										Developer Programe <span
											class="d-block font-xsssss fw-500 mt-1 lh-4 text-grey-500">41
											madison ave, floor 24 new work, NY 10010</span>
									</h4>
								</div>

								<div
									class="card-body d-flex pt-0 ps-4 pe-4 pb-3 overflow-hidden">
									<div class="bg-primary me-2 p-3 rounded-xxl">
										<h4 class="fw-700 font-lg ls-3 lh-1 text-white mb-0">
											<span class="ls-1 d-block font-xsss text-white fw-600">APR</span>23
										</h4>
									</div>
									<h4 class="fw-700 text-grey-900 font-xssss mt-2">
										Aniversary Event <span
											class="d-block font-xsssss fw-500 mt-1 lh-4 text-grey-500">41
											madison ave, floor 24 new work, NY 10010</span>
									</h4>
								</div>

							</div>
						</div>

						<!--friend request -->
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
						<c:forEach var="i" items="${listfriend}">
							<li
								class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">
								<figure class="avatar float-left mb-0 me-2">
									<img src="${i.avatarURL}" alt="image" class="w35">
								</figure>
								<h3 class="fw-700 mb-0 mt-0">
									<a
										class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
										href="#">${i.userName}</a>
								</h3> <span class="bg-success ms-auto btn-round-xss"></span>
							</li>
						</c:forEach>

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
							class="btn-round-sm bg-gold-gradiant me-3 ls-3 text-white font-xssss fw-700">AR</span>
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
							class="btn-round-sm bg-primary-gradiant me-3 ls-3 text-white font-xssss fw-700">AB</span>
							<h3 class="fw-700 mb-0 mt-0">
								<a
									class="font-xssss text-grey-600 d-block text-dark model-popup-chat"
									href="#">Armany Seary</a>
							</h3> <span class="bg-success ms-auto btn-round-xss"></span>
						</li>
						<li
							class="bg-transparent list-group-item no-icon pe-0 ps-0 pt-2 pb-2 border-0 d-flex align-items-center">

							<span
							class="btn-round-sm bg-gold-gradiant me-3 ls-3 text-white font-xssss fw-700">SD</span>
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
			<a href="/default.html" class="nav-content-bttn nav-center"><i
				class="feather-home"></i></a> <a href="default-video.html"
				class="nav-content-bttn"><i class="feather-package"></i></a> <a
				href="default-live-stream.html" class="nav-content-bttn"
				data-tab="chats"><i class="feather-layout"></i></a> <a
				href="shop-2.html" class="nav-content-bttn"><i
				class="feather-layers"></i></a> <a
				href="/ALOHCMUTE/view/sociala/default-settings.jsp"
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

	<div class="modal bottom side fade" id="Modalstory" tabindex="-1"
		role="dialog" style="overflow-y: auto;">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content border-0 bg-transparent">
				<button type="button"
					class="close mt-0 position-absolute top--30 right--10"
					data-dismiss="modal" aria-label="Close">
					<i class="ti-close text-grey-900 font-xssss"></i>
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
					<h5 class="fw-700 text-primary font-xssss mt-1 mb-1">ten user</h5>
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

	<script src="<%=request.getContextPath()%>/view/sociala/js/lightbox.js"></script>
	<script src="<%=request.getContextPath()%>/view/sociala/js/scripts.js"></script>


</body>


<!-- Mirrored from uitheme.net/sociala/default.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Nov 2023 14:31:04 GMT -->
</html>