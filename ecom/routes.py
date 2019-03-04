from ecom.api import ecom_api
from ecom.controllers import *

ecom_api.add_resource(StatusController, '/status', methods=['GET'], endpoint='status')
ecom_api.add_resource(DisplayController, '/main', methods=['GET'], endpoint='display')
ecom_api.add_resource(ProductController, '/products', methods=['GET'], endpoint='products')
ecom_api.add_resource(SignUpController, '/signup', methods=['GET','POST'], endpoint='signup')
ecom_api.add_resource(LoginController, '/login', methods=['GET','POST'], endpoint='login')
ecom_api.add_resource(CartController, '/get_cart_items', methods=['GET'], endpoint='get_cart_items')
ecom_api.add_resource(CartController, '/add_to_cart', methods=['POST'], endpoint='add_to_cart')
ecom_api.add_resource(CartController, '/remove_from_cart/<item_id>', methods=['DELETE'], endpoint='remove_from_cart')
ecom_api.add_resource(PaymentController, '/place_order', methods=['GET'], endpoint='place_order')
ecom_api.add_resource(PaymentController, '/charge', methods=['POST'], endpoint='charge')
#ecom_api.add_resource(SubscriptionsController, '/subscriptions', methods=['GET', 'POST'], endpoint='subscriptions')
