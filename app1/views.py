from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse
from app1.forms import FormCliente, FormFuncionario, InfoFun
from django.urls import reverse_lazy
from django.views.generic import TemplateView, ListView, UpdateView, CreateView, DeleteView
from app1.models import Funcionario


def index(request):
    return render(request, 'index.html')

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
        return render(request, 'login.html', {})

@login_required
def logoutt(request):
    logout(request)
    return HttpResponseRedirect(reverse('login'))

def cliente(request):
    cadastrado = False

    if request.method == 'POST':
        user_form = FormCliente(data=request.POST)


        if user_form.is_valid():
            user = user_form.save()
            user.save()

            cadastrado = True
        else:
            print(user_form.errors)

    else:
        user_form = FormCliente()

    return render(request, 'cliente.html',
                  {'user_form': user_form,
                   'cadastrado': cadastrado})

# PÁGINA PRINCIPAL
# ----------------------------------------------

class IndexTemplateView(TemplateView):
    template_name = "funcionarioprincipal.html"

# LISTA DE FUNCIONÁRIOS
# ----------------------------------------------

class FuncionarioListView(ListView):
    template_name = "lista.html"
    model = Funcionario
    context_object_name = "funcionarios"

# CADASTRAMENTO DE FUNCIONÁRIOS
# ----------------------------------------------

class FuncionarioCreateView(CreateView):
    template_name = "cadastra.html"
    model = Funcionario
    form_class = FormFuncionario, InfoFun
    success_url = reverse_lazy("app1:lista_funcionarios")

# ATUALIZAÇÃO DE FUNCIONÁRIOS
# ----------------------------------------------

class FuncionarioUpdateView(UpdateView):
    template_name = "atualiza.html"
    model = Funcionario
    fields = '__all__'
    context_object_name = 'funcionario'
    success_url = reverse_lazy("app1:lista_funcionarios")


# EXCLUSÃO DE FUNCIONÁRIOS
# ----------------------------------------------

class FuncionarioDeleteView(DeleteView):
    template_name = "exclui.html"
    model = Funcionario
    context_object_name = 'funcionario'
    success_url = reverse_lazy("app1:lista_funcionarios")


#def cadastra(request):
#    cadastrado = False
#
#    if request.method == 'POST':
 #       info_form = InfoFun(data=request.POST)
  #      func_form = FormFuncionario(data=request.POST)
#
 #       if info_form.is_valid() and func_form.is_valid():
  #          user = info_form.save()
   #         user.set_password(user.password)
    #        user.save()
#
 #           perfil = func_form.save(commit=False)
  #          perfil.usuario = user
#
 #           perfil.save()
#
 #           cadastrado = True
  #      else:
   #         print(info_form.errors, func_form.errors)
#
 #   else:
  #      info_form = InfoFun()
   #     func_form = FormFuncionario()
#
 #   return render(request, 'cadastra.html',
  #                {'info_form': info_form,
   #                'func_form': func_form,
    #               'cadastrado': cadastrado})