% rebase('layout.tpl', title=title, length=length, year=year)

<head>
	<link rel = "shortcut icon" href="https://atom.io/favicon.ico"/>
    <h2>{{ title }} </h2>
    <h3>{{ message }}</h3>
</head>
<style>

</style>
<body>

	<br>
	<br>
	<p style="font-size: 19px">
	Select the number of vertices in the graph</p>

	<form method="post" onsubmit="return checkSubmit(this)">
	<table border="1">
	</table>
	
	<input type="number" value="{{length}}" min="3" max="8" name="CHANGE" />
	<input class="submit" type="submit" name="BTN" value="Enter" 
	style ="padding: 3px; padding-left: 10px; padding-right: 10px; color: black; background-color: white; border-radius: 8px; margin-left: 10px;" />
	
	</form>

	<script src="js/main.js"></script>

	<br>
	<br>
	

</body>

<address>
	<br>
	<br>
    <strong>Support:</strong>   <a href="mailto:sagas54@mail.ru">sagas54@mail.ru</a><br />
</address>
