from django.contrib import admin
from django.urls import path
from modelos import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path ('informe/', informe),
    path('buscar/', buscar),
]
