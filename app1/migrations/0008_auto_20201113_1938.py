# Generated by Django 3.1.3 on 2020-11-13 22:38

from django.db import migrations, models
import django.db.models.manager


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0007_auto_20201109_2227'),
    ]

    operations = [
        migrations.AlterModelManagers(
            name='funcionario',
            managers=[
                ('objetos', django.db.models.manager.Manager()),
            ],
        ),
        migrations.AlterField(
            model_name='funcionario',
            name='salario',
            field=models.DecimalField(decimal_places=2, max_digits=8, null=True),
        ),
    ]