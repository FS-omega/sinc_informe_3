

# Create your views here.
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render, redirect
from formulario.models import CarrMod, Carrera, Docente, Estado, EstMod, Estudiante, JefeCarrera, Jornada, ModDoc, Sala, Semestre


@csrf_exempt
def base(request):
    if request.method == 'POST':
        # Verifica si las claves requeridas están presentes en los datos POST
        if 'id_doc' in request.POST and 'doc_nombre' in request.POST and 'email' in request.POST:
            doce = Docente(
                id_docente=request.POST["id_doc"],
                d_nombre=request.POST["doc_nombre"],
                email=request.POST["email"]
            )
            doce.save()

            return render(request, "informe_3.html", {"docente_nombre": doce.d_nombre})
        else:
            # Maneja el caso en el que faltan claves requeridas en los datos POST
            return render(request, "error.html", {"error_message": "Faltan campos obligatorios en el formulario"})
    else:
        # Maneja el caso en el que es una solicitud GET (renderiza el formulario inicial, redirige, etc.)
        return render(request, "informe_3.html")  # Reemplaza 'tu_template.html' con el nombre real de tu plantilla
    
    
    