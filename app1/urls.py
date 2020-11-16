from app1.views import IndexFuncionarioTemplateView, FuncionarioListView, FuncionarioUpdateView, FuncionarioCreateView, \
    FuncionarioDeleteView, IndexClienteTemplateView, ClienteCreateView, ClienteListView, ClienteUpdateView, \
    ClienteDeleteView, Funcionario2CreateView
from django.urls import path
from . import views

app_name = 'app1'

urlpatterns = [
    path('login', views.loginn, name='login'),
    path('logout', views.logoutt, name='logout'),
    path('index', views.index, name='index'),

    # GET /
    path('principalfuncionario/', IndexFuncionarioTemplateView.as_view(), name="principalfuncionario"),

    # GET /funcionario/cadastrar
    path('funcionario/cadastrar', FuncionarioCreateView.as_view(), name="cadastra_funcionario"),
    # GET /funcionario/cadastrar
    path('funcionario/cadastrar', Funcionario2CreateView.as_view(), name="cadastra_funcionario"),

    # GET /funcionarios
    path('funcionarios/', FuncionarioListView.as_view(), name="lista_funcionarios"),

    # GET/POST /funcionario/{pk}
    path('funcionario/<pk>', FuncionarioUpdateView.as_view(), name="atualiza_funcionario"),

    # GET/POST /funcionarios/excluir/{pk}
    path('funcionario/excluir/<pk>', FuncionarioDeleteView.as_view(), name="deleta_funcionario"),

    # GET /
    path('principalcliente/', IndexClienteTemplateView.as_view(), name="principalcliente"),

    # GET /cliente/cadastrar
    path('cliente/cadastrar', ClienteCreateView.as_view(), name="cadastra_cliente"),

    # GET /clientes
    path('clientes/', ClienteListView.as_view(), name="lista_clientes"),

    # GET/POST /cliente/{pk}
    path('cliente/<pk>', ClienteUpdateView.as_view(), name="atualiza_cliente"),

    # GET/POST /cliente/excluir/{pk}
    path('cliente/excluir/<pk>', ClienteDeleteView.as_view(), name="deleta_cliente"),

]