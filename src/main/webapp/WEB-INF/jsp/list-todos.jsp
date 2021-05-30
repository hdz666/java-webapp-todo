<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>


	<div class ="container">
	
	<table class= "table table-striped">
		<caption>Your todo are</caption>
			<thead>
				<tr>
					<th>Desc</th>
					<th>Target Date</th>
					<th>is it Done?</th>
					<th>Update</th>	
					<th>Delete</th>				
				</tr>
			</thead>
			<tbody>
			<c:forEach items ="${todos}" var ="todo">
					<tr> 
						<td>${todo.desc}</td>
						<td><fmt:formatDate value ="${todo.targetDate}" pattern="dd/MM/yyyy"/>${todo.targetDate}</td>
						<td>${todo.done}</td>
						<td><a type ="button" class = "btn btn-success" href = "/update-todo?id=${todo.id}">UPDATE</a></td>
						<td><a type ="button" class = "btn btn-warning" href = "/delete-todo?id=${todo.id}">DELETE</a></td>
					</tr>
					</c:forEach>
			</tbody> 
	</table>

<p><a class="button" href = "/add-todo"> Add a todo </a></p>

<!-- java script files -->
<script src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
<script>$('#targetDate').datepicker({format : 'dd/mm/yyyy'});</script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</div>
<%@ include file="common/footer.jspf" %>
