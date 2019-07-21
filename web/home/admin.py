from django.contrib import admin

from home.models import Category, Product, Order

admin.site.site_header = "Sellam "
admin.site.site_title = "Sellam Home"


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ('product_name', 'category', 'price', 'user', 'amount_available')
    list_filter = ('price', )
    search_fields = ('product_name', )

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    search_fields = ('category_name', )

@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display = ('client_name', 'client_phone', 'payment_type', 'status', 'shipping_address')
    list_filter = ('status', 'payment_type', 'shipping_address')
