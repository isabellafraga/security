from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse
from app1.forms import FormCliente, FormFuncionario, InfoFun

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

def funcionario(request):
    cadastrado = False

    if request.method == 'POST':
        info_form = InfoFun(data=request.POST)
        func_form = FormFuncionario(data=request.POST)

        if info_form.is_valid() and func_form.is_valid():
            user = info_form.save()
            user.set_password(user.password)
            user.save()

            perfil = func_form.save(commit=False)
            perfil.usuario = user

            perfil.save()

            cadastrado = True
        else:
            print(info_form.errors, func_form.errors)

    else:
        info_form = InfoFun()
        func_form = FormFuncionario()

    return render(request, 'funcionario.html',
                  {'info_form': info_form,
                   'func_form': func_form,
                   'cadastrado': cadastrado})