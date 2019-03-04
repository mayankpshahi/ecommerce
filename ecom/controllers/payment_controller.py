from ecom.controllers import BaseController
from ecom.managers import PaymentManager
from flask import request


class PaymentController(BaseController):
    def get(self):#
    	print ("payment controller")
    	resp = PaymentManager.pay()
    	return resp
    def post(self):#charge
    	print ("charge post method")
    	print (request.form)
    	resp = PaymentManager.charge(request.form.to_dict())
    	return resp

