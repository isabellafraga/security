from app1.views import IndexTemplateView, FuncionarioListView, FuncionarioUpdateView, FuncionarioCreateView, FuncionarioDeleteView
from django.urls import path
from . import views

app_name = 'app1'

urlpatterns = [
    path('login', views.loginn, name='login'),
    path('cliente', views.cliente, name='cliente'),
    path('logout', views.logoutt, name='logout'),
    path('index', views.index, name='index'),
    # GET /
    path('principal', IndexTemplateView.as_view(), name="fun"),

    # GET /funcionario/cadastrar
    path('funcionario/cadastrar', FuncionarioCreateView.as_view(), name="cadastra_funcionario"),

    # GET /funcionarios
    path('funcionarios/', FuncionarioListView.as_view(), name="lista_funcionarios"),

    # GET/POST /funcionario/{pk}
    path('funcionario/<pk>', FuncionarioUpdateView.as_view(), name="atualiza_funcionario"),

    # GET/POST /funcionarios/excluir/{pk}
    path('funcionario/excluir/<pk>', FuncionarioDeleteView.as_view(), name="deleta_funcionario"),

]