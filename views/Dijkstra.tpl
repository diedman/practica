% rebase('layout.tpl', title='Dijkstras algorithm', year=year, answer = answer)
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 </head>

 <body>
 <h1>Dijkstras algorithm</h1>
	<p>Find the shortest paths from one to the other peaks</p>

	<h3>Enter adjacency matrix using "," as separator.</>
	<br></br>
	<form action="/Dijkstra" method="post">
		<p><textarea rows="8" cols="50" name="matrix" placeholder="Your matrix"></textarea></p>
		<p><textarea rows="1" cols="50" name="leength" placeholder="Matrix length"></textarea></p>
		<p><input type="submit" value="Send" class="btn btn-default"></p>
	</form>
%if answer == "There is no decision":
 <textarea class="answer" style="color: tomato">{{answer}}</textarea>
 %else:
 <textarea class="answer" style="color: green">{{answer}}</textarea>
 </body>
</html>
