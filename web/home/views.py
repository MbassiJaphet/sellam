from django.shortcuts import render, get_object_or_404

from django.http import HttpResponse
from .models import Product, Category

from django.contrib.auth.models import User

from django.views.generic import ListView, DetailView 
from django.views.generic.edit import CreateView, UpdateView, DeleteView

from django.contrib.auth.decorators import login_required
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin

from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect
from .forms import SignUpForm
def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=raw_password)
            login(user)
            return redirect('home')
    else:
        form = SignUpForm()
    return render(request, 'signup.html', {'form': form})

#@login_required

class ProductCreate(LoginRequiredMixin, CreateView):
    model = Product
    fields = [
        'product_name', 
        'image', 
        'amount_available', 
        'product_description',
        'price',
        'category'
    ]

class ProductUpdate(LoginRequiredMixin, UpdateView):
    model = Product
    fields = [
        'product_name', 
        'image', 
        'amount_available', 
        'product_description',
        'price',
        'category',
        'user'
    ]
class ProductDelete(LoginRequiredMixin, DeleteView):
    model = Product
    success_url = reverse_lazy('dashboard')

def index(request):
    products = Product.objects.all()
    categories = Category.objects.all()
    return render(request, template_name="home/index1.html", context={'products': products, 'categories': categories})


def list(request):
    products = Product.objects.all()
    categories = Category.objects.all()
    return render(request, template_name="home/product_list.html", context={'products': products, 'categories': categories})



def details(request, id):
    single_product = get_object_or_404(Product, pk=id)
    return render(request, template_name="details/single.html", context={'product': single_product})


def login(request):
    return render(request, template_name="home/login.html")

@login_required
def dashboard(request):
    products = Product.objects.filter(user=request.user.pk)
    return render(request, template_name="home/dashboard.html", context={'products': products})

