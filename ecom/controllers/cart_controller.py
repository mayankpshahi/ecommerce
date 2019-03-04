from ecom.controllers import BaseController
from ecom.managers import CartManager
from flask import request


class CartController(BaseController):
    def post(self):
        print (request.json)
        print ("addtocart")
        resp = CartManager.add_to_cart(request.json['product_id'])
        return resp
    def get(self):
    	print ("get cart details")
    	resp = CartManager.get_cart_items()
    	return resp
    def delete(self,item_id):
        print ("delete item")
        resp = CartManager.remove_from_cart(item_id)
        return resp