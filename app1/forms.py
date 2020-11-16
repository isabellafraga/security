from django import forms
from django.contrib.auth.models import User
from app1.models import Cliente, Funcionario


class FormCliente(forms.ModelForm):
    nascimento = forms.DateField(label='Data de Nascimento', localize=True, required=True,
                                 widget=forms.DateInput(attrs={'class': 'datepicker', 'type': 'date'}))
    class Meta:
        model = Cliente
        fields = '__all__'


class FormFuncionario(forms.ModelForm):
    nascimento = forms.DateField(label='Data de Nascimento', localize=True, required=True,
                                 widget=forms.DateInput(attrs={'class': 'datepicker', 'type': 'date'}))
    class Meta:
        model = Funcionario
        fields = ('telefone', 'endereco', 'cargo', 'salario')


class InfoFun(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput(), label='Senha')
    class Meta:
        model = User
        fields = ('first_name', 'email', 'username', 'password', 'is_active')