# Generated by Django 3.1.3 on 2020-11-30 02:53

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0014_auto_20201129_1716'),
    ]

    operations = [
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField()),
                ('event', models.CharField(max_length=80)),
                ('priority', models.CharField(choices=[('0', 'Sem prioridade'), ('1', 'Normal'), ('2', 'Urgente'), ('3', 'Muito Urgente')], max_length=1)),
            ],
            options={
                'ordering': ('-date', '-priority', 'event'),
            },
        ),
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('author', models.CharField(max_length=80)),
                ('email', models.EmailField(max_length=254)),
                ('text', models.CharField(max_length=160)),
                ('commented', models.DateTimeField(default=django.utils.timezone.now)),
                ('event', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='comment_event', to='app1.event')),
            ],
            options={
                'ordering': ('-commented',),
            },
        ),
    ]
