# README

Api para estar buscando estados e cidades pelo brasil em ruby on rails;

Get Estados;

Para estar retornando todos os estados o link de acesso é;

URL: http://localhost:3000/estados;

vai estar retornando um array em json com seguinte propriedades;</br>

[{

  "id":int,
  
  "nome":string,
  
  "sigla": string,
  
  "created_at": datetime,
  
  "update_at": datetime,
  
}];

exemplo de como ficara o retorno do link;

Retorno: [
  {
  
    "id": 1,
    
    "nome": "Paraná",
    
    "sigla": "Pr",
    
    "created_at": "2024-07-10T03:02:35.380Z",
    
    "updated_at": "2024-07-10T03:02:35.380Z"
    
  }
];

Você podera esta buscando os estados por dois metodos, um pelo id do estado e outro pelo nome do estado;

Para esta buscando estado atraves de seu id você devera seguir o formato do link a seguir

http://localhost:3000/estados/{id}

devera trocar o {id} pelo id que deseja esta buscando, vai esta retornando um json seguindo a mesma propriedades anteriores,

exemplo de um requição atraves de busca pelo id do estado

URL: http://localhost:3000/estados/1

Retorno:
{

  "id": 1,
  "nome": "Paraná",
  "sigla": "Pr",
  "created_at": "2024-07-10T03:02:35.380Z",
  "updated_at": "2024-07-10T03:02:35.380Z"
}

A busca pelo nome do estado devera esta seguindo formato de url

http://localhost:3000/estados?nome={NomeEstado}

devera trocar o {NomeEstado} para qual você deseja esta buscando atraves da url, ele retornara um array em json seguindo a mesma propriedades anterior,

exemplo de um requição atraves de busca pelo nome do estado

URL: http://localhost:3000/estados?nome=San

Retorno: [
  {
  
    "id": 2,
    "nome": "Santa Catarina",
    "sigla": "Sc",
    "created_at": "2024-07-10T03:04:43.970Z",
    "updated_at": "2024-07-10T03:04:43.970Z"
  }
]

Tem possibilidade de estar filtrando um estado pelo id e realizar um busca pela tabela de cidades daquele estado que esta sendo filtrado, a chamada dele devera ser no formato http://localhost:3000/estados/{id_Estado}/cidades, vai estar retornando um array de json com a seguintes propriedades

[{

    "id": int,
    "nome": "string",
    "estado_id": int,
    "created_at": "datetime",
    "updated_at": "datetime"
}]

um exemplo da requisição:
URL: http://localhost:3000/estados/1/cidades
Retorno: 
[
  {
  
    "id": 1,
    "nome": "Curitiba",
    "estado_id": 1,
    "created_at": "2024-07-10T03:06:01.966Z",
    "updated_at": "2024-07-10T03:06:01.966Z"
  }
]
