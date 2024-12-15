<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garden Centre</title>
    <!-- Link css -->
    <link rel="stylesheet" href="/frontend1/css/style.css">
    <!-- Font AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav class="nav">
        <div class="container nav-container">
            <div class="nav-left">
                <a href="" class="nav-logo">
                    <img src="<c:url value='/view/img/logo.png'/>" alt="" width="40px" height="40px">
                    
                    <h1>Garden Centre</h1>
                </a>
                <ul class="nav-list">
                    <li class="nav-item"><a href="#" class="nav-link active">Home</a></li>
                    <li class="nav-item">
                        <div class="menu-shop">
                            <div class="item-shop">
                              <a href="#" class="link-shop">
                                <span class="nav-link"> Shop </span>
                                <svg viewBox="0 0 360 360" xml:space="preserve">
                                  <g id="SVGRepo_iconCarrier">
                                    <path
                                      id="XMLID_225_"
                                      d="M325.607,79.393c-5.857-5.857-15.355-5.858-21.213,0.001l-139.39,139.393L25.607,79.393 c-5.857-5.857-15.355-5.858-21.213,0.001c-5.858,5.858-5.858,15.355,0,21.213l150.004,150c2.813,2.813,6.628,4.393,10.606,4.393 s7.794-1.581,10.606-4.394l149.996-150C331.465,94.749,331.465,85.251,325.607,79.393z"
                                    ></path>
                                  </g>
                                </svg>
                              </a>
                              <div class="submenu-shop">
                                <div class="submenu-item-shop">
                                  <a href="#" class="submenu-link-shop"> Cây trong nhà </a>
                                </div>
                                <div class="submenu-item-shop">
                                  <a href="#" class="submenu-link-shop"> Cây ngoài trời </a>
                                </div>
                                <div class="submenu-item-shop">
                                  <a href="#" class="submenu-link-shop"> Cây để bàn </a>
                                </div>
                                
                              </div>
                            </div>
                          </div>
                    </li>
                    <li class="nav-item"><a href="#" class="nav-link">About</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
                </ul>    
            </div>
            <div class="nav-right">
                <div class="nav-right-icon">
                    <i class="fa-solid fa-cart-shopping" id="btn-cart"></i>
                    <div class="action-user">
                        <div class="profile" onclick="menuToggle();" id="profile-user">
                            <img src=""<c:url value='/view/img/ntd.png'/>"" />                            
                        </div>
                        <div class="menu-user">
                          <ul>
                            <li>
                                <svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg" data-name="Layer 2"><path fill="#7D8590" d="m1.5 13v1a.5.5 0 0 0 .3379.4731 18.9718 18.9718 0 0 0 6.1621 1.0269 18.9629 18.9629 0 0 0 6.1621-1.0269.5.5 0 0 0 .3379-.4731v-1a6.5083 6.5083 0 0 0 -4.461-6.1676 3.5 3.5 0 1 0 -4.078 0 6.5083 6.5083 0 0 0 -4.461 6.1676zm4-9a2.5 2.5 0 1 1 2.5 2.5 2.5026 2.5026 0 0 1 -2.5-2.5zm2.5 3.5a5.5066 5.5066 0 0 1 5.5 5.5v.6392a18.08 18.08 0 0 1 -11 0v-.6392a5.5066 5.5066 0 0 1 5.5-5.5z"></path></svg>
                                <a href="#">My profile</a>
                            </li>
                            <li>
                                <svg width="20px" height="20px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M3 7.2C3 6.07989 3 5.51984 3.21799 5.09202C3.40973 4.71569 3.71569 4.40973 4.09202 4.21799C4.51984 4 5.0799 4 6.2 4H17.8C18.9201 4 19.4802 4 19.908 4.21799C20.2843 4.40973 20.5903 4.71569 20.782 5.09202C21 5.51984 21 6.0799 21 7.2V20L17.6757 18.3378C17.4237 18.2118 17.2977 18.1488 17.1656 18.1044C17.0484 18.065 16.9277 18.0365 16.8052 18.0193C16.6672 18 16.5263 18 16.2446 18H6.2C5.07989 18 4.51984 18 4.09202 17.782C3.71569 17.5903 3.40973 17.2843 3.21799 16.908C3 16.4802 3 15.9201 3 14.8V7.2Z" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                                <a href="#">Inbox</a>
                            </li>
                            <li>
                                <svg id="Line" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path fill="#7D8590" id="XMLID_1646_" d="m17.074 30h-2.148c-1.038 0-1.914-.811-1.994-1.846l-.125-1.635c-.687-.208-1.351-.484-1.985-.824l-1.246 1.067c-.788.677-1.98.631-2.715-.104l-1.52-1.52c-.734-.734-.78-1.927-.104-2.715l1.067-1.246c-.34-.635-.616-1.299-.824-1.985l-1.634-.125c-1.035-.079-1.846-.955-1.846-1.993v-2.148c0-1.038.811-1.914 1.846-1.994l1.635-.125c.208-.687.484-1.351.824-1.985l-1.068-1.247c-.676-.788-.631-1.98.104-2.715l1.52-1.52c.734-.734 1.927-.779 2.715-.104l1.246 1.067c.635-.34 1.299-.616 1.985-.824l.125-1.634c.08-1.034.956-1.845 1.994-1.845h2.148c1.038 0 1.914.811 1.994 1.846l.125 1.635c.687.208 1.351.484 1.985.824l1.246-1.067c.787-.676 1.98-.631 2.715.104l1.52 1.52c.734.734.78 1.927.104 2.715l-1.067 1.246c.34.635.616 1.299.824 1.985l1.634.125c1.035.079 1.846.955 1.846 1.993v2.148c0 1.038-.811 1.914-1.846 1.994l-1.635.125c-.208.687-.484 1.351-.824 1.985l1.067 1.246c.677.788.631 1.98-.104 2.715l-1.52 1.52c-.734.734-1.928.78-2.715.104l-1.246-1.067c-.635.34-1.299.616-1.985.824l-.125 1.634c-.079 1.035-.955 1.846-1.993 1.846zm-5.835-6.373c.848.53 1.768.912 2.734 1.135.426.099.739.462.772.898l.18 2.341 2.149-.001.18-2.34c.033-.437.347-.8.772-.898.967-.223 1.887-.604 2.734-1.135.371-.232.849-.197 1.181.089l1.784 1.529 1.52-1.52-1.529-1.784c-.285-.332-.321-.811-.089-1.181.53-.848.912-1.768 1.135-2.734.099-.426.462-.739.898-.772l2.341-.18h-.001v-2.148l-2.34-.18c-.437-.033-.8-.347-.898-.772-.223-.967-.604-1.887-1.135-2.734-.232-.37-.196-.849.089-1.181l1.529-1.784-1.52-1.52-1.784 1.529c-.332.286-.81.321-1.181.089-.848-.53-1.768-.912-2.734-1.135-.426-.099-.739-.462-.772-.898l-.18-2.341-2.148.001-.18 2.34c-.033.437-.347.8-.772.898-.967.223-1.887.604-2.734 1.135-.37.232-.849.197-1.181-.089l-1.785-1.529-1.52 1.52 1.529 1.784c.285.332.321.811.089 1.181-.53.848-.912 1.768-1.135 2.734-.099.426-.462.739-.898.772l-2.341.18.002 2.148 2.34.18c.437.033.8.347.898.772.223.967.604 1.887 1.135 2.734.232.37.196.849-.089 1.181l-1.529 1.784 1.52 1.52 1.784-1.529c.332-.287.813-.32 1.18-.089z"></path><path id="XMLID_1645_" fill="#7D8590" d="m16 23c-3.859 0-7-3.141-7-7s3.141-7 7-7 7 3.141 7 7-3.141 7-7 7zm0-12c-2.757 0-5 2.243-5 5s2.243 5 5 5 5-2.243 5-5-2.243-5-5-5z"></path></svg>
                                <a href="#">Setting</a>
                            </li>
                            <li>
                                <svg width="20px" height="20px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M12 19.5C16.1421 19.5 19.5 16.1421 19.5 12C19.5 7.85786 16.1421 4.5 12 4.5C7.85786 4.5 4.5 7.85786 4.5 12C4.5 16.1421 7.85786 19.5 12 19.5ZM12 21C16.9706 21 21 16.9706 21 12C21 7.02944 16.9706 3 12 3C7.02944 3 3 7.02944 3 12C3 16.9706 7.02944 21 12 21ZM12.75 15V16.5H11.25V15H12.75ZM10.5 10.4318C10.5 9.66263 11.1497 9 12 9C12.8503 9 13.5 9.66263 13.5 10.4318C13.5 10.739 13.3151 11.1031 12.9076 11.5159C12.5126 11.9161 12.0104 12.2593 11.5928 12.5292L11.25 12.7509V14.25H12.75V13.5623C13.1312 13.303 13.5828 12.9671 13.9752 12.5696C14.4818 12.0564 15 11.3296 15 10.4318C15 8.79103 13.6349 7.5 12 7.5C10.3651 7.5 9 8.79103 9 10.4318H10.5Z" fill="#080341"></path> </g></svg>
                                <a href="#">Help</a></li>
                            <li>
                                <svg width="20px" height="20px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M21 12L13 12" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M18 15L20.913 12.087V12.087C20.961 12.039 20.961 11.961 20.913 11.913V11.913L18 9" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M16 5V4.5V4.5C16 3.67157 15.3284 3 14.5 3H5C3.89543 3 3 3.89543 3 5V19C3 20.1046 3.89543 21 5 21H14.5C15.3284 21 16 20.3284 16 19.5V19.5V19" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg><a href="#">Logout</a>
                            </li>
                          </ul>
                        </div>
                    </div>
                </div>
                <div class="btn" id="btn-user-action">
                    <div class="btn-login">
                        <button class="login"><a href="#" class="text-btn">Login</a></button>
                    </div>
                    <div class="btn-signup">
                        <button class="signup"><a href="#" class="text-btn">Sign Up</a></button>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div class="container header-container">
        
        <div class="header-content">
            <div class="wrapper">
                <h1 class="header-main-title">Buy your dream plants</h1>
                <div class="header-items">
                    <div class="header-item">
                        <p class="header-item-number">50+</p>
                        <p class="header-item-text">Plant Species</p>
                    </div>
                    <div class="header-item">
                        <p class="header-item-number">100+</p>
                        <p class="header-item-text">Customers</p>
                    </div>
                </div>
                <!-- Search -->
                <form action="#" class="header-form">
                    <input type="text" class="header-form-input" placeholder="What are you looking for ?">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </form>
                <!-- End Search -->
            </div>
        </div>
    </div>
    <section class="section-2">
        <div class="banner">
            <div class="slider-content">
                <h1 data-content="Build your own Gundam">Plant the tree, plant the life</h1>
                <div class="author">
                    <p>Hàng Diễm Quỳnh</p>
                </div>
                <div class="model"></div>
            </div>
            <div class="left-s1">
                <div class="left-img-s1">
                    <div class="img-product">
                        <div class="list">
                            <div class="item">
                                <img src="<c:url value='/view/img/g1.jpg'/>" alt="">
                                
                            </div>
                            <div class="item">
                            	<img src="<c:url value='/view/img/g2.jpg'/>" alt="">
                            </div>
                            <div class="item">
                                <img src="<c:url value='/view/img/g3.jpg'/>" alt="">
                            </div>
                            <div class="item">
                                <img src="<c:url value='/view/img/g4.jpg'/>" alt="">
                            </div>
                        </div>
                        <div class="button">
                            <button id="prev"><i class="fas fa-chevron-left"></i></button>
                            <button id="next"><i class="fas fa-chevron-right"></i></button>
                        </div>
                        <ul class="dots">
                            <li class="active"></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="section-3">
        <div class="container show-container-3">
            <div class="show-item">
                <h2 class="show-h2">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                </h2>
                <p class="show-p">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur, laudantium non? Quidem autem pariatur et corporis officia voluptatibus veritatis asperiores? Quisquam ad suscipit possimus obcaecati nobis quam deleniti sapiente ex.
                </p>
                <div class="group">
                    <a href="#" class="show-btn">See more 👉</a>
                    <div class="tooltip">
                      <div class="tooltip-content">
                        <p class="tooltip-title">Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                        <p class="tooltip-description">
                          This is for sale!
                          <br />
                          Buy <b>it</b> with <b>discount</b> price.
                          <br />
                        </p>
                      </div>
                    </div>
                </div>
            </div>
            <div class="blueprint-item">
                <img src="<c:url value='/view/img/bp2-1.png'/>" alt="" class="blueprint-item-img-1">
                <img src="<c:url value='/view/img/bp2.png'/>" alt="" class="blueprint-item-img-2">
            </div>
        </div>
    </section>
    <section class="section-4">
        <div class="container show-container-4">
            <div class="blueprint-item">
                <img src="<c:url value='/view/img/bp3.jpg'/>" alt="" class="blueprint-item-img-4">
        
                <img src="<c:url value='/view/img/bp3-1.png'/>" alt="" class="blueprint-item-img-3">
            </div>
            <div class="show-item">
                <h2 class="show-h2">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                </h2>
                <p class="show-p">
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus enim dignissimos architecto aliquid blanditiis quibusdam quia nostrum asperiores dolor temporibus?                </p>
                <!-- <a href="" class="show-btn">See more 👉
                    
                </a> -->
                <div class="group">
                    <a href="#" class="show-btn btn-s4">See more 👉</a>
                    <div class="tooltip">
                      <div class="tooltip-content">
                        <p class="tooltip-title">Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                        <p class="tooltip-description">
                          This is for sale!
                          <br />
                          Buy <b>it</b> with <b>discount</b> price.
                          <br />
                        </p>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="myModal-add" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span class="close-add">&times;</span>
            <div class="shopping-cart" id="shopping-cart">
                <!-- Title -->
                <div class="title">
                Shopping Bag
                </div>
        
                <!-- Product #1 -->
                <div class="item">
                <div class="buttons">
                    <span class="delete-btn"></span>
                    <span class="like-btn"></span>
                </div>
        
                <div class="image">
                    <img src="item-1.png" alt="" />
                </div>
        
                <div class="description">
                    <span>Gundam X</span>
                </div>
        
                <div class="quantity">
                    <button class="plus-btn" type="button" name="button">
                    <i class="fa-solid fa-minus"></i>
                    </button>
                    <input type="text" name="name" value="1">
                    <button class="minus-btn" type="button" name="button">
                    <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
        
                <div class="total-price">$549</div>
                </div>
        
          </div>
          <div class="total">
            <div class="total-price-end">Total: $1789</div>
            <button class="btn-purchase">Purchase</button>
          </div>
        </div>
    </div>
    
    <style>
		    /* Import font Montserrat, Poppins, Kanit */
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Playwrite+HR+Lijeva:wght@100..400&display=swap');
		
		:root {
		  --color-primary-blue: #024CAA;
		  --color-primary-light-gray: #E4E0E1;
		  --font-primary: 'Poppins', sans-serif;
		  --font-logo: 'Kanit', sans-serif;
		  --color-dark-1 : #1E1E1E;
		  --color-dark-2 : #6d6d6d;
		}
		/* Cart Modal */
		/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  margin-left: 300px;
  padding: 20px;
  border: 1px solid #888;
  width: 75%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
