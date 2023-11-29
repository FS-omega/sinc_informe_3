class estado:
    def __init__(self,id_estado,id_usuario,descripcion,fecha_hora):
        self.estado_id = id_estado
        self.id_usuario = id_usuario
        self.descripcion = descripcion
        self.fecha_hora = fecha_hora
        
estado = estado(id_estado=4321, id_usuario=123, descripcion="wazaaaa", fecha_hora="2023-11-28 12:34:56")