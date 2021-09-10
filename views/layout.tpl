<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }}</title>
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
    <link rel="shortcut icon" href="https://atom.io/favicon.ico"/>
    <script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button> 
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/Hamiltonov_path">Hamilton path</a></li>
                    <li><a href="/Dijkstra">Dijkstra</a></li>
                    <li><a href="/floyd">Floyd</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container body-content">
        {{!base}}
        <hr />
        <footer>
            <p style="font-size: 15px; align="left">&copy; {{ year }} - Product by Dima, Gosha, Aidar</p>
        </footer>
    </div>

    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>

</body>
</html>