.left {
  display: flex;
  justify-content: space-between;
  flex-direction: row;
  padding: 20px;
}
.left-modal{
  width: 55%;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding-left: 10px;
}
.info-product{
  display: flex;
  justify-content: center;
  flex-direction: column;
  padding: 5px;
}
.info-product span {
  font-size: 15px;
  font-weight: 500;
  color: #636e72;
}
.info-product input,.info-product select {
  width: 90%;
  height: 30px;
  border: 1px solid #dfe6e9;
  border-radius: 5px;
  padding: 5px;
  margin-top: 5px;
}
.btn-confirm-info{
  width: 100%;
  padding-top: 10px;
  display: flex;
}
.btn-confirm-info input {
  width: 90%;
  height: 30px;
  border: none;
  background-color: var(--blue);
  color: white;
  font-size: 15px;
  font-weight: 600;
  cursor: pointer;
}
/* image upload modal */
.right-modal{
  width: 45%;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding-right: 10px;
}
.upload-container {
  background-color: white;
  padding: 30px;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  text-align: center;
  max-width: fit-content;
  width: fit-content;
}

.upload-label {
  display: inline-block;
  padding: 12px 25px;
  background-color: #007BFF;
  color: white;
  font-size: 18px;
  cursor: pointer;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}

.upload-label:hover {
  background-color: #0056b3;
}

