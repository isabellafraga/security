from django.contrib.auth.models import User
from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse
from app1.forms import FormCliente, FormFuncionario, FormFornecedor
from django.urls import reverse_lazy
from django.views.generic import TemplateView, ListView, UpdateView, CreateView, DeleteView
from app1.models import Funcionario, Cliente, Fornecedor


def index(request):
    return render(request, 'app3/index.html')

def manutencao(request):
    return render(request, 'app3/manutencao.html')

def loginn(request):
    if request.method == 'POST':
        usuario = request.POST.get('usuario')
        senha = request.POST.get('senha')
        user = authenticate(username=usuario, password=senha)

        if user:
            if user.is_active:
                login(request, user)
                return HttpResponseRedirect(reverse('app1:index'))
            else:
                return HttpResponse("Sua Conta Não Esta Ativa.")
        else:
            print("Alguém Tentou Fazer Login e Falhou")
            print("Foi Usado userName: {} e senha: {}".format(usuario, senha))
            return HttpResponse("O Login ou Senha Está Incorreto.")

    else:
        return render(request, 'app3/login.html', {})

@login_required
def logoutt(request):
    logout(request)
    return HttpResponseRedirect(reverse('login'))

def funcionario(request):
    if request.method == 'POST':

        form = FormFuncionario(data=request.POST)
        usuario = User()
        usuario.first_name = form.cleaned_data['nome']
        usuario.last_name = form.cleaned_data['sobrenome']
        usuario.email = form.cleaned_data['email']
        usuario.username = form.cleaned_data['usuario']
        usuario.password = form.cleaned_data['senha']
        usuario.is_active = True

        usuario_salvo = usuario.save(commit=False)
        usuario_salvo.set_password(usuario_salvo.password)
        usuario_salvo.save()

        func = Funcionario()
        func.CPF = form.cleaned_data['cpf']
        func.nascimento = form.cleaned_data['nascimento']
        func.telefone = form.cleaned_data['telefone']
        func.endereco = form.cleaned_data['endereco']
        func.CTPS = form.cleaned_data['ctps']
        func.salario = form.cleaned_data['salario']
        func.admissao = form.cleaned_data['admissao']
        func.cargo = form.cleaned_data['cargo']

        func.usuario = usuario_salvo
        func.save()
    else:
        form = FormFuncionario()

    return render(request, 'app3/funcionario/cadastra.html',
                  {
                   'form': form})

# PÁGINA PRINCIPAL FUNCIONARIO
# ----------------------------------------------

class IndexFuncionarioTemplateView(TemplateView):
    template_name = "app3/funcionario/principal.html"

# LISTA DE FUNCIONÁRIOS
# ----------------------------------------------

class FuncionarioListView(ListView):
    template_name = "app3/funcionario/lista.html"
    model = Funcionario
    context_object_name = "funcionarios"

# CADASTRAMENTO DE FUNCIONÁRIOS
# ----------------------------------------------

#class FuncionarioCreateView(CreateView):

 #   template_name = "app3/funcionario/cadastra.html"
  #  model = Funcionario
   # form_class = FormFuncionario
    #success_url = reverse_lazy("app1:lista_funcionarios")

#class Funcionario2CreateView(CreateView):
 #  template_name = "app3/funcionario/cadastra.html"
  # model = Funcionario
   #form_class = InfoFun
   #success_url = reverse_lazy("app1:lista_funcionarios")

# ATUALIZAÇÃO DE FUNCIONÁRIOS
# ----------------------------------------------

class FuncionarioUpdateView(UpdateView):
    template_name = "app3/funcionario/atualiza.html"
    model = Funcionario
    fields = '__all__'
    context_object_name = 'funcionario'
    success_url = reverse_lazy("app1:lista_funcionarios")


# EXCLUSÃO DE FUNCIONÁRIOS
# ----------------------------------------------

class FuncionarioDeleteView(DeleteView):
    template_name = "app3/funcionario/exclui.html"
    model = Funcionario
    context_object_name = 'funcionario'
    success_url = reverse_lazy("app1:lista_funcionarios")

##################################################################################

# PÁGINA PRINCIPAL CLIENTE
# ----------------------------------------------

class IndexClienteTemplateView(TemplateView):
    template_name = "app3/cliente/principal.html"

# LISTA DE CLIENTE
# ----------------------------------------------

class ClienteListView(ListView):
    template_name = "app3/cliente/lista.html"
    model = Cliente
    context_object_name = "clientes"

# CADASTRAMENTO DE CLIENTE
# ----------------------------------------------

class ClienteCreateView(CreateView):
    template_name = "app3/cliente/cadastra.html"
    model = Cliente
    form_class = FormCliente
    success_url = reverse_lazy("app1:lista_clientes")

# ATUALIZAÇÃO DE CLIENTE
# ----------------------------------------------

class ClienteUpdateView(UpdateView):
    template_name = "app3/cliente/atualiza.html"
    model = Cliente
    fields = '__all__'
    context_object_name = 'cliente'
    success_url = reverse_lazy("app1:lista_clientes")


# EXCLUSÃO DE CLIENTE
# ----------------------------------------------

class ClienteDeleteView(DeleteView):
    template_name = "app3/cliente/exclui.html"
    model = Cliente
    context_object_name = 'cliente'
    success_url = reverse_lazy("app1:lista_clientes")

##################################################################################

# PÁGINA PRINCIPAL FORNECEDOR
# ----------------------------------------------

class IndexFornecedorTemplateView(TemplateView):
    template_name = "app3/fornecedor/principal.html"

# LISTA DE FORNECEDOR
# ----------------------------------------------

class FornecedorListView(ListView):
    template_name = "app3/fornecedor/lista.html"
    model = Fornecedor
    context_object_name = "fornecedores"

# CADASTRAMENTO DE FORNECEDOR
# ----------------------------------------------

class FornecedorCreateView(CreateView):
    template_name = "app3/fornecedor/cadastra.html"
    model = Fornecedor
    form_class = FormFornecedor
    success_url = reverse_lazy("app1:lista_fornecedores")

# ATUALIZAÇÃO DE FORNECEDOR
# ----------------------------------------------

class FornecedorUpdateView(UpdateView):
    template_name = "app3/fornecedor/atualiza.html"
    model = Fornecedor
    fields = '__all__'
    context_object_name = 'fornecedor'
    success_url = reverse_lazy("app1:lista_fornecedores")


# EXCLUSÃO DE FORNECEDOR
# ----------------------------------------------

class FornecedorDeleteView(DeleteView):
    template_name = "app3/fornecedor/exclui.html"
    model = Fornecedor
    context_object_name = 'fornecedor'
    success_url = reverse_lazy("app1:lista_fornecedores")