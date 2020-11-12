from django.db import models
from django.contrib.auth.models import User


# Create your models here.

class Cliente(models.Model):
    nome = models.CharField(max_length=100, blank=False, null=True)
    sobrenome = models.CharField(max_length=100, blank=False, null=True)
    nascimento = models.DateField(blank=False, null=True)
    email = models.EmailField(blank=False, null=True)
    CNPJ = models.CharField(max_length=14, blank=False, null=True)
    telefone = models.CharField(max_length=12, blank=False, null=True)
    endereco = models.CharField(max_length=150, blank=False, null=True)

    def __str__(self):
        return self.nome

class Funcionario(models.Model):
    CARGO_CHOICES = [
        ["T", "Técnico"],
        ["V", "Vendedor"],
        ["G", "Gerente"]
    ]
    usuario = models.OneToOneField(User, on_delete=models.CASCADE, blank=False, null=True)
    CPF = models.CharField(max_length=11, blank=False, null=True)
    nascimento = models.DateField(blank=False, null=True)
    telefone = models.CharField(max_length=12, blank=False, null=True)
    endereco = models.CharField(max_length=150, blank=False, null=True)
    CTPS = models.CharField(max_length=11, blank=False, null=True)
    salario = models.CharField(max_length=5, blank=False, null=True)
    admissao = models.DateField(auto_now=True, blank=False, null=True)
    cargo = models.CharField(max_length=1, blank=False, choices=CARGO_CHOICES, null=True)


    def __str__(self):
        return self.usuario.username