<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Maven + Spring MVC</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Spring 3 MVC Project</a>
        </div>
    </div>
</nav>

<div class="jumbotron">
    <div class="container">
        <h1>${title}</h1>

        <p>
            <c:if test="${not empty name}">
                Hello ${name}
            </c:if>

            <c:if test="${empty name}">
                Welcome Welcome!
            </c:if>
        </p>

        <h2>User management</h2>
    </div>
</div>

<div class="container">

    <div class="row">
        <div class="col-md-4">
            <h3>Add a new user</h3>

            <form:form method="POST" commandName="userModel" action="/users/add">
                <div class="form-group">
                    <form:label path="firstName" for="exampleInputFirstName">First Name</form:label>
                    <form:input path="firstName" type="text" class="form-control" id="exampleInputFirstName"
                                placeholder="James"/>
                </div>

                <div class="form-group">
                    <form:label path="lastName" for="exampleInputLastName">Last Name</form:label>
                    <form:input path="lastName" type="text" class="form-control" id="exampleInputLastName"
                                placeholder="Bond"/>
                </div>

                <div class="form-group">
                    <form:label path="nickName" for="exampleInputNickName">Nick Name</form:label>
                    <form:input path="nickName" type="text" class="form-control" id="exampleInputNickName"
                                placeholder="Bob"/>
                </div>

                <div class="form-group">
                    <form:label path="email" for="exampleInputEmail">Email</form:label>
                    <form:input path="email" type="text" class="form-control" id="exampleInputEmail"
                                placeholder="myemail@server.com"/>
                </div>



                <div class="form-group">
                    <form:label path="age" for="exampleSelectEdad">Age</form:label>
                    <form:select path="age" class="form-control" id="exampleSelectEdad">
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>20</option>
                        <option>21</option>
                        <option>22</option>
                        <option>23</option>
                        <option>24</option>
                    </form:select>
                </div>
                <div class="form-group">
                    <form:label path="profession" for="exampleSelectProfession">Profession</form:label>
                    <form:select path="profession" class="form-control" id="exampleSelectProfession">
                        <option>Analyst</option>
                        <option>Developer</option>
                        <option>Designer</option>
                        <option>Tester</option>
                        <option>Leader</option>
                    </form:select>
                </div>
                <form:button type="submit" class="btn btn-primary">Add</form:button>
            </form:form>
        </div>
        <div class="col-md-8">
            <h3>Existing users</h3>

            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Nick Name</th>
                    <th>Email</th>
                    <th>Age</th>
                    <th>Profession</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${users}" var="user">
                    <tr>
                        <th scope="row">1</th>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.nickName}</td>
                        <td>${user.email}</td>
                        <td>${user.age}</td>
                        <td>${user.profession}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <hr>
    <footer>
        <p>© Alex 2015</p>
    </footer>
</div>


<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


</body>
</html>