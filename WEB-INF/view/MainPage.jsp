<%-- 
    Document   : MainPage
    Created on : Apr 10, 2024, 5:01:14 PM
    Author     : deean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Main Page</title>
    <style>
       :root {
  --crsl-bg: transparent;
  --box-bg: #1e272e;
  --box-shadow: #0000001c;
  --box-shadow-border: #0000000f;
  --box-border: #fff;
}

html, body {
  padding: 0;
  margin: 0;
  width: 100%;
  height: 100%;
  background: rgb(47,53,57);
  background: -moz-radial-gradient(circle, rgba(47,53,57,1) 0%, rgba(30,39,46,1) 100%);
  background: -webkit-radial-gradient(circle, rgba(47,53,57,1) 0%, rgba(30,39,46,1) 100%);
  background: radial-gradient(circle, rgba(47,53,57,1) 0%, rgba(30,39,46,1) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#2f3539",endColorstr="#1e272e",GradientType=1);
  font-family: 'Source Sans Pro', sans-serif;
}

p {
  font-size: .95em;
  font-weight: bold;
  position: absolute;
  top: 7.5%;
  width: 100%;
  letter-spacing: 4px;
  text-transform: uppercase;
  text-align: center;
  color: white;
  user-select: none;    
}

.carousel {
  position: relative;
  display: block;
  width: 100%;
  box-sizing: border-box;
}

.carousel__prev,
.carousel__next {
  position: absolute;
  bottom: -15%;
  transition: transform 0.25s ease;
}

.carousel__prev i,
.carousel__next i {
  font-size: 60px;
  color: var(--box-border);
  cursor: pointer;
}

.carousel__prev:hover,
.carousel__next:hover { 
  transform: scale(1.25); 
}  

.carousel__prev { left: 40%; }
.carousel__next { right: 40%; } 



.carousel__body {
  width: 100%;
  padding: 200px 0 70px 0; /* Increased bottom padding */
  overflow: hidden;
}

.carousel__slider {
  position: relative;
  transition: transform 1s ease-in-out;
  background: var(--crsl-bg);
}

.carousel__slider__item {
    position: relative;
    display: block;
    float: left;
    box-sizing: border-box;
    margin-left: 20px;
    margin-right: 20px;
    background-size: cover; /* Added */
    background-position: center; /* Added */
    width: 100%;
    height: 100%;
}


.item__3d-frame {
  position: relative;
  width: 100%;
  height: 100%;
  transition: transform 1s ease-in-out;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
}

.item__3d-frame:after {
  content: '';
  position: absolute;
  bottom: -15%;
  width: 100%;
  height: 40px;
  background: var(--box-shadow);
  box-shadow: 0px 0px 5px 5px var(--box-shadow);
  transform: rotateX(90deg) translate3d(0px, -20px, 0px);
  opacity: 0.85;
}

.item__3d-frame__box {
  display: flex;
  align-items: center;
  vertical-align: middle;
  text-align: center;
  position: absolute;
  width: 100%;
  height: 100%;
  box-sizing: border-box;
  border-color: var(--box-border);
  background: var(--box-bg);            
  border-width: 3px;
  border-style: solid;
}

.item__3d-frame__box h1 {
  font-size: 3em;
  width: 100%;
  color: black;
  position: absolute;
}

.item__3d-frame__box--right,
.item__3d-frame__box--left {
  top: 0;
  width: 40px;
  backface-visibility: hidden;
}

.item__3d-frame__box--left {
  left: 0;
  border-left-width: 5px;
  transform: translate3d(1px, 0, -40px) rotateY(-90deg);
  transform-origin: 0%;
}

.item__3d-frame__box--right {
  right: 0;
  border-right-width: 5px;
  transform: translate3d(-1px, 0, -40px) rotateY(90deg);
  transform-origin: 100%;
}

.carousel__btn {
  position: absolute;
  bottom: 35%;
  width: 60px;
  height: 60px;
  background-color: rgba(255, 255, 255, 0.5);
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 24px;
}

.carousel__btn--left {
    left: 5%; /* Adjust as needed */
}

.carousel__btn--right {
    right: 5%; /* Adjust as needed */
}


.carousel__btn:hover {
  background-color: rgba(255, 255, 255, 0.7);
}
    </style>
</head>
<body>
    <p>Midterm Projects</p>
    <div class="carousel">
      <div class="carousel__body">
          <div class="carousel__prev">
              <i class="far fa-angle-left"></i>
          </div>
          <div class="carousel__next">
              <i class="far fa-angle-right"></i>
          </div>
          
          <div class="carousel__slider">
              <div class="carousel__slider__item">
                  <div class="item__3d-frame">
                      <div class="item__3d-frame__box item__3d-frame__box--front">
                          <h1><a href="https://amazon2371.github.io/AboutMe/">About Mark</a></h1>
                          <img src="https://i.pinimg.com/564x/e6/aa/2a/e6aa2aa702f04d86a700ecdadc1c1660.jpg" width="100%" height="100%">
                      </div>
                      <div class="item__3d-frame__box item__3d-frame__box--left"></div>
                      <div class="item__3d-frame__box item__3d-frame__box--right"></div>
                  </div>
              </div>
              <div class="carousel__slider__item">
                  <div class="item__3d-frame">
                      <div class="item__3d-frame__box item__3d-frame__box--front">
                          <h1><a href="LunarCalculator">Lunar Calculator</a></h1>
                          <img src="https://i.pinimg.com/564x/ba/93/d7/ba93d78da7b5cba8da526738d82448e5.jpg" width="100%" height="100%">
                      </div>
                      <div class="item__3d-frame__box item__3d-frame__box--left"></div>
                      <div class="item__3d-frame__box item__3d-frame__box--right"></div>
                  </div>
              </div>
              <div class="carousel__slider__item">
                  <div class="item__3d-frame">
                      <div class="item__3d-frame__box item__3d-frame__box--front">
                          <h1><a href="StudentGrades">Student Grades</a></h1>
                          <img src="https://i.pinimg.com/564x/a5/aa/d4/a5aad4d0ee123297381b328ebb22f2d1.jpg" width="100%" height="100%">
                      </div>
                      <div class="item__3d-frame__box item__3d-frame__box--left"></div>
                      <div class="item__3d-frame__box item__3d-frame__box--right"></div>
                  </div>
              </div>
              <div class="carousel__slider__item">
                  <div class="item__3d-frame">
                      <div class="item__3d-frame__box item__3d-frame__box--front">
                          <h1><a href="Triangle">Triangle</a></h1>
                          <img src="https://i.pinimg.com/564x/98/ee/00/98ee0062e7856a3f81a866d4e12a491a.jpg" width="100%" height="100%">
                      </div>
                      <div class="item__3d-frame__box item__3d-frame__box--left"></div>
                      <div class="item__3d-frame__box item__3d-frame__box--right"></div>
                  </div>
              </div>
              <div class="carousel__slider__item">
                  <div class="item__3d-frame">
                      <div class="item__3d-frame__box item__3d-frame__box--front">
                          <h1><a href=" https://amazon2371.github.io/AboutMeJZ/">About Jayzee</a></h1>
                          <img src="https://i.pinimg.com/736x/8e/07/11/8e071195622602190899c152426ba63a.jpg" width="100%" height="100%">
                      </div>
                      <div class="item__3d-frame__box item__3d-frame__box--left"></div>
                      <div class="item__3d-frame__box item__3d-frame__box--right"></div>
                  </div>
              </div>
              <div class="carousel__slider__item">
                  <div class="item__3d-frame">
                      <div class="item__3d-frame__box item__3d-frame__box--front">
                          <h1><a href="Buttons">Buttons</a></h1>
                          <img src="https://i.pinimg.com/564x/c8/5f/6f/c85f6f13d776326739862b2ccaefcc08.jpg" width="100%" height="100%">
                      </div>
                      <div class="item__3d-frame__box item__3d-frame__box--left"></div>
                      <div class="item__3d-frame__box item__3d-frame__box--right"></div>
                  </div>
              </div>
          </div>
          <div class="carousel__btn carousel__btn--left"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
            <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5 8.25 12l7.5-7.5" />
          </svg>
          </div>
          <div class="carousel__btn carousel__btn--right"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
            <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
          </svg>
          </div>
      </div>
  </div>

  <script>
      (function() {
          "use strict";

          var carousel = document.getElementsByClassName('carousel')[0],
              slider = carousel.getElementsByClassName('carousel__slider')[0],
              items = carousel.getElementsByClassName('carousel__slider__item'),
              prevBtn = carousel.getElementsByClassName('carousel__prev')[0],
              nextBtn = carousel.getElementsByClassName('carousel__next')[0],
              leftBtn = carousel.getElementsByClassName('carousel__btn--left')[0],
              rightBtn = carousel.getElementsByClassName('carousel__btn--right')[0];

          var width, height, totalWidth, margin = 20,
              currIndex = 0,
              interval, intervalTime = 4000;

          function init() {
              resize();
              move(Math.floor(items.length / 2));
              bindEvents();

              timer();
          }

          function resize() {
              width = Math.max(window.innerWidth * .25, 275),
              height = window.innerHeight * .5,
              totalWidth = width * items.length;

              slider.style.width = totalWidth + "px";

              for(var i = 0; i < items.length; i++) {
                  let item = items[i];
                  item.style.width = (width - (margin * 2)) + "px";
                  item.style.height = height + "px";
              }
          }

          function move(index) {

              if(index < 1) index = items.length;
              if(index > items.length) index = 1;
              currIndex = index;

              for(var i = 0; i < items.length; i++) {
                  let item = items[i],
                      box = item.getElementsByClassName('item__3d-frame')[0];
                  if(i == (index - 1)) {
                      item.classList.add('carousel__slider__item--active');
                      box.style.transform = "perspective(1200px)";
                  } else {
                      item.classList.remove('carousel__slider__item--active');
                      box.style.transform = "perspective(1200px) rotateY(" + (i < (index - 1) ? 40 : -40) + "deg)";
                  }
              }

              slider.style.transform = "translate3d(" + ((index * -width) + (width / 2) + window.innerWidth / 2) + "px, 0, 0)";
          }

          function timer() {
              clearInterval(interval);
              interval = setInterval(() => {
                  move(++currIndex);
              }, intervalTime);
          }

          function prev() {
              move(--currIndex);
              timer();
          }

          function next() {
              move(++currIndex);
              timer();
          }

          function bindEvents() {
              window.onresize = resize;
              prevBtn.addEventListener('click', () => { prev(); });
              nextBtn.addEventListener('click', () => { next(); });
              leftBtn.addEventListener('click', () => { prev(); });
              rightBtn.addEventListener('click', () => { next(); });
          }

          init();
      })();
  </script>
</body>
</html>
