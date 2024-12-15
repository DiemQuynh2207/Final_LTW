<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="/frontend1/css/signin.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

</head>
<body>
    <div class="signup-container">
        <div class="container">
            <div class="container-image" >
                <div class="container-slogan">
                    <!-- <h1>Welcome to UTEShop</h1> -->
                    <p data-aos="fade-right"
                    data-aos-easing="linear"
                    data-aos-duration="1500" >ベトナム</p>
                </div>
                <img src="/frontend/img/bg-japan-signin.png" alt="" width="600px" height="600px" 
                    data-aos="fade-down"
                    data-aos-easing="linear"
                    data-aos-duration="1500" >
            </div>
            <div class="container-form" 
                data-aos="fade-left"
                data-aos-easing="linear"
                data-aos-duration="1500"   
                >
                <form action="" class="form">
                    <div class="text-container">
                        <h1>Sign In</h1>
                    </div>
                    <div class="input-container">
                        <!-- <div class="flex-column">
                            <label>Your Fullname</label>
                        </div>
                            <div class="inputForm">
                              <svg width="20px" height="20px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M16 7C16 9.20914 14.2091 11 12 11C9.79086 11 8 9.20914 8 7C8 4.79086 9.79086 3 12 3C14.2091 3 16 4.79086 16 7Z" stroke="#000000" stroke-width="1.9440000000000002" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M12 14C8.13401 14 5 17.134 5 21H19C19 17.134 15.866 14 12 14Z" stroke="#000000" stroke-width="1.9440000000000002" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>      
                              <input placeholder="Nguyễn Văn A" class="input input-name" type="text">
                            </div> -->
                        <div class="flex-column">
                            <label>Your Email </label>
                        </div>
                        <div class="inputForm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" viewBox="0 0 32 32" height="20"><g data-name="Layer 3" id="Layer_3"><path d="m30.853 13.87a15 15 0 0 0 -29.729 4.082 15.1 15.1 0 0 0 12.876 12.918 15.6 15.6 0 0 0 2.016.13 14.85 14.85 0 0 0 7.715-2.145 1 1 0 1 0 -1.031-1.711 13.007 13.007 0 1 1 5.458-6.529 2.149 2.149 0 0 1 -4.158-.759v-10.856a1 1 0 0 0 -2 0v1.726a8 8 0 1 0 .2 10.325 4.135 4.135 0 0 0 7.83.274 15.2 15.2 0 0 0 .823-7.455zm-14.853 8.13a6 6 0 1 1 6-6 6.006 6.006 0 0 1 -6 6z"></path></g></svg>
                            <input placeholder="user@gmail.com" class="input" type="text">
                        </div>
                        <div class="flex-column">
                            <label>Your Password </label>
                        </div>
                        <div class="inputForm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" viewBox="-64 0 512 512" height="20"><path d="m336 512h-288c-26.453125 0-48-21.523438-48-48v-224c0-26.476562 21.546875-48 48-48h288c26.453125 0 48 21.523438 48 48v224c0 26.476562-21.546875 48-48 48zm-288-288c-8.8125 0-16 7.167969-16 16v224c0 8.832031 7.1875 16 16 16h288c8.8125 0 16-7.167969 16-16v-224c0-8.832031-7.1875-16-16-16zm0 0"></path><path d="m304 224c-8.832031 0-16-7.167969-16-16v-80c0-52.929688-43.070312-96-96-96s-96 43.070312-96 96v80c0 8.832031-7.167969 16-16 16s-16-7.167969-16-16v-80c0-70.59375 57.40625-128 128-128s128 57.40625 128 128v80c0 8.832031-7.167969 16-16 16zm0 0"></path></svg>        
                            <input placeholder="Enter your Password" class="input" type="password">
                        </div>
                    </div>
                    <div class="btn-container">
                        <button class="btn">
                            <svg height="24" width="24" fill="#FFFFFF" viewBox="0 0 24 24" data-name="Layer 1" id="Layer_1" class="sparkle">
                                <path d="M10,21.236,6.755,14.745.264,11.5,6.755,8.255,10,1.764l3.245,6.491L19.736,11.5l-6.491,3.245ZM18,21l1.5,3L21,21l3-1.5L21,18l-1.5-3L18,18l-3,1.5ZM19.333,4.667,20.5,7l1.167-2.333L24,3.5,21.667,2.333,20.5,0,19.333,2.333,17,3.5Z"></path>
                            </svg>
                            <span class="text">Sign In</span>
                        </button>
                        <div class="login-form">
                            <span>Don't have an account?</span>
                            <a href="/frontend/html/signup.html">Sign Up!</a>
                        </div>
                        <div class="or">
                            <div class="line"></div>
                            <span>or</span>
                            <div class="line"></div>
                        </div>
                        <span class="other">Sign in with your social</span>
                        <div class="social-media">
                            <a href="">
                                <div class="wrapper">
                                    <div class="icon google">
                                        <span class="tooltip">Google</span>
                                        <svg 
                                            width="3em" 
                                            height="3em" 
                                            viewBox="0 -0.5 25 25" 
                                            fill="currentColor" 
                                            xmlns="http://www.w3.org/2000/svg" 
                                            stroke="#000000" stroke-width="0.375"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M9.78353 7.74971C10.1976 7.73814 10.5239 7.39311 10.5123 6.97906C10.5007 6.565 10.1557 6.23873 9.74164 6.25029L9.78353 7.74971ZM5.50158 11.5L6.25132 11.52C6.25167 11.5067 6.25167 11.4933 6.25132 11.48L5.50158 11.5ZM9.76258 16L9.74164 16.7497C9.7556 16.7501 9.76957 16.7501 9.78353 16.7497L9.76258 16ZM14.0236 11.5L14.7733 11.48C14.7625 11.0737 14.43 10.75 14.0236 10.75V11.5ZM9.76258 10.75C9.34837 10.75 9.01258 11.0858 9.01258 11.5C9.01258 11.9142 9.34837 12.25 9.76258 12.25V10.75ZM19.3276 9.679C19.7418 9.679 20.0776 9.34321 20.0776 8.929C20.0776 8.51479 19.7418 8.179 19.3276 8.179V9.679ZM17.5016 8.179C17.0874 8.179 16.7516 8.51479 16.7516 8.929C16.7516 9.34321 17.0874 9.679 17.5016 9.679V8.179ZM17.5016 9.679C17.9158 9.679 18.2516 9.34321 18.2516 8.929C18.2516 8.51479 17.9158 8.179 17.5016 8.179V9.679ZM15.6756 8.179C15.2614 8.179 14.9256 8.51479 14.9256 8.929C14.9256 9.34321 15.2614 9.679 15.6756 9.679V8.179ZM16.7516 8.929C16.7516 9.34321 17.0874 9.679 17.5016 9.679C17.9158 9.679 18.2516 9.34321 18.2516 8.929H16.7516ZM18.2516 7C18.2516 6.58579 17.9158 6.25 17.5016 6.25C17.0874 6.25 16.7516 6.58579 16.7516 7H18.2516ZM18.2516 8.929C18.2516 8.51479 17.9158 8.179 17.5016 8.179C17.0874 8.179 16.7516 8.51479 16.7516 8.929H18.2516ZM16.7516 10.857C16.7516 11.2712 17.0874 11.607 17.5016 11.607C17.9158 11.607 18.2516 11.2712 18.2516 10.857H16.7516ZM9.74164 6.25029C6.90939 6.32941 4.67644 8.68761 4.75185 11.52L6.25132 11.48C6.19794 9.47505 7.77861 7.80571 9.78353 7.74971L9.74164 6.25029ZM4.75185 11.48C4.67644 14.3124 6.90939 16.6706 9.74164 16.7497L9.78353 15.2503C7.77861 15.1943 6.19794 13.5249 6.25132 11.52L4.75185 11.48ZM9.78353 16.7497C12.6158 16.6706 14.8487 14.3124 14.7733 11.48L13.2738 11.52C13.3272 13.5249 11.7466 15.1943 9.74164 15.2503L9.78353 16.7497ZM14.0236 10.75H9.76258V12.25H14.0236V10.75ZM19.3276 8.179H17.5016V9.679H19.3276V8.179ZM17.5016 8.179H15.6756V9.679H17.5016V8.179ZM18.2516 8.929V7H16.7516V8.929H18.2516ZM16.7516 8.929V10.857H18.2516V8.929H16.7516Z" fill="#000000"></path> </g></svg>
                                    </div>
                                </div>
                            </a>
                            <a href="">
                                <div class="wrapper">
                                    <div class="icon facebook">
                                        <span class="tooltip">Facebook</span>
                                        <svg
                                          viewBox="0 0 320 512"
                                          height="1.2em"
                                          fill="currentColor"
                                          xmlns="http://www.w3.org/2000/svg"
                                        >
                                          <path
                                            d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"
                                          ></path>
                                        </svg>
                                    </div>
                                </div>
                            </a>
                            <a href="">
                                <div class="wrapper">
                                    <div class="icon twitter">
                                        <span class="tooltip">Twitter</span>
                                        <svg
                                          height="1.8em"
                                          fill="currentColor"
                                          viewBox="0 0 48 48"
                                          xmlns="http://www.w3.org/2000/svg"
                                          class="twitter"
                                        >
                                          <path
                                            d="M42,12.429c-1.323,0.586-2.746,0.977-4.247,1.162c1.526-0.906,2.7-2.351,3.251-4.058c-1.428,0.837-3.01,1.452-4.693,1.776C34.967,9.884,33.05,9,30.926,9c-4.08,0-7.387,3.278-7.387,7.32c0,0.572,0.067,1.129,0.193,1.67c-6.138-0.308-11.582-3.226-15.224-7.654c-0.64,1.082-1,2.349-1,3.686c0,2.541,1.301,4.778,3.285,6.096c-1.211-0.037-2.351-0.374-3.349-0.914c0,0.022,0,0.055,0,0.086c0,3.551,2.547,6.508,5.923,7.181c-0.617,0.169-1.269,0.263-1.941,0.263c-0.477,0-0.942-0.054-1.392-0.135c0.94,2.902,3.667,5.023,6.898,5.086c-2.528,1.96-5.712,3.134-9.174,3.134c-0.598,0-1.183-0.034-1.761-0.104C9.268,36.786,13.152,38,17.321,38c13.585,0,21.017-11.156,21.017-20.834c0-0.317-0.01-0.633-0.025-0.945C39.763,15.197,41.013,13.905,42,12.429"
                                          ></path>
                                        </svg>
                                    </div>
                                </div>
                            </a>
                            <a href="">
                                <div class="wrapper">
                                    <div class="icon instagram">
                                        <span class="tooltip">Instagram</span>
                                        <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            height="1.2em"
                                            fill="currentColor"
                                            class="bi bi-instagram"
                                            viewBox="0 0 16 16"
                                        >
                                            <path
                                            d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"
                                            ></path>
                                        </svg>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <style>
		    @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100..900&display=swap');
		
		* {
		  margin: 0;
		  border: border-box;
		  font-family: "Montserrat";
		}
		body {
		  background-image: url(/frontend/img/japan-bg.jpg);
		  background-size: cover;
		  /* backdrop-filter: blur(5px); */
		  /* background-position-y: 50%; */
		}
		.container { 
		  display: grid;
		  grid-template-columns:  repeat(2, 1fr);
		  place-items: center;
		  /* display: flex;
		  justify-content: space-around; */
		  align-items: center;
		  height: 100vh;
		}
		.container-form {
		  border: 1px solid black;
		  width: 400px;
		  height: 520px;
		  display: flex;
		  justify-content: center;
		  border-radius: 4px;
		  background-color: white;
		}
		
		.flex-column {
		  margin-top: 20px;
		}
		.text-container h1 {
		  display: flex;
		  justify-content: center;
		  margin-top: 20px;
		}
		.inputForm {
		  border: 1.5px solid #ecedec;
		  border-radius: 10px;
		  height: 40px;
		  width: 320px;
		  display: flex;
		  align-items: center;
		  padding: 5px;
		  transition: 0.2s ease-in-out;
		  justify-content: space-around;
		}
		input { 
		  width: 260px;
		  margin-left: 10px;
		  padding: 10px;
		  border-radius: 5px;
		  /* border: 1px solid rgba(211, 211, 211, 0.433); */
		  outline: none;
		  border: none;
		  font-style: 12px;
		}
		.input:focus {
		  outline: none;
		  /* background-color: gray; */
		  background-color: #FEF9F2;
		}
		.inputForm:hover {
		  border: 1.5px solid gray;
		}
		.inputForm:focus-within {
		  border: 1.5px solid gray;
		}
		label {
		  font-size: 14px;
		  font-weight: bold;
		}
		.btn-container { 
		  margin-top: 20px;
		}
		/* BUTTON SIGN UP */
		.btn {
		  border: none;
		  width: 330px;
		  height: 40px;
		  border-radius: 3em;
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  gap: 12px;
		  background: #1C1A1C;
		  cursor: pointer;
		  transition: all 450ms ease-in-out;
		}
		
		.sparkle {
		  fill: #AAAAAA;
		  transition: all 800ms ease;
		}
		
		.text {
		  font-weight: 600;
		  color: #AAAAAA;
		  font-size: medium;
		}
		
		.btn:hover {
		  background: linear-gradient(0deg,#A47CF3,#683FEA);
		  box-shadow: inset 0px 1px 0px 0px rgba(255, 255, 255, 0.4),
		  inset 0px -4px 0px 0px rgba(0, 0, 0, 0.2),
		  0px 0px 0px 4px rgba(255, 255, 255, 0.2),
		  0px 0px 180px 0px #9917FF;
		  transform: translateY(-2px);
		}
		
		.btn:hover .text {
		  color: white;
		}
		
		.btn:hover .sparkle {
		  fill: white;
		  transform: scale(1.2);
		} 
		/* END BUTTON SIGN UP */
		.login-form {
		  margin-top: 10px;
		}
		.login-form a {
		  text-decoration: none;
		  color: #1C1A1C;
		  font-weight: bold;
		}
		.login-form a:hover {
		  color: #273c75;
		  text-decoration: underline;
		}
		.or{
		  margin-top: 20px;
		  display: flex;
		  flex-direction: row;
		  justify-content: center;
		  align-items: center;
		}
		.line{
		  width: 150px;
		  height: 0.5px;
		  background-color: gray;
		  margin: 0 auto;
		}
		.other{
		  margin-top: 20px;
		  display: flex;
		  justify-content: space-around;
		}
		.social-media {
		  display: flex;
		  justify-content: space-around;
		  margin-top: 10px;
		}
		.social-media a {
		  text-decoration: none;
		  color: black;
		  font-weight: bold;
		}
		/* SOCIAL ICON START */
		/* From Uiverse.io by david-mohseni */ 
		.wrapper {
		  display: inline-flex;
		  list-style: none;
		  height: 120px;
		  width: 100%;
		  /* padding-top: 40px; */
		  font-family: "Poppins", sans-serif;
		  justify-content: center;
		}
		
		.wrapper .icon {
		  position: relative;
		  background: #fff;
		  border-radius: 50%;
		  margin: 10px;
		  width: 50px;
		  height: 50px;
		  font-size: 18px;
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  flex-direction: column;
		  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
		  cursor: pointer;
		  transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}
		
		.wrapper .tooltip {
		  position: absolute;
		  top: 0;
		  font-size: 14px;
		  background: #fff;
		  color: #fff;
		  padding: 5px 8px;
		  border-radius: 5px;
		  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
		  opacity: 0;
		  pointer-events: none;
		  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}
		
		.wrapper .tooltip::before {
		  position: absolute;
		  content: "";
		  height: 8px;
		  width: 8px;
		  background: #fff;
		  bottom: -3px;
		  left: 50%;
		  transform: translate(-50%) rotate(45deg);
		  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}
		
		.wrapper .icon:hover .tooltip {
		  top: -45px;
		  opacity: 1;
		  visibility: visible;
		  pointer-events: auto;
		}
		
		.wrapper .icon:hover span,
		.wrapper .icon:hover .tooltip {
		  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.1);
		}
		
		.wrapper .google:hover,
		.wrapper .google:hover .tooltip,
		.wrapper .google:hover .tooltip::before {
		  background: #9EDF9C;
		  color: white;
		}
		
		.wrapper .facebook:hover,
		.wrapper .facebook:hover .tooltip,
		.wrapper .facebook:hover .tooltip::before {
		  background: #1877f2;
		  color: #fff;
		}
		
		.wrapper .twitter:hover,
		.wrapper .twitter:hover .tooltip,
		.wrapper .twitter:hover .tooltip::before {
		  background: #1da1f2;
		  color: #fff;
		}
		
		.wrapper .instagram:hover,
		.wrapper .instagram:hover .tooltip,
		.wrapper .instagram:hover .tooltip::before {
		  background: #e4405f;
		  color: #fff;
		}
		
		
		/* SOCIAL ICON END */
		.container-slogan {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  flex-direction: column;
		}
		.container-slogan p {
		  font-size: 25px;
		  font-weight: bold;
		  font-family: 'Noto Sans Japanese';
		  color: white;
		}
    </style>
    <script>
    function menuToggle() {
    	  const toggleMenu = document.querySelector(".menu-user");
    	  toggleMenu.classList.toggle("active");
    	}

    	let btn_appear = document.getElementById('btn-user-action') 
    	let profile_user = document.getElementById('profile-user')
    	let username=""
    	function checkLogin(){
    	  if(username ==""){
    	    btn_appear.style.display = 'flex'
    	    profile_user.style.display = 'none'
    	  }
    	  else{
    	    btn_appear.style.display = 'none'
    	    profile_user.style.display = 'block'
    	  }
    	}
    	checkLogin()

    	// let list = document.querySelector('.img-product .list')
    	// let items = document.querySelectorAll('.img-product .list .item')
    	// let dots = document.querySelectorAll('.img-product .dots li')
    	// let prev = document.getElementById('prev')
    	// let next = document.getElementById('next')
    	// let dot_img = document.querySelectorAll('.show-img-product .show-img')
    	// let active = 0
    	// let lengthItems = items.length - 1
    	// for (let i = 0; i < items.length; i++) {
    	//   if(i == 0)
