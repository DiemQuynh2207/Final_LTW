<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/frontend1/img/logo.png">
    <!-- Link css -->
    <link rel="stylesheet" href="/frontend1/css/shop.css">
    <script src="https://code.jquery.com/jquery-2.2.4.js" charset="utf-8"></script>
    
    <!-- Font AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav class="nav">
        <div class="container nav-container">
            <div class="nav-left">
                <a href="" class="nav-logo">
                    <img src="/frontend1/img/logo.png" alt="" width="40px" height="40px">
                    <h1>Garden Centre</h1>
                </a>
                <ul class="nav-list">
                    <li class="nav-item"><a href="#" class="nav-link active">Home</a></li>
                    <li class="nav-item">
                        <div class="menu-shop">
                            <div class="item-shop">
                              <a href="shop.html" class="link-shop">
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
                    <li class="nav-item"><a href="#" class="nav-link">
                        <div class="group">
                        <svg class="icon" aria-hidden="true" viewBox="0 0 24 24"><g><path d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z"></path></g></svg>
                        <input placeholder="Search" type="search" class="input">
                      </div>
                    </li>
                </ul>    
            </div>
            <div class="nav-right">
                <div class="nav-right-icon">
                    <i class="fa-solid fa-cart-shopping" id="btn-cart"></i>
                    <div class="action-user">
                        <div class="profile" onclick="menuToggle();">
                            <img src="/frontend1/img/ntd.png" />
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
                <div class="btn">
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
    <section class="section-1">
        <div class="header-s1">
            <div class="section-1-content">
                <h1>#stayhome</h1>
                <p>Save more with coupons & up to 50% off!</p>
            </div>
        </div>
    </section>
    <section class="section-2">
        <div class="main-content-shop" id="main-content-shop">
            <div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div>
            <div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div>
            <div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div>
            <div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div>
            <div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div>
            <div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div>
            <div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div>
            <div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div>
            <div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div><div class="card">
                <div class="card-img-content">
                    <img src="../img/s1.jpg" alt="" class="card-img">
                </div>
                <div class="card-info">
                    <p class="text-title">Product title </p>
                </div>
                <div class="card-footer">
                <span class="text-title">$499.49</span>
                <div class="card-button">
                    <svg class="svg-icon" viewBox="0 0 20 20">
                    <path d="M17.72,5.011H8.026c-0.271,0-0.49,0.219-0.49,0.489c0,0.271,0.219,0.489,0.49,0.489h8.962l-1.979,4.773H6.763L4.935,5.343C4.926,5.316,4.897,5.309,4.884,5.286c-0.011-0.024,0-0.051-0.017-0.074C4.833,5.166,4.025,4.081,2.33,3.908C2.068,3.883,1.822,4.075,1.795,4.344C1.767,4.612,1.962,4.853,2.231,4.88c1.143,0.118,1.703,0.738,1.808,0.866l1.91,5.661c0.066,0.199,0.252,0.333,0.463,0.333h8.924c0.116,0,0.22-0.053,0.308-0.128c0.027-0.023,0.042-0.048,0.063-0.076c0.026-0.034,0.063-0.058,0.08-0.099l2.384-5.75c0.062-0.151,0.046-0.323-0.045-0.458C18.036,5.092,17.883,5.011,17.72,5.011z"></path>
                    <path d="M8.251,12.386c-1.023,0-1.856,0.834-1.856,1.856s0.833,1.853,1.856,1.853c1.021,0,1.853-0.83,1.853-1.853S9.273,12.386,8.251,12.386z M8.251,15.116c-0.484,0-0.877-0.393-0.877-0.874c0-0.484,0.394-0.878,0.877-0.878c0.482,0,0.875,0.394,0.875,0.878C9.126,14.724,8.733,15.116,8.251,15.116z"></path>
                    <path d="M13.972,12.386c-1.022,0-1.855,0.834-1.855,1.856s0.833,1.853,1.855,1.853s1.854-0.83,1.854-1.853S14.994,12.386,13.972,12.386z M13.972,15.116c-0.484,0-0.878-0.393-0.878-0.874c0-0.484,0.394-0.878,0.878-0.878c0.482,0,0.875,0.394,0.875,0.878C14.847,14.724,14.454,15.116,13.972,15.116z"></path>
                    </svg>
                </div>
                </div>
            </div>
            
        </div>
        <div class="pagination">
            <a href="#">&laquo;</a>
            <a href="#">1</a>
            <a class="active" href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>
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
    justify-content: space-around;
  }
  .nav-logo {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
  }
  .nav-logo h1 {
    width: 100%;
    font-family: var(--font-logo);
    font-size: 30px;
    color: black;
    font-weight: 600;
    margin-left: 10px;
  }
  .nav-list {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    margin-left: 10px;
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
    color: #27ae60;;
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
    right: 220px;
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
    color: inherit;
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
  }
  
  .menu-shop .link-shop {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 12px;
    padding: 10px 30px;
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
  /* END HEADER */


.section-1 {
    border: 1px solid black; 
    width: 100%;
    height: 45vh;
    background-image: url("../img/bg-shop-1.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;

}
.header-s1{
    font-family: 'Poppins', sans-serif;
    color: #27ae60;
}
.header-s1 h1{
    font-size: 40px;
    font-weight: 700;
}
.header-s1 p{
    font-size: 20px;
    color: white;
    background-color: #27ae60;
}
.section-2 {
    width: 100%;
    height: auto;
    background-color: var(--color-primary-light-gray);
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    flex-direction: column;
}

/* Card Shop */
.main-content-shop {
    width: 100%;
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 20px;
    justify-items: center; /* Centers items horizontally */
    align-items: center;
}
.card {
    width: 250px;
    height: 300px;
    padding: .8em;
    background: #f5f5f5;
    position: relative;
    overflow: visible;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
    align-items: center;
    justify-content: center;
}
   
.card-img-content {
    background-color: #ffcaa6;
    height: 80%;
    width: 100%;
    border-radius: .5rem;
    transition: .3s ease;
    position: relative;
}
.card-img-content img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: .5rem;
}
   
.card-info {
    padding-top: 5px;
}
   
svg {
    width: 20px;
    height: 20px;
}
   
.card-footer {
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-top: 5px;
    border-top: 1px solid #ddd;
}
   
   /*Text*/
.text-title {
    font-weight: 500;
    font-size: 15px;
    line-height: 1.5;
}
   

   /*Button*/
.card-button {
    border: 1px solid #252525;
    display: flex;
    padding: .3em;
    cursor: pointer;
    border-radius: 50px;
    transition: .3s ease-in-out;
}
   
   /*Hover*/

.card:hover {
    width: 240px;
    height: 310px;
}

/* .card-img-content:hover {
    transform: translateY(-25%);
    box-shadow: rgba(226, 196, 63, 0.25) 0px 13px 47px -5px, rgba(180, 71, 71, 0.3) 0px 8px 16px -8px;
} */
.card-button:hover {
    border: 1px solid #ffcaa6;
    background-color: #ffcaa6;
}
   
/* End Card Shop */

/* MODAL */

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

/* Cart */


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
/* Cart */

/* search bar */ 
.group {
  display: flex;
  line-height: 28px;
  align-items: center;
  position: relative;
  width: 250px;
 }
 
 .input {
  width: 100%;
  height: 40px;
  line-height: 28px;
  padding: 0 1rem;
  padding-left: 2.5rem;
  border: 2px solid transparent;
  border-radius: 8px;
  outline: none;
  background-color: #f3f3f4;
  color: #0d0c22;
  transition: .3s ease;
 }
 
 .input::placeholder {
  color: #9e9ea7;
 }
 
 .input:focus, input:hover {
  outline: none;
  border-color: rgba(234,76,137,0.4);
  background-color: #fff;
  box-shadow: 0 0 0 4px rgb(234 76 137 / 10%);
 }
 
 .icon {
  position: absolute;
  left: 1rem;
  fill: #9e9ea7;
  width: 1rem;
  height: 1rem;
 }
 
 /* pagination */
 .pagination {
  display: inline-block;
  margin: 20px 0;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
}
 
 
 
 
	</style>
    <script>
        let sp_cart = document.getElementById('shopping-cart');

        

        // Get the modal
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
    </script>
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
</body>
</html>