# Generated by Django 3.1.2 on 2020-11-09 02:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0004_auto_20201108_2314'),
    ]

    operations = [
        migrations.RenameField(
            model_name='funcionario',
            old_name='usuario',
            new_name='perfil',
        ),
    ]