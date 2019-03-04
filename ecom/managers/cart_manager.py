from flask import current_app, render_template, make_response, session, redirect

from ecom.datastore import db,redis_store
from ecom.exceptions import ServiceUnavailableException
from ecom.models import Item, Cart, Account, Product


class CartManager():
    @staticmethod
    def add_to_cart(product_id):
        print ("cart manager add")
        print (product_id)
        query = Account.query.filter(Account.email == session['email'])
        account =  query.first()
        print (account.id)
        query = Product.query.filter(Product.id == product_id)
        product =  query.first()
        print (product.price)
        ####
        cart = Cart.query.filter_by(account_id=account.id, active=True).first()
        if not cart:
            cart = Cart()
        cart.account_id = account.id
        item = Item()
        item.cart = cart
        item.product_id = product_id
        item.quantity = 1
        item.price = product.price
        try:
            print ("inserrr")
            db.session.add(cart)
            db.session.add(item)
            db.session.commit()
        except Exception as e:
            print (e)
            db.session.rollback()

    @staticmethod
    def get_cart_items():
        query = Account.query.filter(Account.email == session['email'])
        account =  query.first()
        query = Cart.query.filter_by(account_id=account.id, active=True)
        cart =  query.first()
        print (cart.items)
        value = 0
        for item in cart.items:
            value += item.price

        resp = make_response(render_template('cart.html', items=cart.items, total=value))
        resp.headers['Content-type'] = 'text/html; charset=utf-8'
        return resp

    @staticmethod
    def remove_from_cart(item_id):
        print ("remove from cart")
        print (item_id)
        query = Account.query.filter(Account.email == session['email'])
        account =  query.first()
        query = Cart.query.filter_by(account_id=account.id, active=True)
        cart =  query.first()
        for item in cart.items:
            if item.id == item_id:
                db.session.delete(item)
                db.session.commit()
        return {"status":"success"}

