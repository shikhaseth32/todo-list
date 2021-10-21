<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
 rel="stylesheet">
 <nav role="navigation" class="navbar navbar-default">
 <div class="navbar-collapse">
     <ul class="nav navbar-nav">
          <li class="active"><a href="/">Home</a></li>
          <li><a href="/list-todos">Todos</a></li>
     </ul>
     <ul class="nav navbar-nav navbar-right">
         <li><a href="/logout">Logout</a></li>
     </ul>
 </div>
</nav>
<div class="container">
 <div>
  <a type="button" class="btn btn-primary btn-md" href="/add-todo">Add Todo</a>
 </div>
 <br>
 <div class="panel panel-primary">
  <div class="panel-heading">
   <h3>List of TODO's</h3>
  </div>
  <div class="panel-body">
   <table class="table table-striped">
    <thead>
     <tr>
      <th width="40%">Description</th>
      <th width="40%">Target Date</th>
      <th width="20%"></th>
     </tr>
    </thead>
    <tbody>
	<c:forEach items="${todos}" var="todo">
      <tr>
       <td>${todo.description}</td>
       <td><fmt:formatDate value="${todo.targetDate}"
         pattern="dd/MM/yyyy" /></td>
       <td><a type="button" class="btn btn-success"
        href="/update-todo?id=${todo.id}">Update</a>
       <a type="button" class="btn btn-warning"
        href="/delete-todo?id=${todo.id}">Delete</a></td>
      </tr>
     </c:forEach>
    </tbody>
   </table>
  </div>
 </div>

</div>