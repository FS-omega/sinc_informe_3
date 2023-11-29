#declaracion de clases, probar clases en un solo archivo

#Carrera
class carrera :
    def __init__(self,id_carrera, nombre_c,fecha_hora,modulo_id,id_jefe,jornada_id):
        self.rut_estudiante  = id_carrera
        self.nombre_est = nombre_c
        self.fecha_hora= fecha_hora
        self.modulo_id = fecha_hora
        self.jornada_id = jornada_id      
        self.id_jefe = id_jefe
        self.usuario = id_usuario


#carrera - mod
class CarrMod:
    def __init__(self,carre_mod_id,modulo_id ,id_carrera):
        self.carre_mod_id_= carre_mod_id
        self.modulo_id= modulo_id
        self.id_carrera = id_carrera


#clase - modulo
class clas_mod:
    def __init__(self, clas_mod_id, mod_id,clas_id ):
        self.clas_mod_id = clas_mod_id
        self.mod_id = mod_id
        self.clas_id = clas_id


#clase 

class sala:
    def __init__(self, sala_id, capacidad_sala, sala_tipo, id_usuario, estado_id):
        self.sala_id = sala_id
        self.capacidad_sala = capacidad_sala
        self.sala_tipo = sala_tipo
        self.id_usuario = id_usuario
        self.estado_id = estado_id
        
        
