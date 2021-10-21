<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
<title>Todo Management</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
 rel="stylesheet">

<style>
.footer {
 position: fixed;
 left: 0;
 bottom: 0;
 width: 100%;
 background-color: black;
 color: white;
 height: 100px;
 text-align: center;
}
</style>

</head>
<div class="container">

 <div class="panel panel-primary">
     <div class="panel-heading">Home Page</div>
        <div class="panel-body">
           Welcome ${name}!!  <a href="/list-todos">Click here</a> to manage your
           todo's.
        </div>
     </div>
 </div>