input[type="file"] {
  display: none; /* Hide the default file input */
}

.preview-container {
  margin-top: 20px;
}

#image-preview {
  max-width: 400px;

  max-height: 500px;
  border-radius: 5px;
  object-fit: cover;
}

.hidden {
  display: none;
}

		/* Cart Modal */
		.shopping-cart {
  width: 750px;
  height: 423px;
  margin: 80px auto;
  background: #FFFFFF;
  box-shadow: 1px 2px 3px 0px rgba(0,0,0,0.10);
  border-radius: 6px;


  display: flex;
  flex-direction: column;
}


.title {
  height: 60px;
  border-bottom: 1px solid #E1E8EE;
  padding: 20px 30px;
  color: #5E6977;
  font-size: 18px;
  font-weight: 400;
}


.item {
  padding: 20px 30px;
  height: 120px;
  display: flex;
}


.item:nth-child(3) {
  border-top:  1px solid #E1E8EE;
  border-bottom:  1px solid #E1E8EE;
}


/* Buttons -  Delete and Like */
.buttons {
  position: relative;
  padding-top: 30px;
  margin-right: 60px;
}


.delete-btn {
  display: inline-block;
  cursor: pointer;
  width: 18px;
  height: 17px;
  background: url("delete-icn.svg") no-repeat center;
  margin-right: 20px;
}


