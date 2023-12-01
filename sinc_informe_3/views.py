from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render, redirect
import mysql.connector
from .models import CarrMod, Carrera, Docente, Estado, EstMod, Estudiante, JefeCarrera, Jornada, ModDoc, Modulo, Sala, Semestre
from .forms import DocenteForm

@csrf_exempt
def base(request):
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="cft"
    )
    mycursor = mydb.cursor()

    try:
        if request.method == "POST":
            form = DocenteForm(request.POST)
            if form.is_valid():
                form.save()
                return render(request, 'entregado.html', {"nombre": form.cleaned_data['d_nombre']})
        else:
            form = DocenteForm()

        mydb.commit()  # Hacer commit después de todas las tablas

    except Exception as e:
        # Manejar la excepción, puedes imprimir el error para depuración
        print(f"Error: {e}")

    finally:
        mydb.close()

    return render(request, 'entregado.html', {'form': form})

@csrf_exempt
def informe(request):
    return render(request, "informe_3.html")
