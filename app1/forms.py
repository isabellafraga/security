from django import forms
from django.contrib.auth.models import User
from .models import Cliente, Funcionario


class FormCliente(forms.ModelForm):
    date_of_birth = forms.DateField(label='Data de Nascimento', localize=True, required=True,
                                    widget=forms.DateInput(attrs={'class': 'datepicker', 'type': 'date'}))
    class Meta:
        model = Cliente
        exclude = ["nascimento"]


class FormFuncionario(forms.ModelForm):
    date_of_birth = forms.DateField(label='Data de Nascimento', localize=True, required=True,
                                    widget=forms.DateInput(attrs={'class': 'datepicker', 'type': 'date'}))
    class Meta:
        model = Funcionario
        fields = ('CPF', 'telefone', 'endereco', 'CTPS', 'salario', 'cargo')


class InfoFun(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput(), label='Senha')

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'email', 'username', 'password', 'is_active')