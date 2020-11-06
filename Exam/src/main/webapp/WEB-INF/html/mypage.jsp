<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>마이페이지</title>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    rel="stylesheet">
  <link rel="shortcut icon" href="images/favicon.ico">
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <nav class="navigation">
    <a href="main.html">
      <a href="login"><img src="images/logo.png" alt="loginLogo"></a>
    </a>
    <input type="text" placeholder="Search">
    <div class="navigation__links">
      <a href="explore.html" class="navigation__link">
          <i class="fa fa-compass"></i>
      </a>
      <a href="#" class="navigation__link">
          <i class="fa fa-heart-o"></i>
      </a>
      <a href="Mypage.html" class="navigation__link">
          <i class="fa fa-user-o"></i>
      </a>
    </div>
  </nav>


  <main id="edit-profile">
    <div class="edit-profile__container u-default-box">
      
      <header class="edit-profile__header">
        <div class="fucker-container">
          <img src="images/avatar.jpg" />
        </div>
        <!-- master comments -->
        <h1 class="edit-profile__username">serranoarevalo</h1>
      </header>

      <form class="edit-profile__form">
        <div class="edit-profile__row">
          <label class="edit-profile__label" for="name">Name</label>
          <input id="name" type="text" value="Nicolás Serrano Arévalo">
        </div>
        <div class="edit-profile__row">
          <label class="edit-profile__label" for="username">Username</label>
          <input id="username" type="text">
        </div>
        <div class="edit-profile__row">
          <label class="edit-profile__label" for="password">Password</label>
          <input type="password" name="password" placeholder="Password" required>
        </div>
        <div class="edit-profile__row">
          <label class="edit-profile__label" for="password"></label>
          <input type="password" name="checkPassword" placeholder="Check password" required>
        </div>
        <div class="edit-profile__row">
          <label class="edit-profile__label" for="email">Email</label>
          <input id="email" type="email">
        </div>
        <div class="edit-profile__row">
          <label class="edit-profile__label" for="phone-number">Phone Number</label>
          <input id="phone-number" type="text">
        </div>
        <div class="edit-profile__row">
          <label class="edit-profile__label" for="gender">Gender</label>
          <select  id="gender">
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="cant-remember" selected>Can't remember</option>
          </select>
        </div>
        <div class="edit-profile__row">
          <label class="edit-profile__label" for="bio">Bio</label>
          <textarea id="bio"></textarea>
        </div>
        <div class="edit-profile__row">
          <span></span>
          <input type="submit">
        </div>
      </form>

    </div>
  </main>
  <footer>
    <nav class="footer__nav">
      <ul class="footer__list">
        <li class="footer__item"><a href="#" class="footer__link">About us</a></li>
        <li class="footer__item"><a href="#" class="footer__link">Support</a></li>
        <li class="footer__item"><a href="#" class="footer__link">Blog</a></li>
        <li class="footer__item"><a href="#" class="footer__link">Press</a></li>
        <li class="footer__item"><a href="#" class="footer__link">Api</a></li>
        <li class="footer__item"><a href="#" class="footer__link">Jobs</a></li>
        <li class="footer__item"><a href="#" class="footer__link">Privacy</a></li>
        <li class="footer__item"><a href="#" class="footer__link">Terms</a></li>
        <li class="footer__item"><a href="#" class="footer__link">Directory</a></li>
        <li class="footer__item"><a href="#" class="footer__link">Language</a></li>
      </ul>
    </nav>
    <span class="footer__copyright">© 2017 jejugram</span>
  </footer>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="js/app.js"></script>
</body>
</html>