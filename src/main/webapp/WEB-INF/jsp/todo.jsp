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
 <div class="row">
  <div class="col-md-6 col-md-offset-3 ">
   <div class="panel panel-primary">
    <div class="panel-heading">Add TODO</div>
    <div class="panel-body">
     <form:form method="post" modelAttribute="todo">
      <form:hidden path="id" />
      <fieldset class="form-group">
       <form:label path="description">Description</form:label>
       <form:input path="description" type="text" class="form-control"
        required="required" />
       <form:errors path="description" cssClass="text-warning" />
      </fieldset>

      <fieldset class="form-group">
       <form:label path="targetDate">Target Date</form:label>
       <form:input path="targetDate" type="text" class="form-control"
        required="required" />
       <form:errors path="targetDate" cssClass="text-warning" />
      </fieldset>

      <button type="submit" class="btn btn-success">Save</button>
     </form:form>
    </div>
   </div>
  </div>
 </div>
</div>