from django import forms
from .models import Docente

class DocenteForm(forms.ModelForm):
    class Meta:
        model = Docente
        fields = ['id_docente', 'email', 'jornada_id', 'd_nombre']