//    	     items[i].style.display = 'block'
    	//   else
//    	     items[i].style.display = 'none'
    	// }
    	// for (let i = 0; i < dot_img.length; i++) {
    	//   if(i == 0)
//    	     dot_img[i].style.opacity = 1;
    	//   else
//    	     dot_img[i].style.opacity = 0.33;
    	// }
    	// next.onclick = function(){
    	//   if(active +1 > lengthItems){
//    	     active = 0
    	//   } else {
//    	     active += 1
    	//   }
    	//   reloadSlider()
    	// }
    	// prev.onclick = function(){
    	//   if(active -1 < 0){
//    	     active = lengthItems
    	//   } else {
//    	     active -= 1
    	//   }
    	//   reloadSlider()
    	// }
    	// function ShowImg(n){
    	//   active = n -1
    	//   reloadSlider()
    	// }
    	// function reloadSlider(){
    	//   let checkLeft = items[active].offsetLeft;
    	//   list.style.left = -checkLeft + 'px';

    	//   let lastActiveDot = document.querySelector('.img-product .dots li.active')
    	//   lastActiveDot.classList.remove('active')
    	//   dots[active].classList.add('active')

    	//   for(var i = 0; i < items.length ; i++){
//    	     items[i].style.display = 'none'
    	//   }
    	//   items[active].style.display = 'block'

    	//   for (i = 0; i < dot_img.length; i++) {
