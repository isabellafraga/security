from django.urls import path
from . import views

app_name = 'app1'

urlpatterns = [
    path('login', views.loginn, name='login'),
    path('cliente', views.cliente, name='cliente'),
    path('funcionario', views.funcionario, name='funcionario'),
    path('logout', views.logoutt, name='logout'),
    path('index', views.index, name='index'),

]