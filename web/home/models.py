from django.db import models
from django.contrib.auth.models import User

from django.shortcuts import reverse

PAYMENT_METHODS = (
    ('M', 'Mtn Mobile Money'),
    ('L', 'A la livraison')
)

SHIPING_STATUS = (
    ('HO', 'on hold'),
    ('CA', 'canceled'),
    ('CO', 'Completed')
)

SHIPING_ADDRESES = (
    ('YDE', 'YAOUNDE'),
    ('DLA', 'DOUALA'),
    ('BSA', 'BAFOUSSAM'),
    ('EBW', 'EBOLOWA'),
    ('MRA', 'MAROUA'),
    ('GRA', 'GAROUA'),
    ('BUA', 'BUEA'),
    ('BDA', 'BAMENDA'),
    ('NDR', 'NGAOUNDERE'),
    ('BTA', 'BERTOUA')
)


class Category(models.Model):
    category_name = models.CharField(max_length=250)
    category_description = models.TextField()

    def __str__(self):
        return self.category_name


class Product(models.Model):
    product_name = models.CharField(max_length=250)
    image = models.ImageField(upload_to='products')
    amount_available = models.IntegerField()
    product_description = models.TextField()
    price = models.IntegerField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return "%s - %s" % (self.product_name, self.category)

    def get_absolute_url(self):
        return reverse("home:0details", kwargs={"id": self.pk})


class Order(models.Model):
    client_name = models.CharField(max_length=250)
    client_phone = models.CharField(max_length=20)
    client_email = models.EmailField()
    shipping_address = models.CharField(choices=SHIPING_ADDRESES, max_length=20)
    payment_type = models.CharField(choices=PAYMENT_METHODS, default="L", max_length=20)
    status = models.CharField(choices=SHIPING_STATUS, default="HO", max_length=20)
    shipping_cost = models.IntegerField()
    total = models.IntegerField()
    products_list = models.ManyToManyField(Product)

    def __str__(self):
        return "%s - %s - %s" % (self.client_name, self.status, self.total)
