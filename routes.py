"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/Hamiltonov_path')
@view('index')
def Hamiltonov_path():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )


@route('/floyd')
@view('floyd')
def floyd():
    """Renders the contact page."""
    return dict(
        title='Floyds algorithm',
        message='here you can calculate the shortest path of your graph using floyds algorithm',
        year=datetime.now().year,
        length = 3
    )

@route('/Dijkstra')
@view('Dijkstra')
def about():
    """Renders the about page."""
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year,
        answer = ""
    )
