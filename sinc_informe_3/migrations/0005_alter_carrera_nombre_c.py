# Generated by Django 4.2.5 on 2023-11-30 07:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sinc_informe_3', '0004_alter_carrera_nombre_c'),
    ]

    operations = [
        migrations.AlterField(
            model_name='carrera',
            name='nombre_c',
            field=models.CharField(blank=True, max_length=10, null=True),
        ),
    ]