//    	     dot_img[i].style.opacity = 0.33;
    	//   }
    	//   dot_img[active].style.opacity = 1;

    	// }

    	// dots.forEach((li, index) => {
    	//   li.addEventListener('click',function(){
//    	     active = index
//    	     reloadSlider();
    	//   }
    	// )})

    	// (function () {
    	//   const quantityContainer = document.querySelector(".quantity");
    	//   const minusBtn = quantityContainer.querySelector(".minus");
    	//   const plusBtn = quantityContainer.querySelector(".plus");
    	//   const inputBox = quantityContainer.querySelector(".input-box");

    	//   updateButtonStates();

    	//   quantityContainer.addEventListener("click", handleButtonClick);
    	//   inputBox.addEventListener("input", handleQuantityChange);

    	//   function updateButtonStates() {
//    	     const value = parseInt(inputBox.value);
//    	     minusBtn.disabled = value <= 1;
//    	     plusBtn.disabled = value >= parseInt(inputBox.max);
    	//   }

    	//   function handleButtonClick(event) {
//    	     if (event.target.classList.contains("minus")) {
//    	       decreaseValue();
//    	     } else if (event.target.classList.contains("plus")) {
//    	       increaseValue();
//    	     }
    	//   }

    	//   function decreaseValue() {
//    	     let value = parseInt(inputBox.value);
//    	     value = isNaN(value) ? 1 : Math.max(value - 1, 1);
//    	     inputBox.value = value;
//    	     updateButtonStates();
//    	     handleQuantityChange();
    	//   }

    	//   function increaseValue() {
