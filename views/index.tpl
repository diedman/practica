% rebase('layout.tpl', title='Hamiltonov path', year=year)


<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>

 <body>
 <h1>Hamiltonov path</h1>
	<p>Hamiltonian graph is a graph supporting the Hamiltonian cycle. In this case, 
	a Hamiltonian cycle is a cycle (closed path) that passes through each vertex of this cycle exactly once; that is, 
	a simple cycle that includes all the vertices of the graph.</p>

	<h3>Enter adjacency matrix using "," as separator.</>
	<br></br>
	<form action="/Hamiltonov_path" method="post">
		<p><textarea rows="8" cols="50" name="matrix" placeholder="Your matrix"></textarea></p>
		<p><input type="submit" value="Razibat" class="btn btn-default"></p>
	</form>
 </body>
</html>