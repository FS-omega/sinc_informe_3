from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
import mysql.connector   #?

from .informe3.modelos import *    #?
@csrf_exempt
def base(request):
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="cft"
    )
    mycursor = mydb.cursor()

    # Crear instancias para cada modelo
    carr_mod = CarrMod(carre_mod_id=14234323, modulo_id=4321132, id_carrera=246093423)
    carrera = Carrera(id_carrera=34, nombre_c="informatica", fecha_hora="hoy", modulo_id=54, jornada_id=24, id_jefe=142344234)
    docente_instance = Docente(id_docente=1, d_nombre="anuel", email="docentesaso@example.com", jornada_id=2)
    estado = Estado(id_estado=4321, id_usuario=123, descripcion="wazaaaa", fecha_hora="2023-11-28 12:34:56")
    est_mod = EstMod(id_est_mod=4323454, est_id=5543, modulo_id=541)
    estudiante = Estudiante(run=5432312, nombre_est="esteban", apellido="gonza")
    jefe_carrera_ = JefeCarrera(id_jefe=142344234, id_docente=4353223, estado_id=24, nombre_jefe="marcelo", email="mar@gmail.com", sala_id=201)
    jornada = Jornada(jornada_id=65, jor_inscrip="diurna", jor_horario="hoy", descripcion="bla bla bla", diurna=True, vespertina=False)
    mod_doc = ModDoc(id_mod_doc=1, modulo_id=54, id_docente=63)
    modulo = Modulo(modulo_id=90, mod_nombre="tec", tipo_j="vespertina", fecha_hora="hoy", estado_id=4321, id_usuario=1)
    sala = Sala(sala_id=201, capacidad_sala="capacidad de 50 estudiantes", sala_tipo="completa", id_usuario=34, estado_id=5009)
    semestre = Semestre(id_semestre=1, sem_año=2023, fecha_inicio="2023-01-01", estado_id=2, id_usuario=123)
    usuario = Usuario(id_usuario=1, nombre_usuario="EjemploUsuario")

   
        #subidas 
    try:
        # Itabla de carr_mod
        sql_carr_mod = "INSERT into carr_mod (carre_mod_id, modulo_id, id_carrera) VALUES (%s, %s, %s)"
        carr_mod_val = (carr_mod.carre_mod_id, carr_mod.modulo_id, carr_mod.id_carrera)
        mycursor.execute(sql_carr_mod, carr_mod_val)

        #tabla de carrrera
        sql_carrera = "INSERT into carrera (id_carrera, nombre_c, fecha_hora, modulo_id, jornada_id, id_jefe) VALUES (%s, %s, %s, %s, %s, %s)"
        carrera_val = (carrera.id_carrera, carrera.nombre_c, carrera.fecha_hora, carrera.modulo_id, carrera.jornada_id, carrera.id_jefe)
        mycursor.execute(sql_carrera, carrera_val)

        # tabla de docente 
        sql_docente = "INSERT into docente (id_docente, d_nombre, email, jornada_id) VALUES (%s, %s, %s, %s)"
        docente_val = (docente_instance.id_docente, docente_instance.d_nombre, docente_instance.email, docente_instance.jornada_id)
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
        jefe_carrera_val = (jefe_carrera_.id_jefe, jefe_carrera_.id_docente, jefe_carrera_.estado_id, jefe_carrera_.nombre_jefe, jefe_carrera_.email, jefe_carrera_.sala_id)
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
        mydb.close()
        return render(request, "./Templates/informe_3.html")