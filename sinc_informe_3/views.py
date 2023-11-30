from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render
import mysql.connector
from django.template.loader import get_template
from .models import CarrMod, Carrera, Docente, Estado, EstMod, Estudiante, JefeCarrera, Jornada, ModDoc, Modulo, Sala, Semestre
import random
# Esto de aquí hacia abajo es todo lo de la base de datos, deberíamos separarlo e importarlo, sería más cómodo

@csrf_exempt
def base(request):
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="cft"
    )
    mycursor = mydb.cursor()
    atrib_docente = vars(docente)
    NAleatorio= random.randint(1, 10000)
    #usuario = Usuario.objects.create(nombre_usuario="EjemploUsuario")
        # Crear instancias de Modulo, Carrera
    modulo = Modulo.objects.create(modulo_id=NAleatorio, mod_nombre="N", tipo_j="Vespertina", estado_id=1)
    carrera = Carrera.objects.create(id_carrera=NAleatorio, nombre_c="Informatica",  modulo_id=54, jornada_id=24, id_jefe=142344234)

    # Crear instancia de CarrMod con las instancias creadas
    carr_mod = CarrMod.objects.create(carre_mod_id=NAleatorio, modulo_id=modulo.modulo_id, id_carrera=carrera.id_carrera)


    # Crear sus objetos de cada Modulo 
    
    docente = Docente(id_docente=NAleatorio, d_nombre="anuel", email="docentesaso@example.com", jornada_id=NAleatorio)
    
    estado = Estado(estado_id=NAleatorio, descripcion="wazaaaa")
    
    est_mod = EstMod(id_est_mod=NAleatorio, est_id=NAleatorio, modulo_id=NAleatorio)
    
    estudiante = Estudiante(est_id=NAleatorio, estado_id=NAleatorio, est_nombre="gonzalo", email="electrofunkopopprogresivo@gmailcom", modulo_id=modulo.modulo_id)
    
    jefe_carrera = JefeCarrera(id_jefe=NAleatorio, id_docente=NAleatorio, estado_id=NAleatorio, nombre_jefe="marcelo", email="mar@gmail.com", sala_id=NAleatorio)
    
    jornada = Jornada(jornada_id=NAleatorio, jor_inscrip="diurna", jor_horario="hoy", descripcion="bla bla bla", diurna=True, vespertina=False)
    
    mod_doc = ModDoc(id_mod_doc=NAleatorio, modulo_id=NAleatorio, id_docente=NAleatorio)
    
    modulo = Modulo(modulo_id=NAleatorio, mod_nombre="tec", tipo_j="vespertina", estado_id=NAleatorio)
    
    sala = Sala(sala_id=NAleatorio, capacidad_sala="capacidad de 50 estudiantes", sala_tipo="completa",  estado_id=5009)
    
    semestre = Semestre(id_semestre=NAleatorio, sem_ano=2023, fecha_inicio="2023-01-01", estado_id=NAleatorio)
    
   # usuario = Usuario(id_usuario=3, nombre_usuario="EjemploUsuario")

    # Subidas
    try:
        # Tabla de carr_mod
        sql_carr_mod = "INSERT into carr_mod (carre_mod_id, modulo_id, id_carrera) VALUES (%s, %s, %s)"
        carr_mod_val = (carr_mod.carre_mod_id, carr_mod.modulo_id, carr_mod.id_carrera)
        mycursor.execute(sql_carr_mod, carr_mod_val)
        
        # Tabla de carrera
        sql_carrera = "INSERT into carrera (id_carrera, nombre_c,  modulo_id, jornada_id, id_jefe) VALUES (%s, %s, %s, %s, %s)"
        carrera_val = (carrera.id_carrera, carrera.nombre_c,  carrera.modulo_id, carrera.jornada_id, carrera.id_jefe)
        mycursor.execute(sql_carrera, carrera_val)

        # Tabla de docente 
        sql_docente = "INSERT into docente (id_docente, d_nombre, email, jornada_id) VALUES (%s, %s, %s, %s)"
        docente_val = (docente.id_docente, docente.d_nombre, docente.email, docente.jornada_id)
        mycursor.execute(sql_docente, docente_val)

        # Tabla de estado
        sql_estado = "INSERT into estado (estado_id,  descripcion) VALUES (%s, %s)"
        estado_val = (estado.estado_id,  estado.descripcion)
        mycursor.execute(sql_estado, estado_val)

        # Tabla de est_mod
        sql_est_mod = "INSERT into est_mod (id_est_mod, est_id, modulo_id) VALUES (%s, %s, %s)"
        est_mod_val = (est_mod.id_est_mod, est_mod.est_id, est_mod.modulo_id)
        mycursor.execute(sql_est_mod, est_mod_val)

        # Tabla de estudiantes
        sql_estudiante = "INSERT into estudiante (run, nombre_est, apellido) VALUES (%s, %s, %s)"
        estudiante_val = (estudiante.run, estudiante.nombre_est, estudiante.apellido)
        mycursor.execute(sql_estudiante, estudiante_val)

        # Tabla de jefe_carrera
        sql_jefe_carrera = "INSERT into jefe_carrera (id_jefe, id_docente, estado_id, nombre_jefe, email, sala_id) VALUES (%s, %s, %s, %s, %s, %s)"
        jefe_carrera_val = (jefe_carrera.id_jefe, jefe_carrera.id_docente, jefe_carrera.estado_id, jefe_carrera.nombre_jefe, jefe_carrera.email, jefe_carrera.sala_id)
        mycursor.execute(sql_jefe_carrera, jefe_carrera_val)

        # Tabla de jornada
        sql_jornada = "INSERT into jornada (jornada_id, jor_inscrip, jor_horario, descripcion, diurna, vespertina) VALUES (%s, %s, %s, %s, %s, %s)"
        jornada_val = (jornada.jornada_id, jornada.jor_inscrip, jornada.jor_horario, jornada.descripcion, jornada.diurna, jornada.vespertina)
        mycursor.execute(sql_jornada, jornada_val)

        # Tabla de mod_doc
        sql_mod_doc = "INSERT into mod_doc (id_mod_doc, modulo_id, id_docente) VALUES (%s, %s, %s)"
        mod_doc_val = (mod_doc.id_mod_doc, mod_doc.modulo_id, mod_doc.id_docente)
        mycursor.execute(sql_mod_doc, mod_doc_val)

        # Tabla de modulo
        sql_modulo = "INSERT into modulo (modulo_id, mod_nombre, tipo_j,  estado_id) VALUES (%s, %s, %s, %s, )"
        modulo_val = (modulo.modulo_id, modulo.mod_nombre, modulo.tipo_j, modulo.estado_id)
        mycursor.execute(sql_modulo, modulo_val)

        # Tabla de sala
        sql_sala = "INSERT into sala (sala_id, capacidad_sala, sala_tipo,  estado_id) VALUES (%s, %s, %s, %s)"
        sala_val = (sala.sala_id, sala.capacidad_sala, sala.sala_tipo, sala.estado_id)
        mycursor.execute(sql_sala, sala_val)

        # Tabla de semestre
        sql_semestre = "INSERT into semestre (id_semestre, sem_ano, fecha_inicio, estado_id) VALUES (%s, %s, %s, %s)"
        semestre_val = (semestre.id_semestre, semestre.sem_ano, semestre.fecha_inicio, semestre.estado_id)
        mycursor.execute(sql_semestre, semestre_val)

        # Tabla de usuario
        #sql_usuario = "INSERT into usuario (id_usuario, nombre_usuario) VALUES (%s, %s)"
        #usuario_val = (usuario.id_usuario, usuario.nombre_usuario)
        #mycursor.execute(sql_usuario, usuario_val)

        mydb.commit()  # Hacer commit después de todas las tablas
        mydb.close()
    finally:
        docentes = docente.objects.all()
        
        return render(request, 'entregado.html', {"atributo":docentes})

# Desde aquí será para las plantillas y las vistas
@csrf_exempt
def informe(request):
    return render(request, "informe_3.html")
