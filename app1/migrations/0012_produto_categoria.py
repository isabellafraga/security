# Generated by Django 3.1.3 on 2020-11-28 23:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0011_auto_20201128_1936'),
    ]

    operations = [
        migrations.AddField(
            model_name='produto',
            name='categoria',
            field=models.CharField(choices=[['CFTV', 'CFTV'], ['AL', 'Alarme'], ['CA', 'Controle de Acesso'], ['TE', 'Telefonia'], ['RE', 'Redes'], ['PE', 'Portão Eletrônico']], max_length=6, null=True),
        ),
    ]