//    	     let value = parseInt(inputBox.value);
//    	     value = isNaN(value) ? 1 : Math.min(value + 1, parseInt(inputBox.max));
//    	     inputBox.value = value;
//    	     updateButtonStates();
//    	     handleQuantityChange();
    	//   }

    	//   function handleQuantityChange() {
//    	     let value = parseInt(inputBox.value);
//    	     value = isNaN(value) ? 1 : value;

//    	     // Execute your code here based on the updated quantity value
//    	     console.log("Quantity changed:", value);
    	//   }
    	// })();

    	 
    	let main_content_shop = document.getElementById('main-content-shop')
    	async function loadProduct() {
    	  const response = await fetch('../html/test.json');
    	  const products = await response.json();
    	  products.forEach(function(product) {
    	    console.log("Product:", product);
    	    const card = document.createElement("div");
    	    card.classList.add("card");
    	    // Create the card-img-content container
    	    const cardImgContent = document.createElement('div');
    	    cardImgContent.classList.add('card-img-content');

    	    // Create the image element
    	    const cardImg = document.createElement('img');
    	    cardImg.src = product.productImage;
    	    cardImg.alt = '';
    	    cardImg.classList.add('card-img');

    	    // Append the image to the card-img-content
    	    cardImgContent.appendChild(cardImg);

    	    // Create the card-info container
    	    const cardInfo = document.createElement('div');
    	    cardInfo.classList.add('card-info');

    	    // Create the title paragraph
    	    const title = document.createElement('p');
    	    title.classList.add('text-title');
    	    title.textContent = product.productName;

    	    // Append the title to the card-info
    	    cardInfo.appendChild(title);

    	    // Create the card-footer container
    	    const cardFooter = document.createElement('div');
    	    cardFooter.classList.add('card-footer');

    	    // Create the price span
    	    const price = document.createElement('span');
    	    price.classList.add('text-title');
    	    price.textContent = product.productPrice;

    	    // Create the card-button container
    	    const cardButton = document.createElement('div');
    	    cardButton.classList.add('card-button');

    	    // Create the SVG icon
    	    const svgIcon = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
    	    svgIcon.classList.add('svg-icon');
    	    svgIcon.setAttribute('viewBox', '0 0 20 20');

    	    // Create the path elements inside the SVG
    	    const path1 = document.createElementNS('http://www.w3.org/2000/svg', 'path');
    	    path1.setAttribute('d', 'M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z');
    	    const path2 = document.createElementNS('http://www.w3.org/2000/svg', 'path');
    	    path2.setAttribute('d', 'M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z');
    	    const path3 = document.createElementNS('http://www.w3.org/2000/svg', 'path');
    	    path3.setAttribute('d', 'M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z');

    	    // Append paths to the SVG
    	    svgIcon.appendChild(path1);
    	    svgIcon.appendChild(path2);
    	    svgIcon.appendChild(path3);

    	    // Append the SVG to the card-button
    	    cardButton.appendChild(svgIcon);

    	    // Append the price and card-button to the card-footer
    	    cardFooter.appendChild(price);
    	    cardFooter.appendChild(cardButton);

    	    // Append all sections to the card
    	    card.appendChild(cardImgContent);
    	    card.appendChild(cardInfo);
    	    card.appendChild(cardFooter);

    	    // Finally, append the card to the body or any container you want
    	    main_content_shop.appendChild(card);
    	  })
    	}
    	loadProduct()


    </script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();
        
    </script>
</body>
</html>