.like-btn {
  position: absolute;
  top: 9px;
  left: 15px;
  display: inline-block;
  background: url('twitter-heart.png');
  width: 60px;
  height: 60px;
  background-size: 2900%;
  background-repeat: no-repeat;
  cursor: pointer;
}


.is-active {
  animation-name: animate;
  animation-duration: .8s;
  animation-iteration-count: 1;
  animation-timing-function: steps(28);
  animation-fill-mode: forwards;
}


@keyframes animate {
  0%   { background-position: left;  }
  50%  { background-position: right; }
  100% { background-position: right; }
}


/* Product Image */
.image {
  margin-right: 50px;
}


/* Product Description */
.description {
  padding-top: 10px;
  margin-right: 60px;
  width: 115px;
}


.description span {
  display: block;
  font-size: 14px;
  color: #43484D;
  font-weight: 400;
}


.description span:first-child {
  margin-bottom: 5px;
}
.description span:last-child {
  font-weight: 300;
  margin-top: 8px;
  color: #86939E;
}


/* Product Quantity */
.quantity {
  padding-top: 20px;
  margin-right: 60px;
}
.quantity input {
  -webkit-appearance: none;
  border: none;
  text-align: center;
  width: 32px;
  font-size: 16px;
  color: black;
  font-weight: 300;
}


.quantity button[class*=btn] {
  width: 30px;
  height: 30px;
  background-color: #E1E8EE;
  border-radius: 6px;
  border: none;
  cursor: pointer;
}
.minus-btn img {
  margin-bottom: 3px;
}
.plus-btn img {
  margin-top: 2px;
}
.quantity button:focus,
.quantity input:focus {
  outline:0;
}


/* Total Price */
.total-price {
  width: 83px;
  padding-top: 27px;
  text-align: center;
  font-size: 16px;
  color: #43484D;
  font-weight: 300;
}


