from flask import current_app, render_template, make_response, session

from ecom.datastore import db,redis_store
from ecom.exceptions import ServiceUnavailableException
from ecom.models import Account

from flask import redirect, url_for
class AccountManager():
    @staticmethod
    def signup(data):
        print ("signup manager")

        account = Account()
        account.name = data.get("name")
        print (account.name)
        account.mobile = data.get("mobile")
        print (account.mobile )
        account.email = data.get("email")
        print (account.email)
        account.age = data.get("age")
        print (account.age )
        account.gender = data.get("gender")
        print (account.gender )
        account.username = data.get("username")
        print (account.username)
        account.password = data.get("psw")
        print (account.password )
        account.shipping_address = data.get("shipping_address")
        print(account.shipping_address )

        try:
            db.session.add(account)
            db.session.commit()
            print ("after commit")
        except Exception as e:
            db.session.rollback()
            print ("error")
            print (e)

            raise e
        session['name'] = account.name
        session['email'] =  account.email
        print ("reached after this")

        return redirect('/main')




    @staticmethod
    def signup_form():
        print ("signup form")
        resp = make_response(render_template('signup.html'))
        resp.headers['Content-type'] = 'text/html; charset=utf-8'
        return resp

    @staticmethod
    def login():
        print ("login manager")
        resp = make_response(render_template('login.html'))
        resp.headers['Content-type'] = 'text/html; charset=utf-8'
        return resp

    @staticmethod
    def login_form():
        print ("login form")
        resp = make_response(render_template('login.html'))
        resp.headers['Content-type'] = 'text/html; charset=utf-8'
        return resp
