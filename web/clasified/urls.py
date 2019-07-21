"""clasified URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin

from django.conf import settings
from django.urls import path, include
from django.conf.urls.static import static
from home import views

urlpatterns = [
    path('', views.index, name="home"),
    path('products', views.list, name="products_list"),
    path('details/<int:id>', views.details, name='details'),
    path('dashboard', views.dashboard, name="dashboard"),
    path('dashboard/create', views.ProductCreate.as_view(), name="create_product"),
    path('dashboard/update/<int:pk>', views.ProductUpdate.as_view(), name="update_product"),
    path('dashboard/delete/<int:pk>', views.ProductDelete.as_view(), name="delete_product"),
    path('admin/', admin.site.urls),
    path('signup/', views.signup, name='signup'),
    path('accounts/', include('django.contrib.auth.urls')),

]


if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)