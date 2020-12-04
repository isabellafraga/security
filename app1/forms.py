from django import forms
from django.contrib.auth.models import User


from app1.models import Cliente, Fornecedor, Produto, Event, Comment, Orcamento, Metas

# Fomulario Cliente
class FormCliente(forms.ModelForm):
    nascimento = forms.DateField(label='Data de Nascimento', localize=True, required=True,
                                 widget=forms.DateInput(attrs={'class': 'datepicker', 'type': 'date'}))
    class Meta:
        model = Cliente
        fields = '__all__'

# Formulario Funcionario
class FormFuncionario(forms.Form):
    CARGO_CHOICES = [
        ["-", "------"],
        ["T", "Técnico"],
        ["V", "Vendedor"],
        ["G", "Gerente"]
    ]
    CATEGORIA_CHOICES = [
        ["-", "------"],
        ["CFTV", "CFTV"],
        ["AL", "Alarme"],
        ["CA", "Controle de Acesso"],
        ["TE", "Telefonia"],
        ["RE", "Redes"],
        ["PE", "Portão Eletrônico"],
    ]
    COMISSAO_CHOICES = [
        ["-", "------"],
        ["5%", "5%"],
        ["10%", "10%"],
        ["15%", "15%"],
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
    categoria = forms.ChoiceField(choices=CATEGORIA_CHOICES)
    comissao = forms.ChoiceField(choices=COMISSAO_CHOICES)

    def __str__(self):
        return self.first_name

# Formulario Fornecedor
class FormFornecedor(forms.ModelForm):

    class Meta:
        model = Fornecedor
        fields = '__all__'

    def __str__(self):
        return self.nome

# Formulario Produto
class FormProduto(forms.ModelForm):

    class Meta:

        model = Produto
        fields = '__all__'

    def __str__(self):
        return self.nomep

# Formulario Agenda de Serviços
class EventForm(forms.ModelForm):
    """Formulário utilizado para a inserção de novos eventos."""

    class Meta:
        model = Event
        fields = ["date", "event", "priority"]

    def __str__(self):
        return self.event


class CommentForm(forms.ModelForm):
    """Formulário usado para a inserção de comentários em um serviço."""

    class Meta:
        model = Comment
        fields = ["text", "author", "email", "event"]


class FormOrcamento(forms.ModelForm):
    CATEGORIA_CHOICES = [
        ["-", "------"],
        ["CFTV", "CFTV"],
        ["AL", "Alarme"],
        ["CA", "Controle de Acesso"],
        ["TE", "Telefonia"],
        ["RE", "Redes"],
        ["PE", "Portão Eletrônico"],
    ]
    categoria = forms.ChoiceField(choices=CATEGORIA_CHOICES)
    data = forms.DateField(label='Data', localize=True, required=True,
                                   widget=forms.DateInput(attrs={'class': 'datepicker', 'type': 'date'}))

    class Meta:

        model = Orcamento
        fields = '__all__'

    def __str__(self):
        return self.nome

# Formulario das metas
class FormMeta(forms.ModelForm):
    CARGO_CHOICES = [
        ["-", "------"],
        ["Vendedor", "Vendedor"],
        ["Técnico", "Técnico"]
    ]
    CONCLUIDA_CHOICES = [
        ["-", "------"],
        ["Sim", "Sim"],
        ["Não", "Não"]
    ]
    MESES_CHOICES = [
        ["-", "------"], ["Janeiro", "Janeiro"], ["Fevereiro", "Fevereiro"], ["Março", "Março"], ["Abril", "Abril"], ["Maio", "Maio"],
        ["Junho", "Junho"], ["Julho", "Julho"], ["Agosto", "Agosto"], ["Setembro", "Setembro"], ["Outubro", "Outrubro"],
        ["Novembro", "Novembro"], ["Dezembro", "Dezembro"]
    ]
    meses = forms.ChoiceField(choices=MESES_CHOICES)
    concluida = forms.ChoiceField(choices=CONCLUIDA_CHOICES)
    cargo = forms.ChoiceField(choices=CARGO_CHOICES)
    data = forms.DateField(label='Data', localize=True, required=True,
                                   widget=forms.DateInput(attrs={'class': 'datepicker', 'type': 'date'}))

    class Meta:

        model = Metas
        fields = '__all__'

    def __str__(self):
        return self.meta