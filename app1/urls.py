from app1.views import IndexFuncionarioTemplateView, FuncionarioListView, FuncionarioUpdateView, \
    FuncionarioDeleteView, IndexClienteTemplateView, ClienteCreateView, ClienteListView, ClienteUpdateView, \
    ClienteDeleteView, IndexFornecedorTemplateView, FornecedorCreateView, FornecedorListView, FornecedorUpdateView, \
    FornecedorDeleteView
from django.urls import path
from . import views

app_name = 'app1'

urlpatterns = [
    path('login', views.loginn, name='login'),
    path('logout', views.logoutt, name='logout'),
    path('index', views.index, name='index'),
    path('manutencao', views.manutencao, name='manutencao'),
    path('funcionario/cadastrar/', views.funcionario, name="cadastra_funcionario"),

    # GET /
    path('principalfuncionario/', IndexFuncionarioTemplateView.as_view(), name="principalfuncionario"),

    # GET /funcionario/cadastrar
    #path('funcionario/cadastrar', FuncionarioCreateView.as_view(), name="cadastra_funcionario"),
    # GET /funcionario/cadastrar

    # GET /funcionarios
    path('funcionarios/', FuncionarioListView.as_view(), name="lista_funcionarios"),

    # GET/POST /funcionario/{pk}
    path('funcionario/<pk>', FuncionarioUpdateView.as_view(), name="atualiza_funcionario"),

    # GET/POST /funcionarios/excluir/{pk}
    path('funcionario/excluir/<pk>', FuncionarioDeleteView.as_view(), name="deleta_funcionario"),

######################################################################################################

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

######################################################################################################

    # GET /
    path('principalfornecedor/', IndexFornecedorTemplateView.as_view(), name="principalfornecedor"),

    # GET /forncedor/cadastrar
    path('fornecedor/cadastrar', FornecedorCreateView.as_view(), name="cadastra_fornecedor"),

    # GET /fornecedores
    path('fornecedores/', FornecedorListView.as_view(), name="lista_fornecedores"),

    # GET/POST /fornecedor/{pk}
    path('fornecedor/<pk>', FornecedorUpdateView.as_view(), name="atualiza_fornecedor"),

    # GET/POST /fornecedor/excluir/{pk}
    path('fornecedor/excluir/<pk>', FornecedorDeleteView.as_view(), name="deleta_fornecedor"),

]