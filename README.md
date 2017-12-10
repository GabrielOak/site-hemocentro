## Exercício de Programação 3 - OO 2017/2

Elaboração de um site utilizando ruby e o framework rails.

### Autores:

Gabriel de Jesus Carvalho - 16/0120918

Ezequiel Oliveira dos Reis - 16/0119316

## Como Utilizar

É necessário ter os arquivos do projeto no seu computador, para isso de um clone do repositório

```
git clone -link do repositório-  
```

### Pré-requisitos

**Ruby 2.4.1**

**Rails 5**


### Instalação

É necessário a instalação das gems. Para isso, insira o seguinte código no terminal:

```
bundle install
```

### Subindo o servidor

Após ter dado o **bundle install**, insira o seguinte código para subir o servidor:


```
rails server
```

Para acessar o site, vá no seu navegador e insira:

```
localhost:3000
```

## Permissão

Para dar permissão para um usuário, é necessário utilizar o console do rails. Para isso, digite:

```
rails console
```
Após isso, digite o usuário que deseja colocar como administrador seguido de “.role = :admin”

Exemplo:

```
User.first.role = :admin
```

ou

```
x = User.second
x.role = :admin
```

depois disso, verifique se a alteração foi feita

```
User.first.role
```
se aparecer “admin”, a alteração foi feita. Agora, é necessário salvar

```
User.first.save
```
