# Generated by Django 3.1.2 on 2020-11-09 02:14

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('app1', '0003_auto_20201108_2305'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='funcionario',
            name='pessoa',
        ),
        migrations.AddField(
            model_name='funcionario',
            name='endereco',
            field=models.CharField(max_length=264, null=True),
        ),
        migrations.AddField(
            model_name='funcionario',
            name='telefone',
            field=models.CharField(max_length=12, null=True),
        ),
        migrations.AddField(
            model_name='funcionario',
            name='usuario',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
