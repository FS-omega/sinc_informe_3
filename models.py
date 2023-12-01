# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models

class Bloque(models.Model):
    bloque_id = models.IntegerField(primary_key=True)

class Carrera(models.Model):
    id_carrera = models.IntegerField(primary_key=True)
    nombre_c = models.CharField(max_length=30, blank=True, null=True)
    fecha_hora = models.DateTimeField(blank=True, null=True)
    modulo_id = models.IntegerField()
    id_jefe = models.IntegerField()
    jornada_id = models.IntegerField()

class CarrMod(models.Model):
    carre_mod_id = models.IntegerField(primary_key=True)
    modulo_id = models.IntegerField()
    id_carrera = models.IntegerField()

class Dia(models.Model):
    dia_id = models.IntegerField(primary_key=True)

class DispDocente(models.Model):
    disp_doc_id = models.IntegerField(primary_key=True)
    id_docente = models.IntegerField()
    bloque_id = models.IntegerField()
    jornada_id = models.IntegerField()
    estado_id = models.IntegerField()


class Docente(models.Model):
    id_docente = models.IntegerField(primary_key=True)
    d_nombre = models.CharField(max_length=10, blank=True, null=True)
    email = models.CharField(max_length=15, blank=True, null=True)
    jornada_id = models.IntegerField(blank=True, null=True)

class Estado(models.Model):
    estado_id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=250, blank=True, null=True)
    fecha_hora = models.DateTimeField(max_length=255, blank=True, null=True)

class Estudiante(models.Model):
    est_id = models.IntegerField(primary_key=True)
    estado_id = models.IntegerField(blank=True, null=True)
    est_nombre = models.CharField(max_length=10, blank=True, null=True)
    email = models.EmailField(max_length=50, blank=True, null=True)
    modulo_id = models.IntegerField()

class EstMod(models.Model):
    id_est_mod = models.IntegerField(primary_key=True)
    est_id = models.IntegerField()
    modulo_id = models.IntegerField()

class Horario(models.Model):
    horario_id = models.IntegerField(primary_key=True)
    jornada_id = models.IntegerField()
    estado_id = models.IntegerField()
    horario_year = models.IntegerField(blank=True, null=True)
    bloque_id = models.IntegerField()
    sala_id = models.IntegerField()
    modulo_id = models.IntegerField()
    dia_id = models.IntegerField()

class JefeCarrera(models.Model):
    id_jefe = models.IntegerField(primary_key=True)
    id_docente = models.IntegerField(blank=True, null=True)
    estado_id = models.IntegerField(blank=True, null=True)
    nombre_jefe = models.CharField(max_length=10, blank=True, null=True)
    email = models.EmailField(max_length=10, blank=True, null=True)
    sala_id = models.IntegerField()

class Jornada(models.Model):
    jornada_id = models.IntegerField(primary_key=True)
    jor_inscrip = models.CharField(max_length=20, blank=True, null=True)
    jor_horario = models.CharField(max_length=10, blank=True, null=True)
    descripcion = models.CharField(max_length=255, blank=True, null=True)
    diurna = models.CharField(max_length=255, blank=True, null=True)
    vespertina = models.CharField(max_length=255, blank=True, null=True)

class ModDoc(models.Model):
    id_mod_doc = models.IntegerField(primary_key=True)
    modulo_id = models.IntegerField()
    id_docente = models.IntegerField()

class sinc_informe_3_modulo(models.Model):
    modulo_id = models.IntegerField(primary_key=True)
    mod_nombre = models.CharField(max_length=1, blank=True, null=True)
    tipo_j = models.CharField(max_length=10, blank=True, null=True)
    fecha_hora = models.IntegerField(blank=True, null=True)
    estado_id = models.IntegerField()


class Sala(models.Model):
    sala_id = models.IntegerField(primary_key=True)
    capacidad_sala = models.IntegerField(blank=True, null=True)
    sala_tipo = models.CharField(max_length=10, blank=True, null=True)
    estado_id = models.IntegerField()

class Semestre(models.Model):
    id_semestre = models.IntegerField(primary_key=True)
    sem_ano = models.IntegerField(blank=True, null=True)
    fecha_inicio = models.IntegerField(blank=True, null=True)
    estado_id = models.IntegerField()

   