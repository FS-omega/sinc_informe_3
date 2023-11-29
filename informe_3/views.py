from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
import mysql.connector
from django.template import Template,Context
from django.template import loader
from .modelos import *
from django.http import HttpResponse


#esto de aqui hacia abajo es todo lo de la base de datos, deberiamos tirarlo aparte e importarlo, seria mas comodo

def obj_base(request):
    # Crear sus objetos de cada modulo 
        #subidas 
    
    try:
        # Itabla de carr_mod
        sql_carr_mod = "INSERT into carr_mod (carre_mod_id, modulo_id, id_carrera) VALUES (%s, %s, %s)" 
        carr_mod_val = (CarrMod.carre_mod_id, carr_mod.modulo_id, carr_mod.id_carrera)
        mycursor.execute(sql_carr_mod, carr_mod_val)

        #tabla de carrrera
        sql_carrera = "INSERT into carrera (id_carrera, nombre_c, fecha_hora, modulo_id, jornada_id, id_jefe) VALUES (%s, %s, %s, %s, %s, %s)"
        carrera_val = (carrera.id_carrera, carrera.nombre_c, carrera.fecha_hora, carrera.modulo_id, carrera.jornada_id, carrera.id_jefe)
        mycursor.execute(sql_carrera, carrera_val)

        # tabla de docente 
        sql_docente = "INSERT into docente (id_docente, d_nombre, email, jornada_id) VALUES (%s, %s, %s, %s)"
        docente_val = (docente.id_docente, docente.d_nombre, docente.email, docente.jornada_id)
        mycursor.execute(sql_docente, docente_val)

        # tabla de estado
        sql_estado = "INSERT into estado (estado_id, id_usuario, descripcion, fecha_hora) VALUES (%s, %s, %s, %s)"
        estado_val = (estado.estado_id, estado.id_usuario, estado.descripcion, estado.fecha_hora)
        mycursor.execute(sql_estado, estado_val)

        # tabla de est_mod
        sql_est_mod = "INSERT into est_mod (id_est_mod, est_id, modulo_id) VALUES (%s, %s, %s)"
        est_mod_val = (est_mod.id_est_mod, est_mod.est_id, est_mod.modulo_id)
        mycursor.execute(sql_est_mod, est_mod_val)

        #tabla de nosotros(estudiantes)
        sql_estudiante = "INSERT into estudiante (run, nombre_est, apellido) VALUES (%s, %s, %s)"
        estudiante_val = (estudiante.run, estudiante.nombre_est, estudiante.apellido)
        mycursor.execute(sql_estudiante, estudiante_val)

        # tabla del jefe_carrera
        sql_jefe_carrera = "INSERT into jefe_carrera (id_jefe, id_docente, estado_id, nombre_jefe, email, sala_id) VALUES (%s, %s, %s, %s, %s, %s)"
        jefe_carrera_val = (jefe_carrera.id_jefe, jefe_carrera.id_docente, jefe_carrera.estado_id, jefe_carrera.nombre_jefe, jefe_carrera.email, jefe_carrera.sala_id)
        mycursor.execute(sql_jefe_carrera, jefe_carrera_val)

        #tabla de jornada
        sql_jornada = "INSERT into jornada (jor_id, jor_inscrip, jor_horario, descripcion, diurna, vespertina) VALUES (%s, %s, %s, %s, %s, %s)"
        jornada_val = (jornada.jor_id, jornada.jor_inscrip, jornada.jor_horario, jornada.descripcion, jornada.diurna, jornada.vespertina)
        mycursor.execute(sql_jornada, jornada_val)

        # tabla combinada de mod_doc
        sql_mod_doc = "INSERT into mod_doc (id_mod_doc, modulo_id, id_docente) VALUES (%s, %s, %s)"
        mod_doc_val = (mod_doc.id_mod_doc, mod_doc.modulo_id, mod_doc.id_docente)
        mycursor.execute(sql_mod_doc, mod_doc_val)

        # tabla del modulo que niahi 
        sql_modulo = "INSERT into modulo (modulo_id, mod_nombre, tipo_j, fecha_hora, estado_id, id_usuario) VALUES (%s, %s, %s, %s, %s, %s)"
        modulo_val = (modulo.modulo_id, modulo.mod_nombre, modulo.tipo_j, modulo.fecha_hora, modulo.estado_id, modulo.id_usuario)
        mycursor.execute(sql_modulo, modulo_val)

        # tabla de donde no quero estar xD(sala)
        sql_sala = "INSERT into sala (sala_id, capacidad_sala, sala_tipo, id_usuario, estado_id) VALUES (%s, %s, %s, %s, %s)"
        sala_val = (sala.sala_id, sala.capacidad_sala, sala.sala_tipo, sala.id_usuario, sala.estado_id)
        mycursor.execute(sql_sala, sala_val)

        # tabla semestreee (el que me toy hechando )
        sql_semestre = "INSERT into semestre (id_semestre, sem_año, fecha_inicio, estado_id, id_usuario) VALUES (%s, %s, %s, %s, %s)"
        semestre_val = (semestre.id_semestre, semestre.sem_año, semestre.fecha_inicio, semestre.estado_id, semestre.id_usuario)
        mycursor.execute(sql_semestre, semestre_val)

        # tabla usuariooo
        sql_usuario = "INSERT into usuario (id_usuario, nombre_usuario) VALUES (%s, %s)"
        usuario_val = (usuario.id_usuario, usuario.nombre_usuario)
        mycursor.execute(sql_usuario, usuario_val)

        mydb.commit()  # Hacer commit después de todas las tablaaaas
        

    finally:
        #mydb.close()
        cargar_html = loader.get_template('informe.html')
        cargado = cargar_html.render({})
        
        return HttpResponse( cargado)
    #desde aqui sera para las plantillas y las vistas
    