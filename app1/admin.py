from django.contrib import admin
from app1.models import Cliente, Funcionario, Fornecedor

admin.site.register(Cliente)
admin.site.register(Funcionario)
admin.site.register(Fornecedor)