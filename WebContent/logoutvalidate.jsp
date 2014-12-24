<!header starts here............................................................>
<html>
<head>
 <script>
        history.forward();  /*to disable back button...*/
    </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
  <title>Know More</title>
  <meta name="description" content="Description of your site goes here">
  <meta name="keywords" content="keyword1, keyword2, keyword3">
  <link href="css/style.css" rel="stylesheet" type="text/css">
  <link href="http://dl.dropboxusercontent.com/s/z0re2ggc9o4s8g4/24work.blogspot.com-20.css" rel="stylesheet" type="text/css" /><a href="http://24work.blogspot.com/" target="_blank" title="Blogger Tricks"><img src="https://bitly.com/24workpng1" alt="Blogger Tricks" border="0" style="position: fixed; bottom: 10%; right: 0%; top: 0px;" /></a>
</head>
<body>

<div class="main-out">
<div class="main">
<div class="page">
<div class="top">
<div class="header">
<div class="header-top">

<h1><span>Know MorE</span></h1>
<p>Not Yet LoggedIn</p>
</div>
<div class="topmenu">
	<div class="marquee">
<marquee ONMOUSEOVER="this.stop();"
            ONMOUSEOUT="this.start();">You were being Logged out...!!!</marquee>
</div>
</div>

</div>
</div>
</div>


<center><%session.invalidate();%><br>
<br><a href="index.jsp">GO TO HOMEPAGE</a><br>
<br><b>Session ID: </b><%= session.getId() %>
</center>



</body>
</html>
<!-- header ends here............................................................... -->