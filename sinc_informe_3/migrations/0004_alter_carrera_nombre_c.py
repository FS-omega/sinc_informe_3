# Generated by Django 4.2.5 on 2023-11-30 07:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sinc_informe_3', '0003_remove_dispdocente_id_usuario_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='carrera',
            name='nombre_c',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
