<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="/frontend1/css/signup.css">
</head>
<body>
    <div class="signup-container">
        <div class="container">
            <div class="container-image">
                <div class="container-slogan">
                    <!-- <h1>Welcome to UTEShop</h1> -->
                    <p data-aos="fade-right"
                    data-aos-easing="linear"
                    data-aos-duration="1500" >ベトナム</p>
                </div>
                <img src="/frontend/img/bg-japan-signup.png" alt="" width="600px" height="600px"
                    data-aos="fade-down"
                    data-aos-easing="linear"
                    data-aos-duration="1500" >
            </div>
            <div class="container-form" 
                data-aos="fade-left"
                data-aos-easing="linear"
                data-aos-duration="1500" >
                <form action="register" class="form" method="POST">
                    <div class="text-container">
                        <h1>Sign Up</h1>
                    </div>
                    <div class="input-container">
                        <div class="flex-column">
                            <label>Your Username</label>
                        </div>
                            <div class="inputForm">
                              <svg width="20px" height="20px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M16 7C16 9.20914 14.2091 11 12 11C9.79086 11 8 9.20914 8 7C8 4.79086 9.79086 3 12 3C14.2091 3 16 4.79086 16 7Z" stroke="#000000" stroke-width="1.9440000000000002" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M12 14C8.13401 14 5 17.134 5 21H19C19 17.134 15.866 14 12 14Z" stroke="#000000" stroke-width="1.9440000000000002" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>      
                              <input placeholder="Nguyễn Văn A" class="input input-name" type="text" name="username" required>
                              
                            </div>
                        <div class="flex-column">
                            <label>Your Email </label>
                        </div>
                        <div class="inputForm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" viewBox="0 0 32 32" height="20"><g data-name="Layer 3" id="Layer_3"><path d="m30.853 13.87a15 15 0 0 0 -29.729 4.082 15.1 15.1 0 0 0 12.876 12.918 15.6 15.6 0 0 0 2.016.13 14.85 14.85 0 0 0 7.715-2.145 1 1 0 1 0 -1.031-1.711 13.007 13.007 0 1 1 5.458-6.529 2.149 2.149 0 0 1 -4.158-.759v-10.856a1 1 0 0 0 -2 0v1.726a8 8 0 1 0 .2 10.325 4.135 4.135 0 0 0 7.83.274 15.2 15.2 0 0 0 .823-7.455zm-14.853 8.13a6 6 0 1 1 6-6 6.006 6.006 0 0 1 -6 6z"></path></g></svg>
                            <input placeholder="user@gmail.com" class="input" type="email" name="email" required>
                        </div>
                        
                        <div class="flex-column">
                            <label>Your Fullname </label>
                        </div>
                        <div class="inputForm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" viewBox="-64 0 512 512" height="20"><path d="m336 512h-288c-26.453125 0-48-21.523438-48-48v-224c0-26.476562 21.546875-48 48-48h288c26.453125 0 48 21.523438 48 48v224c0 26.476562-21.546875 48-48 48zm-288-288c-8.8125 0-16 7.167969-16 16v224c0 8.832031 7.1875 16 16 16h288c8.8125 0 16-7.167969 16-16v-224c0-8.832031-7.1875-16-16-16zm0 0"></path><path d="m304 224c-8.832031 0-16-7.167969-16-16v-80c0-52.929688-43.070312-96-96-96s-96 43.070312-96 96v80c0 8.832031-7.167969 16-16 16s-16-7.167969-16-16v-80c0-70.59375 57.40625-128 128-128s128 57.40625 128 128v80c0 8.832031-7.167969 16-16 16zm0 0"></path></svg>        
                            <input placeholder="Enter your Password" class="input" type="text"  name="fullname" required>
                        </div>
                        <div class="flex-column">
                            <label>Your Address </label>
                        </div>
                        <div class="inputForm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" viewBox="-64 0 512 512" height="20"><path d="m336 512h-288c-26.453125 0-48-21.523438-48-48v-224c0-26.476562 21.546875-48 48-48h288c26.453125 0 48 21.523438 48 48v224c0 26.476562-21.546875 48-48 48zm-288-288c-8.8125 0-16 7.167969-16 16v224c0 8.832031 7.1875 16 16 16h288c8.8125 0 16-7.167969 16-16v-224c0-8.832031-7.1875-16-16-16zm0 0"></path><path d="m304 224c-8.832031 0-16-7.167969-16-16v-80c0-52.929688-43.070312-96-96-96s-96 43.070312-96 96v80c0 8.832031-7.167969 16-16 16s-16-7.167969-16-16v-80c0-70.59375 57.40625-128 128-128s128 57.40625 128 128v80c0 8.832031-7.167969 16-16 16zm0 0"></path></svg>        
                            <input placeholder="Enter your Password" class="input" type="text"  name="address" required>
                        </div>
                        <div class="flex-column">
                            <label>Phone Number</label>
                        </div>
                        <div class="inputForm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" viewBox="-64 0 512 512" height="20"><path d="m336 512h-288c-26.453125 0-48-21.523438-48-48v-224c0-26.476562 21.546875-48 48-48h288c26.453125 0 48 21.523438 48 48v224c0 26.476562-21.546875 48-48 48zm-288-288c-8.8125 0-16 7.167969-16 16v224c0 8.832031 7.1875 16 16 16h288c8.8125 0 16-7.167969 16-16v-224c0-8.832031-7.1875-16-16-16zm0 0"></path><path d="m304 224c-8.832031 0-16-7.167969-16-16v-80c0-52.929688-43.070312-96-96-96s-96 43.070312-96 96v80c0 8.832031-7.167969 16-16 16s-16-7.167969-16-16v-80c0-70.59375 57.40625-128 128-128s128 57.40625 128 128v80c0 8.832031-7.167969 16-16 16zm0 0"></path></svg>        
                            <input placeholder="Enter your Password" class="input" type="text"  name="phone" required>
                        </div>
                        <div class="flex-column">
                            <label>Your Password </label>
                        </div>
                        <div class="inputForm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" viewBox="-64 0 512 512" height="20"><path d="m336 512h-288c-26.453125 0-48-21.523438-48-48v-224c0-26.476562 21.546875-48 48-48h288c26.453125 0 48 21.523438 48 48v224c0 26.476562-21.546875 48-48 48zm-288-288c-8.8125 0-16 7.167969-16 16v224c0 8.832031 7.1875 16 16 16h288c8.8125 0 16-7.167969 16-16v-224c0-8.832031-7.1875-16-16-16zm0 0"></path><path d="m304 224c-8.832031 0-16-7.167969-16-16v-80c0-52.929688-43.070312-96-96-96s-96 43.070312-96 96v80c0 8.832031-7.167969 16-16 16s-16-7.167969-16-16v-80c0-70.59375 57.40625-128 128-128s128 57.40625 128 128v80c0 8.832031-7.167969 16-16 16zm0 0"></path></svg>        
                            <input placeholder="Enter your Password" class="input" type="password" name="password" required>
                        </div>
                        <div class="flex-column">
                            <label>Rewrite Password </label>
                        </div>
                        <div class="inputForm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" viewBox="-64 0 512 512" height="20"><path d="m336 512h-288c-26.453125 0-48-21.523438-48-48v-224c0-26.476562 21.546875-48 48-48h288c26.453125 0 48 21.523438 48 48v224c0 26.476562-21.546875 48-48 48zm-288-288c-8.8125 0-16 7.167969-16 16v224c0 8.832031 7.1875 16 16 16h288c8.8125 0 16-7.167969 16-16v-224c0-8.832031-7.1875-16-16-16zm0 0"></path><path d="m304 224c-8.832031 0-16-7.167969-16-16v-80c0-52.929688-43.070312-96-96-96s-96 43.070312-96 96v80c0 8.832031-7.167969 16-16 16s-16-7.167969-16-16v-80c0-70.59375 57.40625-128 128-128s128 57.40625 128 128v80c0 8.832031-7.167969 16-16 16zm0 0"></path></svg>        
                            <input placeholder="Enter your Password" class="input" type="password"  name="password2" required>
                        </div>
                    </div>
                    <div class="btn-container">
                        <button class="btn">
                            <svg height="24" width="24" fill="#FFFFFF" viewBox="0 0 24 24" data-name="Layer 1" id="Layer_1" class="sparkle">
                                <path d="M10,21.236,6.755,14.745.264,11.5,6.755,8.255,10,1.764l3.245,6.491L19.736,11.5l-6.491,3.245ZM18,21l1.5,3L21,21l3-1.5L21,18l-1.5-3L18,18l-3,1.5ZM19.333,4.667,20.5,7l1.167-2.333L24,3.5,21.667,2.333,20.5,0,19.333,2.333,17,3.5Z"></path>
                            </svg>
                            <span class="text">Sign Up</span>
                        </button>
                        
                        <div class="login-form">
                            <span>Already have an account ?</span>
                            <a href="login">Sign In!</a>
                        </div>
                    </div>
                    <div class="show-error-msg"><p class="msg-text" style="color: red">Mật khẩu phải từ 8-20 kí tự (chữ cái thường, hoa, số, kí tự đặc biệt)!</p></div>
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
		  height: 110vh;
		}
		.container-form {
		  border: 1px solid black;
		  width: 600px;
		  height: 800px;
		  display: flex;
		  justify-content: center;
		  align-items: center;
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
		  width: 100%;
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