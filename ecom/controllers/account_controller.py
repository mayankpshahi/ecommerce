from ecom.controllers import BaseController
from ecom.managers import AccountManager
from flask import request


class SignUpController(BaseController):
    def post(self):
    	print ("signup controller")
    	print (request.json)
    	print (request.form)
    	resp = AccountManager.signup(request.form)
    	return resp
    def get(self):
    	print ("signup get")
    	resp = AccountManager.signup_form()
    	return resp

class LoginController(BaseController):
    def post(self):
    	print ("login controller")
    	resp = AccountManager.login()
    	return resp
    def get(self):
    	print ("login get")
    	resp = AccountManager.login_form()
    	return resp
