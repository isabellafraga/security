# Generated by Django 3.1.3 on 2020-12-03 20:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0027_auto_20201203_1714'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='orcamento',
            name='produto',
        ),
        migrations.AddField(
            model_name='orcamento',
            name='produto',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app1.produto'),
        ),
    ]
