from django.contrib import admin
from django.urls import path
from .views import informe, base  # Importa las funciones desde el archivo views

urlpatterns = [
    path('admin/', admin.site.urls),
    path ('informe/', informe),
    path('base/', base),
]