/* Responsive */
@media (max-width: 800px) {
  .shopping-cart {
    width: 100%;
    height: auto;
    overflow: hidden;
  }
  .item {
    height: auto;
    flex-wrap: wrap;
    justify-content: center;
  }
  .image img {
    width: 50%;
  }
  .image,
  .quantity,
  .description {
    width: 100%;
    text-align: center;
    margin: 6px 0;
  }
  .buttons {
    margin-right: 20px;
  }
}
.total {
  width: 100%;
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
  gap: 10px;

}
.total-price-end{
  font-size: 20px;
  font-weight: 600;
}
.btn-purchase {
  width: 100px;
  padding: 10px;
  background-color: var(--color-primary-blue);
  color: white;
  font-weight: 600;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}
		
		* { 
		  margin: 0;
		  padding: 0;
		  box-sizing: border-box;
		}
		body {
		  font-style: 16px;
		  font-family: var(--font-primary);
		}
		ul {
		  list-style: none;
		}
		a{
		  text-decoration: none;
		}
		.container { 
		  max-width: 1920px;
		  margin: 0 auto;
		  padding: 0 15px;
		}
		/* nav */
		.nav {
		  position: fixed;
		  width: 100%;
		  height: 70px;
		  background-color: var(--color-primary-light-gray);
		  box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
		  z-index: 10;
		}
		.nav-container {
		  width: 100%;
		  height: 100%;
		  display: flex;
		  justify-content: space-between;
		  align-items: center;
		}
		.nav-left {
		  display: flex;
		  align-items: center;
		}
		.nav-logo {
		  display: flex;
		  flex-direction: row;
		  align-items: center;
		
		}
		.nav-logo h1 {
		  font-family: var(--font-logo);
		  font-size: 34px;
		  color: black;
		  font-weight: 600;
		  margin-right: 200px;
		  margin-left: 10px;
		}
		.nav-list {
		  display: flex;
		  flex-direction: row;
		  justify-content: center;
		  align-items: center;
		  margin-left: 30px;
		}
		.nav-item {
		  margin: 0px 6px;
		}
		.nav-link {
		  font-family: 'Kanit', sans-serif;
		  padding: 7px 10px;
		  color: black;
		  font-weight: 500;
		  font-size: 20px;
		}
		.nav-link:hover {
		  color: #27ae60;
		}
		/* .active { 
		  color: var(--color-primary-2);
		} */
		.nav-right{
		  display: flex;
		  align-items: center;
		  justify-content: center;
		  gap: 10px;
		}
		.nav-right-icon {
		  display: flex;
		  align-items: center;
		  justify-content: space-around;
		  margin-right: 50px;
		  gap: 20px;
		}
		.btn {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  gap: 10px;
		}
		/* Profile User */
		.action-user {
		  z-index: 2;
		}
		
		.action-user .profile {
		  position: relative;
		  width: 40px;
		  height: 40px;
		  border-radius: 50%;
		  overflow: hidden;
		  cursor: pointer;
		}
		
		.action-user .profile img {
		  position: absolute;
		  top: 0;
		  left: 0;
		  width: 100%;
		  height: 100%;
		  object-fit: cover;
		}
		
		.action-user .menu-user {
		  position: absolute;
		  right: 50px;
		  padding: 10px 20px;
		  background: #fff;
		  width: 200px;
		  box-sizing: 0 5px 25px rgba(0, 0, 0, 0.1);
		  border-radius: 15px;
		  transition: 0.5s;
		  visibility: hidden;
		  opacity: 0;
		  border: 1px solid var(--color-primary-blue);
		}
		
		.action-user .menu-user.active {
		  top: 60px;
		  visibility: visible;
		  opacity: 1;
		}
		
		.action-user .menu-user::before {
		  content: "";
		  position: absolute;
		  top: -5px;
		  right: 28px;
		  width: 20px;
		  height: 20px;
		  background: #fff;
		  transform: rotate(45deg);
		}
		
		.action-user .menu-user h3 {
		  width: 100%;
		  text-align: center;
		  font-size: 18px;
		  padding: 20px 0;
		  font-weight: 500;
		  color: #555;
		  line-height: 1.5em;
		}
		
		.action-user .menu-user h3 span {
		  font-size: 14px;
		  color: #cecece;
		  font-weight: 300;
		}
		
		.action-user .menu-user ul li {
		  list-style: none;
		  padding: 16px;
		  border-top: 1px solid rgba(0, 0, 0, 0.05);
		  display: flex;
		  align-items: center;
		}
		
		.action-user .menu-user ul li svg {
		  max-width: 20px;
		  margin-right: 10px;
		  opacity: 0.5;
		  transition: 0.5s;
		}
		
		.action-user .menu-user ul li:hover img {
		  opacity: 1;
		}
		
		.action-user .menu-user ul li a {
		  display: inline-block;
		  text-decoration: none;
		  color: #555;
		  font-weight: 500;
		  transition: 0.5s;
		}
		
		.action-user .menu-user ul li:hover a {
		  color: #ff5d94;
		}
		.menu-user ul li svg {
		  width: 20px;
		}
		/*End profile user*/
		/* test */
		
		.btn button {
		  position: relative;
		  padding: 8px;
		  border-radius: 7px;
		  border: 1px solid #27ae60;
		  font-size: 12px;
		  text-transform: uppercase;
		  font-weight: 700;
		  letter-spacing: 2px;
		  background: transparent;
		  color: #fff;
		  overflow: hidden;
		  box-shadow: 0 0 0 0 transparent;
		  -webkit-transition: all 0.2s ease-in;
		  -moz-transition: all 0.2s ease-in;
		  transition: all 0.2s ease-in;
		}
		.text-btn { 
		  font-family: 'Montserrat', sans-serif;
		  color: black;
		}
		
		.btn button:hover {
		  background: #27ae60;
		  box-shadow: 0 0 30px 5px #27ae60;
		  -webkit-transition: all 0.2s ease-out;
		  -moz-transition: all 0.2s ease-out;
		  transition: all 0.2s ease-out;
		}
		
		.btn button:hover::before {
		  -webkit-animation: sh02 0.5s 0s linear;
		  -moz-animation: sh02 0.5s 0s linear;
		  animation: sh02 0.5s 0s linear;
		}
		
		.btn button::before {
		  content: '';
		  display: block;
		  width: 0px;
		  height: 86%;
		  position: absolute;
		  top: 7%;
		  left: 0%;
		  opacity: 0;
		  background: #fff;
		  box-shadow: 0 0 50px 30px #fff;
		  -webkit-transform: skewX(-20deg);
		  -moz-transform: skewX(-20deg);
		  -ms-transform: skewX(-20deg);
		  -o-transform: skewX(-20deg);
		  transform: skewX(-20deg);
		}
		
		@keyframes sh02 {
		  from {
		    opacity: 0;
		    left: 0%;
		  }
		
		  50% {
		    opacity: 1;
		  }
		
		  to {
		    opacity: 0;
		    left: 100%;
		  }
		}
		
		.btn button:active {
		  box-shadow: 0 0 0 0 transparent;
		  -webkit-transition: box-shadow 0.2s ease-in;
		  -moz-transition: box-shadow 0.2s ease-in;
		  transition: box-shadow 0.2s ease-in;
		}
		
		
		/* Dropdown shop */
		.menu-shop {
		  font-size: 16px;
		  line-height: 1.6;
		  color: #000000;
		  width: fit-content;
		  display: flex;
		  list-style: none;
		}
		
		.menu-shop a {
		  text-decoration: none;
		}
		
		.menu-shop .link-shop {
		  position: relative;
		  display: flex;
		  align-items: center;
		  justify-content: center;
		  gap: 12px;
		  padding: 12px 36px;
		  border-radius: 16px;
		  overflow: hidden;
		  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
		}
		
		.menu-shop .link-shop::after {
		  content: "";
		  position: absolute;
		  top: 0;
		  left: 0;
		  width: 100%;
		  height: 100%;
		  z-index: -1;
		  transform: scaleX(0);
		  transform-origin: left;
		  transition: transform 0.48s cubic-bezier(0.23, 1, 0.32, 1);
		}
		
		.menu-shop .link-shop svg {
		  width: 14px;
		  height: 14px;
		  fill: #000000;
		  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
		}
		
		.menu-shop .item-shop {
		  position: relative;
		}
		
		.menu-shop .item-shop .submenu-shop {
		  display: flex;
		  flex-direction: column;
		  align-items: center;
		  position: absolute;
		  top: 100%;
		  border-radius: 0 0 16px 16px;
		  left: 0;
		  width: 250px;
		  overflow: hidden;
		  border: 1px solid #cccccc;
		  opacity: 0;
		  visibility: hidden;
		  transform: translateY(-12px);
		  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
		  z-index: 1;
		  pointer-events: none;
		  list-style: none;
		}
		
		.menu-shop .item-shop:hover .submenu-shop {
		  opacity: 1;
		  visibility: visible;
		  transform: translateY(0);
		  pointer-events: auto;
		  border-top: transparent;
		  background-color: #f1f1f1;
		}
		
		.menu-shop .item-shop:hover .link-shop {
		  /* color: #ffffff; */
		  border-radius: 16px 16px 0 0;
		}
		
		.menu-shop .item-shop:hover .link-shop::after {
		  transform: scaleX(1);
		  transform-origin: right;
		}
		
		.menu-shop .item-shop:hover .link-shop svg {
		  /* fill: #ffffff; */
		  transform: rotate(-180deg);
		  fill: #27ae60;
		}
		
		.submenu-shop .submenu-item-shop {
		  width: 100%;
		  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
		}
		
		.submenu-shop .submenu-link-shop {
		  display: block;
		  padding: 12px 24px;
		  width: 100%;
		  position: relative;
		  text-align: center;
		  align-items: center;
		  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
		  text-decoration: none;
		  color: black;
		}
		
		.submenu-shop .submenu-item-shop:last-child .submenu-link-shop {
		  border-bottom: none;
		}
		
		.submenu-shop .submenu-link-shop::before {
		  content: "";
		  position: absolute;
		  top: 0;
		  left: 0;
		  transform: scaleX(0);
		  width: 100%;
		  height: 100%;
		  background-color: #27ae60;
		  z-index: -1;
		  transform-origin: left;
		  transition: transform 0.48s cubic-bezier(0.23, 1, 0.32, 1);
		}
		
		.submenu-shop .submenu-link-shop:hover:before {
		  transform: scaleX(1);
		  transform-origin: right;
		}
		
		.submenu-shop .submenu-link-shop:hover {
		  color: #ffffff;
		}
		
		
		/*End Dropdown shop */
		
		
		/*test */
		.header-container{
		  width: 100%;
		  height: 100vh;
		  background-image: url('../img/bgplant.jpg');
		  background-size: cover;
		  background-position-y: -30%;
		  border-radius: 10px;
		}
		.wrapper{
		  
		  background-color:#27ae60;
		  width: 600px;
		  height: 300px;
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  flex-direction: column;
		  border-radius: 20px;
		}
		.header-content {
		  width: 100%;
		  height: 100%;
		  display: flex;
		  justify-content: flex-start;
		  align-items: center;
		  /* grid-template-columns: repeat(autofit, minmax(300px, 1fr));
		  grid-gap: 20px; */
		  padding: 0px 50px;
		}
		.header-main-title {
		  font-size: 42px;
		  /* color: #859F3D; */
		  color: white;
		  font-weight: 800;
		  line-height: 60px;
		}
		.header-items{
		  margin-top: 15px;
		  margin-bottom: 30px;
		  display: flex;
		}
		.header-item:not(:first-child) {
		  margin-left: 30px;
		}
		.header-item-number {
		  font-size: 25px;
		  font-weight: 500;
		  color: white;
		}
		.header-form {
		  padding: 10px;
		  background-color: #f3f3f3;
		  width: 300px;
		  display: flex;
		  justify-content: space-between;
		  align-items: center;
		  border-radius: 10px;
		}
		.header-form:hover {
		  border: 1px solid var(--color-primary-blue);
		}
		.header-form-input {
		  padding: 7px 10px;
		  width: 250px;
		  outline: none;
		  border: none;
		  background-color: #f3f3f3;
		}
		.fa-magnifying-glass { 
		  padding: 10px;
		  border-radius: 10px;
		  background-color: var(--color-primary-light-gray);
		}
		.fa-magnifying-glass:hover {
		  background-color: var(--color-primary-blue);
		  color: white;
		}
		.section-2 {
		  background-color: var(--color-primary-light-gray);
		}
		/* Slider */
		.slider-content{
		  width: 100%;
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  flex-direction: column;
		}
		.slider-content h1 {
		  font-size: 40px;
		  font-family: "Kanit", cursive;
		  text-transform: uppercase;
		  color: #27ae60;
		}
		.author p {
		  font-size: 20px;
		  font-family: "Kanit", cursive;
		  text-transform: uppercase;
		  color: #27ae60;
		}
		.left-s1 {
		  width: 57%;
		  height: 100%;
		  display: flex;
		  align-items: center;
		  flex-direction: column;
		}
		.left-img-s1{
		  width: 100%;
		  height: fit-content;
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  flex-direction: row;
		}
		.img-product {
		  width: 400px;
		  height: 500px;
		  margin: 15px;
		  position: relative;
		}
		
		.list {
		  position: absolute;
		  top: 0;
		  left: 0;
		  height: 100%;
		  display: flex;
		  width: max-content;
		  transition: 1s;
		  
		}
		.list img {
		  width: 1000px;
		  height: 100%;
		  cursor: pointer;
		  object-fit: cover;
		  border-radius: 10px;
		}
		.button {
		  position: absolute;
		  top: 45%;
		  left: 5%;
		  width: 240%;
		  display: flex;
		  justify-content: space-between;
		}
		.button button {
		  width: 50px;
		  height: 50px;
		  background-color: rgba(0, 0, 0, 0.5);
		  color: white;
		  border: none;
		  cursor: pointer;
		  font-size: 20px;
		  font-weight: 600;
		  border-radius: 50%;
		}
		.dots {
		  position: absolute;
		  bottom: 10px;
		  color: #fff;
		  left: 0;
		  width: 100%;
		  margin: 0;
		  padding: 0;
		  display: flex;
		  justify-content: center;
		}
		.dots li {
		  list-style: none;
		  width: 10px;
		  height: 10px;
		  background-color: #fff;
		  margin: 20px;
		  border-radius: 20px;
		  transition: 1s;
		}
		.dots li.active {
		  width: 30px;
		}
		
		.show-img-product {
		  display: grid;
		  grid-template-columns: 200px 200px;
		  grid-template-rows: 200px 200px;
		  gap: 5px;
		}
		.show-img-product img {
		  width: 200px;
		  height: 200px;
		  object-fit: cover;
		  cursor: pointer;
		  border-radius: 10px;
		}
		/* End slider */
		/* section half */
		
		.section-half {
		  position: relative;
		  height: 50vh;
		  margin-bottom: 20px;
		  display: flex;
		  align-items: center;
		  justify-content: center;
		  flex-direction: column;
		}
		.author-introduce{
		  font-size: 40px;
		  font-family: "Kanit", cursive;
		  text-transform: uppercase;;
		}
		.creator { 
		  width: 100%;
		  display: flex;
		  justify-content: space-around;
		  flex-direction: row;
		}
		.author-creator {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  flex-direction: column;
		  cursor: pointer;
		  
		}
		.author-creator h2 {
		  font-size: 22px;
		  font-family: "Kanit", cursive;
		}
		.img-author img{
		  width: 200px;
		  height: 200px;
		  border-radius: 50%;
		}
		.group-author {
		  position: relative;
		  transition: 400ms;
		}
		.group-author:hover .tooltip {
		  opacity: 1;
		  transform: translateY(0);
		}
		.group-author:hover .tooltip-3 {
		  opacity: 1;
		  transform: translateY(0);
		}
		.creator .group-author:hover {
		  transform: scale(1.1, 1.1);
		}
		
		.creator:hover > .group-author:not(:hover) {
		  filter: blur(10px);
		  transform: scale(0.9, 0.9);
		}
		.fb-author {
		  text-decoration: none;
		  color: white;
		}
		.fb-author:hover {
		  color: var(--color-primary-blue);
		}
		
		/* end section half */
		
		/* Section 3 */
		
		.section-3,.section-4 {
		  height: 100vh;
		}
		.section-4 {
		  background-color: var(--color-primary-light-gray);
		}
		.show-container-3{
		  width: 100%;
		  height: 100%;
		  display: grid;
		  grid-template-columns: 1fr 2fr;
		}
		.show-container-4{
		  width: 100%;
		  height: 100%;
		  display: grid;
		  grid-template-columns: 2fr 1fr;
		}
		
		.show-item {
		  display: flex;
		  flex-direction: column;
		  justify-content: center;
		  align-items: center;
		  padding: 0 50px;
		}
		.show-h2 {
		  font-style: 32px;
		  font-family: "Playwrite HR Lijeva", cursive;
		}
		.show-p{
		  margin-top: 15px;
		  margin-bottom: 25px;
		}
		.btn-s4 { 
		  margin-right: 200px;
		}
		.show-btn{
		  width: fit-content;
		  display: flex;
		  padding: 12px;
		  cursor: pointer;
		  gap: 0.4rem;
		  font-weight: bold;
		  border-radius: 10px;
		  text-shadow: 2px 2px 3px rgb(136 0 136 / 50%);
		  background: linear-gradient(15deg, #880088, #aa2068, #cc3f47, #de6f3d, #f09f33, #de6f3d, #cc3f47, #aa2068, #880088) no-repeat;
		  background-size: 300%;
		  color: #fff;
		  border: none;
		  background-position: left center;
		  box-shadow: 0 30px 10px -20px rgba(0,0,0,.2);
		  transition: background .3s ease;
		}
		
		.show-btn:hover {
		  background-size: 320%;
		  background-position: right center;
		}
		
		.group {
		  position: relative;
		}
		
		.group:hover .tooltip {
		  opacity: 1;
		  transform: translateY(0);
		}
		
		.tooltip {
		  width: 290px;
		  position: absolute;
		  left: 40%;
		  transform: translateX(-50%) translateY(0.5rem);
		  opacity: 0;
		  transition: opacity 0.1s ease, transform 0.1s ease;
		  bottom: 80%;
		  margin-bottom: 0.5rem;
		}
		.tooltip-3 {
		  width: 290px;
		  position: absolute;
		  right: 40%;
		  transform: translateX(-50%) translateY(0.5rem);
		  opacity: 0;
		  transition: opacity 0.1s ease, transform 0.1s ease;
		  bottom: 80%;
		  margin-bottom: 0.5rem;
		}
		.tooltip-content {
		  background-color: #2d3748; /* Slate 800 */
		  color: white;
		  border-radius: 0.375rem; /* Rounded-lg */
		  padding: 1rem;
		  max-width: 20rem; /* Max-width-xs */
		}
		
		.tooltip-title {
		  font-weight: bold;
		  font-size: 1rem; /* text-md */
		  margin-bottom: 0.25rem;
		}
		
		.tooltip-description {
		  font-size: 0.875rem; /* text-sm */
		}
		
		
		.blueprint-item {
		  display: flex;
		  justify-content: space-around;
		  flex-direction: row;
		  align-items: center;
		}
		.blueprint-item-img {
		  width: 100%;
		}
		.blueprint-item-img-2, .blueprint-item-img-1{
		  height: 600px;
		  width: 400px; 
		  left: 320px;
		  z-index: 1;
		}
		.blueprint-item-img-3{
		  height: 600px;
		  width: 400px; 
		  left: 320px;
		  z-index: 1;
		}
		.blueprint-item-img-4{
		  height: 600px;
		  width: 500px;
		  top: 420px;
		  right: 480px;
		  z-index: 2;
		}
		/* End Section 3 */
		
		/* Section feature - p1 */
		.secion-p1 {
		  padding: 40px 80px;
		}
		/* End Section feature - p1 */
    </style>
    <script>
    function menuToggle() {
        const toggleMenu = document.querySelector(".menu-user");
        toggleMenu.classList.toggle("active");
      }
      
    
    var modal_add = document.getElementById("myModal-add");


    // Get the button that opens the modal
    var btn_add = document.getElementById("btn-cart");


    // Get the <span> element that closes the modal
    var span_add = document.getElementsByClassName("close-add")[0];


    // When the user clicks the button, open the modal 
    btn_add.onclick = function() {
        modal_add.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span_add.onclick = function() {
        modal_add.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal_add) {
            modal_add.style.display = "none";
        }
    }
    
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
	


    </script>
</body>
</html>