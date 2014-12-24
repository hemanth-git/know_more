<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String s = (String)request.getSession(false).getAttribute("theName") ;
if(s != null)
{%>
<link rel="stylesheet" type="text/css" href="companyprofilessheet.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="UTF-8">
  <title>Company Profiles</title>
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
<p>
<%  
	
	        out.println("Logged in as :"+s);
%> 
</p>

</div>
<div class="topmenu">
<ul>
  <li><a href="logout.jsp">Home</a></li>
  <li><a href="companyprofiles.jsp">Placement Info.</a></li>
  <li><a href="">Exam</a></li>
  
  <li><a href="accountdetails.jsp">AccountDetails</a></li>
  
  <!this is for checking if session is null or not ................................>

<%  if(s != null)
    {  %>
              <li><a href="logout.jsp">LogOut</a></li>
<% } else
   { %>
   			<li><a href="login.jsp">LogIn</a></li>
   <% } %>
  <!this is for checking if session is null or not ................................>
  
  
</ul>
</div>

</div>
<!header ends here...............................................................>
	



<div class="img">
  <a target="_top" href="placementinfo/tcsdata.jsp">
  <img src="http://edugeeks.in/wp-content/uploads/2014/03/tcsimg.jpg" alt="Klematis" width="110" height="90" />

  </a>
  <div class="desc">TCS</div>
</div>

<div class="img">
  <a target="_top" href="placementinfo/wiprodata.jsp">
  <img src="http://goo.gl/vqblI9" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">WIPRO</div>
</div>


<div class="img">
  <a target="_top" href="placementinfo/oracledata.jsp">
  <img src="http://goo.gl/yGEd7K" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">ORACLE</div>
</div>



<div class="img">
  <a target="_top" href="placementinfo/ibmdata.jsp">
  <img src="http://goo.gl/xwWt3H" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">IBM</div>
</div>

<div class="img">
  <a target="_top" href="placementinfo/persistentdata.jsp">
  <img src="http://goo.gl/UKBa8j" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">PERSISTENT</div>
</div>

<div class="img">
  <a target="_top" href="placementinfo/cognizantdata.jsp">
  <img src="http://goo.gl/33TNaK" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">COGNIZANT</div>
</div>



<div class="img">
  <a target="_top" href="placementinfo/cscdata.jsp">
  <img src="http://goo.gl/tBBXaT" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">CSC</div>
</div>


<div class="img">
  <a target="_top" href="placementinfo/accenturedata.jsp">
  <img src="http://www.mentecfoundation.org/user_images/Accenture_Mentec_partner_logo.jpg" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">ACCENTURE</div>
</div>



<div class="img">
  <a target="_top" href="placementinfo/infosysdata.jsp">
  <img src="http://goo.gl/fasIsi" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">INFOSYS</div>
</div>







<div class="img">
  <a target="_top" href="placementinfo/techmahindradata.jsp">
  <img src="http://goo.gl/XrT6XZ" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">TECH MAHINDRA</div>
</div>

<div class="img">
  <a target="_top" href="placementinfo/amazondata.jsp">
  <img src="http://goo.gl/8OVCOi" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">AMAZON</div>
</div>

<div class="img">
  <a target="_top" href="placementinfo/microsoftdata.jsp">
  <img src="http://goo.gl/6tfKmv" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">MICROSOFT</div>
</div>




<div class="img">
  <a target="_top" href="placementinfo/virtusadata.jsp">
  <img src="http://goo.gl/FkqxIj" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">VIRTUSA</div>
</div>

<div class="img">
  <a target="_top" href="placementinfo/hcldata.jsp">
  <img src="http://goo.gl/WMyVl0" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">HCL</div>
</div>

<div class="img">
  <a target="_top" href="placementinfo/infotechdata.jsp">
  <img src="http://goo.gl/OqhSy8" alt="Klematis" width="110" height="90">
  </a>
  <div class="desc">INFOTECH</div>
</div>
<%}
else
{%>
	<%response.sendRedirect("index.jsp");
}
%>
</body>
</html>