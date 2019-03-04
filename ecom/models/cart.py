from ecom.datastore import db
from ecom.models import Base
from ecom.models.custom_datatypes import UUID


class Cart(Base):
    __tablename__ = 'carts'
    account_id = db.Column(
        UUID, db.ForeignKey('accounts.id'), nullable=False)
    account = db.relationship(
        'Account', backref=db.backref('carts'))
    active = db.Column(db.Boolean, default=True)

    serializable = ['id']

    def serialize(self):
        rv = super(Subscription, self).serialize()
        return rv
