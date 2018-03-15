import os
from bottle import run, route, template, static_file, error, request

@route('/')
def index():
    return template('index')

@route('/lidura')
def lidura():
    return template('lidura')

@route('/lidurb')
def lidurb():
    return template('lidurb')

@route('/new_user', method="POST")
def new_user():
    email = request.forms.email
    user = request.forms.user
    password = request.forms.password
    return template('new_user', email=email, user=user, password=password)

@route('/order')
def order():
    fullname = request.query.fullname
    pizzasize = request.query.get('pizzasize', type=int)
    skinka = request.query.skinka
    pepperoni = request.query.pepperoni
    ananas = request.query.ananas
    return template('order', fullname=fullname, pizzasize=pizzasize, skinka=skinka, pepperoni=pepperoni, ananas=ananas)

run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
