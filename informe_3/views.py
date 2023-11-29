from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
import mysql.connector

from modelos import *
@csrf_exempt
def your_view(request):
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="cft"
    )
    mycursor = mydb.cursor()

    # Create instances for each model
    carr_mod = carr_mod(14234323, 4321132, 246093423)
    carrera= carrera(id=34, nombre="informatica", fecha_creacion="hoy", capacidad=54, duracion=24, jefe_carrera_id=142344234)
    docente = docente(run=4353223, nombre="marcelo", email="marcelos.cardenas.neira@cftmail.cl", edad=24)
    estado = estado(id=4321)
    est_mod = est_mod(id=4323454, estudiante_id=5543, modulo_id=541)
    estudiante= estudiante(run=5432312, nombre_est="esteban", apellido="gonza")
    jefe_carrera = jefe_carrera(id=142344234, docente_id=4353223, estado_id=24, nombre="marcelo", email="mar@gmail.com", carrera_id=201)
    jornada = jornada(id=65, nombre="diurna", fecha_inicio="hoy", descripcion="bla bla bla")
    mod_doc = mod_doc(modulo_id=54, docente_id=63, carrera_id=4353223)
    modulo = modulo(id=90, nombre="tec", jornada="vespertina", fecha_creacion="hoy", duracion=4321)
    sala  = sala(id=201, capacidad="capacidad de 50 estudiantes", equipamiento="completa?", numero_estudiantes=5009, carrera_id=4321)
    semestre = semestre(id=67902, anio=2023, nombre="marzo-2023", duracion=4321, carrera_id=90)
    usuario = usuario(id=90, tipo="administrador")

    # Insert data into the 'estudiante' table
    sqlestudiante = "INSERT into estudiante(run, nombre_est, apellido) VALUES (%s, %s, %s)"
    estudiante_val = (estudiante.run, estudiante.nombre_est, estudiante.apellido)
    mycursor.execute(sqlestudiante, estudiante_val)
    mydb.commit()
    print("1 registro se ha ingresado, id", mycursor.lastrowid)

    sqlcarrera = "INSERT into carrera(carre_mod_id,modulo_id) VALUES (%s, %s, %s)"
    estudiante_val = (estudiante.run, estudiante.nombre_est, estudiante.apellido)
    mycursor.execute(sqlestudiante, estudiante_val)
    mydb.commit()
    print("1 registro se ha ingresado, id", mycursor.lastrowid)

    # Close the database connection
    mydb.close()

    return render(request, "your_template.html")
