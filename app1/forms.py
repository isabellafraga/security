from django import forms
from django.contrib.auth.models import User
from app1.models import Cliente, Fornecedor, Produto


class FormCliente(forms.ModelForm):
    nascimento = forms.DateField(label='Data de Nascimento', localize=True, required=True,
                                 widget=forms.DateInput(attrs={'class': 'datepicker', 'type': 'date'}))
    class Meta:
        model = Cliente
        fields = '__all__'

class FormFuncionario(forms.Form):
    CARGO_CHOICES = [
        ["-", "------"],
        ["T", "Técnico"],
        ["V", "Vendedor"],
        ["G", "Gerente"]
    ]
    first_name = forms.CharField(label='Nome')
    last_name = forms.CharField()
    email = forms.EmailField()
    username = forms.CharField()
    password = forms.CharField(widget=forms.PasswordInput(), label='Senha')
    CPF = forms.CharField()
    nascimento = forms.DateField(label='Data de Nascimento', localize=True, required=True,
                                    widget=forms.DateInput(attrs={'class': 'datepicker', 'type': 'date'}))
    telefone = forms.CharField(widget=forms.NumberInput(), label='Telefone')
    endereco = forms.CharField()
    CTPS = forms.CharField()
    cargo = forms.ChoiceField(choices=CARGO_CHOICES)

    def __str__(self):
        return self.first_name

class FormFornecedor(forms.ModelForm):

    class Meta:
        model = Fornecedor
        fields = '__all__'

    def __str__(self):
        return self.nome

class FormProduto(forms.ModelForm):

    class Meta:

        model = Produto
        fields = '__all__'

    def __str__(self):
        return self.nomep