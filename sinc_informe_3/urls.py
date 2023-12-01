from django.contrib import admin
from django.urls import path
from .views import  base  # Importa las funciones desde el archivo views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('base/', base),
]
