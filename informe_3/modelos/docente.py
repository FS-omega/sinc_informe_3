class docente:
    def __init__(self,id_docente ,d_nombre,email,jornada_id):
        self.id_docente = id_docente
        self.d_nombre = d_nombre
        self.email = email
        self.jornada_id = jornada_id

docente = docente(id_docente=1, d_nombre="anuel", email="docentesaso@example.com", jornada_id=2)