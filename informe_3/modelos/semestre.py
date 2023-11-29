class semestre:
    def __init__(self ,id_semestre ,sem_año ,fecha_inicio ,estado_id ,id_usuario):
        self.id_semestre = id_semestre
        self.sem_año = sem_año
        self.fecha_inicio =fecha_inicio
        self.estado_id = estado_id
        self.id_usuario = id_usuario
        
semestre = semestre(id_semestre=1, sem_año=2023, fecha_inicio="2023-01-01", estado_id=2, id_usuario=123)
