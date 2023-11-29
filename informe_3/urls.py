from django.contrib import admin
from django.urls import path
from informe_3.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path ('base/',base),
]
