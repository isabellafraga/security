# Generated by Django 3.1.3 on 2020-12-04 19:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0033_auto_20201204_1233'),
    ]

    operations = [
        migrations.AlterField(
            model_name='funcionario',
            name='cargo',
            field=models.CharField(choices=[['Técnico', 'Técnico'], ['Vendedor', 'Vendedor'], ['Gerente', 'Gerente']], max_length=8, null=True),
        ),
    ]
