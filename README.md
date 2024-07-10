# README

API para buscar estados e cidades pelo Brasil em Ruby on Rails:

/estados

GET

Para retornar todos os estados, use o seguinte link de acesso:

URL: http://localhost:3000/estados

A resposta será um array em JSON com as seguintes propriedades:


[{

  "id": int,
  
  "nome": string,
  
  "sigla": string,
  
  "created_at": datetime,
  
  "updated_at": datetime
  
}]
Exemplo de retorno:


[
  {
  
    "id": 1,
    "nome": "Paraná",
    "sigla": "PR",
    "created_at": "2024-07-10T03:02:35.380Z",
    "updated_at": "2024-07-10T03:02:35.380Z"
  }
]

Você pode buscar os estados por dois métodos: pelo ID do estado ou pelo nome do estado.

Busca por ID
Para buscar um estado através de seu ID, siga o formato do link abaixo, substituindo {id} pelo ID desejado:

URL: http://localhost:3000/estados/{id}

A resposta será um JSON com as mesmas propriedades mencionadas anteriormente.

Exemplo de requisição:

URL: http://localhost:3000/estados/1

Retorno:


{

  "id": 1,
  
  "nome": "Paraná",
  
  "sigla": "PR",
  
  "created_at": "2024-07-10T03:02:35.380Z",
  
  "updated_at": "2024-07-10T03:02:35.380Z"
  
}

Busca por nome
Para buscar um estado pelo nome, siga o formato de URL abaixo, substituindo {NomeEstado} pelo nome desejado:

URL: http://localhost:3000/estados?nome={NomeEstado}

A resposta será um array em JSON com as mesmas propriedades mencionadas anteriormente.

Exemplo de requisição:

URL: http://localhost:3000/estados?nome=Santa

Retorno:


[
  {
  
    "id": 2,
    "nome": "Santa Catarina",
    "sigla": "SC",
    "created_at": "2024-07-10T03:04:43.970Z",
    "updated_at": "2024-07-10T03:04:43.970Z"
  }
  
]

Busca por cidades de um estado
Para filtrar um estado pelo ID e realizar uma busca pela tabela de cidades daquele estado, use o seguinte formato de URL:

URL: http://localhost:3000/estados/{id_Estado}/cidades

A resposta será um array de JSON com as seguintes propriedades:


[{

  "id": int,
  
  "nome": string,
  
  "estado_id": int,
  
  "created_at": datetime,
  
  "updated_at": datetime
}]

Exemplo de requisição:

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

POST

Para acessar o método POST, use a seguinte URL:

URL: http://localhost:3000/estados

O corpo da requisição deve estar no formato JSON com as seguintes propriedades:


{

  "nome": "string",
  
  "sigla": "string"
  
}

PUT
Para acessar o método PUT, use a seguinte URL, substituindo {idEstado} pelo ID do estado que deseja atualizar:

URL: http://localhost:3000/estados/{idEstado}

O corpo da requisição deve estar no formato JSON com as seguintes propriedades:


{

  "nome": "string",
  
  "sigla": "string"
  
}

DELETE
Para acessar o método DELETE, use a seguinte URL, substituindo {idEstado} pelo ID do estado que deseja deletar:

URL: http://localhost:3000/estados/{idEstado}

/cidades

GET

Para retornar todas as cidades, use o seguinte link de acesso:

URL: http://localhost:3000/cidades

A resposta será um array em JSON com as seguintes propriedades:


[
  {  
  "id": int,
  
  "nome": string,
  
  "estado_id": int,
  
  "created_at": datetime,
  
  "updated_at": datetime
  }
]

Exemplo de retorno:

[
  {
  
    "id": 1,
    "nome": "Curitiba",
    "estado_id": 1,
    "created_at": "2024-07-10T03:06:01.966Z",
    "updated_at": "2024-07-10T03:06:01.966Z"
  }
]

Busca por ID
Para buscar uma cidade através de seu ID, siga o formato do link abaixo, substituindo {id} pelo ID desejado:

URL: http://localhost:3000/cidades/{id}

A resposta será um JSON com as mesmas propriedades mencionadas anteriormente.

Exemplo de requisição:

URL: http://localhost:3000/cidades/1

Retorno:


{
  "id": 1,
  "nome": "Curitiba",
  "estado_id": 1,
  "created_at": "2024-07-10T03:06:01.966Z",
  "updated_at": "2024-07-10T03:06:01.966Z"
}

Busca por nome
Para buscar uma cidade pelo nome, siga o formato de URL abaixo, substituindo {NomeCidade} pelo nome desejado:

URL: http://localhost:3000/cidades?nome={NomeCidade}

A resposta será um array em JSON com as mesmas propriedades mencionadas anteriormente.

Exemplo de requisição:

URL: http://localhost:3000/cidades?nome=Curitiba

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

POST

Para acessar o método POST, use a seguinte URL:

URL: http://localhost:3000/cidades

O corpo da requisição deve estar no formato JSON com as seguintes propriedades:


{

  "nome": "string",
  
  "estado_id": int
}

PUT
Para acessar o método PUT, use a seguinte URL, substituindo {idCidade} pelo ID da cidade que deseja atualizar:

URL: http://localhost:3000/cidades/{idCidade}

O corpo da requisição deve estar no formato JSON com as seguintes propriedades:

{
  "nome": "string",
  
  "estado_id": int
  
}

DELETE
Para acessar o método DELETE, use a seguinte URL, substituindo {idCidade} pelo ID da cidade que deseja deletar:

URL: http://localhost:3000/cidades/{idCidade}
