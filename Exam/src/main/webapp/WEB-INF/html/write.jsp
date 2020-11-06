<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/modal.css">
  <link rel="stylesheet" href="css/image-upload.css">
  <style>
  </style>
</head>
<body>
	<header>
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
</header>
	<div class="container">
		<div class="box">
			<div class="bigbox">
				<div>
					<img src="images/logo.png" alt="x" class="image" >
				</div>
				<br />

				<div class="text">
					<hr class="hr" />
					사진업로드
					<hr class="hr" />
				</div>
			<form action="/images/uploadProc" method="post"
				enctype="multipart/form-data">
				<table class="table">
					<tr>
						<td><input id="input_img" type="file" name="file"
							placeholder="사진파일" multiple> </td>
					</tr>
					<tr>
						<td>
							<div class="img_wrap">
								<img id="img" />
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" name="caption" placeholder="이미지 소개"></td>
					</tr>
					<tr>
						<td><input type="text" name="location" placeholder="위치"></td>
					</tr>
					<tr>
						<td><input type="text" name="tags" placeholder="#태그"></td>
					</tr>
				</table>
				<input type="submit" value="업로드">
			</form>

			</div>
		</div>
	</div>

  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script>
    var sel_file;
    $(document).ready(function() {
      $('#input_img').on("change", handleImgFileSelect);
    });
    function handleImgFileSelect(e) {
      var files = e.target.files;
      var filesArr = Array.prototype.slice.call(files);
      filesArr.forEach(function(f) {
        if (!f.type.match("image.*")) {
          alert("확장자는 이미지 확장자만 가능합니다.");
          return;
        }
        sel_file = f;
        var reader = new FileReader();
        reader.onload = function(e) {
          $('#img').attr('src', e.target.result);
        }
        reader.readAsDataURL(f);
      });
    }
  </script>
</body>
</html>