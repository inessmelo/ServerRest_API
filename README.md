
# 📌 ServerRest_API

 - Descrição: é uma API REST gratuita que simula uma loja virtual com intuito de servir de material de estudos de testes de API.
 - Documentação: [ServeRest Swagger](https://serverest.dev/#/)

<br>
<br>

## 🎯 Propósito do Repositório

Este repositório tem como único objetivo servir de espaço para estudos e testes pessoais, com foco no aprendizado e prática de testes de serviços (APIs).

> [!IMPORTANT]
> - O conteúdo aqui presente não deve ser utilizado em ambientes produtivos.   
> - O repositório não representa um produto final, mas sim um ambiente experimental para treinamento, aprimoramento de habilidades e validação de conceitos relacionados a testes de API.   
> - As implementações podem sofrer alterações constantes durante o processo de aprendizagem.   

<br>
<br>

## 📖 Índice

- Sobre o Projeto
- Tecnologias Utilizadas
- Estrutura do Projeto
- Como Executar
- Resultados e Demonstrações
- Aprendizados e Contribuições
- Próximos Passos

<br>
<br>

## 📝 Sobre o Projeto

- Objetivo principal: Servir como ambiente de estudo contínuo e aperfeiçoamento em testes de serviços (APIs).  
- Contexto: Projeto criado no âmbito de desafios de QA e prática pessoal, com foco no desenvolvimento de habilidades em automação de testes.   
- Problemas abordados:   
  - Automação de dados para permitir sua reutilização em diferentes requisições e reduzindo retrabalho.    
  - Uso de randomização de dados dentro das coleções do Postman, garantindo maior robustez e variedade nos cenários de teste.

<br>
<br>

## 🛠 Tecnologias Utilizadas

- Linguagem: JavaScript
- Ferramentas: Postman , Newman, JS
- Tipos de Teste: Teste Funcional e Automação

<br>
<br>

## 📂 Estrutura do Projeto
  
- README.md = Arquivo de informação sobre o projeto de teste
- ServerRest.postman_collection.json = Collection com os Cenarios de testes elaborados
- ServerRest.postman_environment.json = Variaveis utilizadas para a automação dos cenarios de testes implemnentados na Collection

<br>
<br>

## ▶️ Como Executar

1. Ter uma conta no Postman;
2. Instale o Node.JS em seu computador
   <a href="https://nodejs.org/pt">
      <img src="https://img.shields.io/npm/v/npm.svg?logo=nodedotjs"/>
   </a> 
  
3. Verificar se o Node e NPM foram instalados corretamente;
   > No console (eu utilizo o GitBash) digitar os comandos `node -v` e `npm -v`
     <div style="display: inline">
        <img width="116" height="48" alt="image" src="https://github.com/user-attachments/assets/2cea4ddc-2d3a-4c1d-91c3-f5a46538af92" />  
        <img width="118" height="46" alt="image" src="https://github.com/user-attachments/assets/5103a522-0620-4d0c-ba64-1fa935ed18f4" />
     </div>
  
4. Exportar toda a Collection e toda a Environment do Postman e add em um pasta;  

5. Instalar o Newman de forma global via linha de comando;  
  ```
  npm install -g newman
  ```
  > Verificar no console se foi instalado corretamente digitando o comando `newman -v`  
    <img width="118" height="48" alt="image" src="https://github.com/user-attachments/assets/cf78c5bc-d665-4cc4-bd09-11635e624e57" />

6. Instalar o Report Newman em HTML de forma global via linha de comando  
  ```
  npm install -g newman-reporter-htmlextra
  ```

7. Rodar o Newman   ` newman run` e o Report HTML `-r htmlreport` junto com a collection e o environment  
   ```
   newman run ServerRest.postman_collection.json -e ServerRest.postman_environment.json -r cli,htmlextra
   ```

<br>
<br>

## 📊 Resultados e Demonstrações

- Criação de relatórios detalhados (Status Report) utilizando o Newman via linha de comando, garantindo maior visibilidade e rastreabilidade dos resultados dos testes.

  - Visualizando com Report CLI
  - <img width="490" height="266" alt="image" src="https://github.com/user-attachments/assets/de89346f-46d9-444d-b213-43021fc9c70f" />

  - Visualizando com Report HMTLExtra
  <img width="566" height="802" alt="image" src="https://github.com/user-attachments/assets/33d5bf7f-0d01-4d2a-8826-767ca36d4a4b" />

<br>
<br>

## 🚀 Aprendizados e Contribuições

1. Criação de scripts em JavaScript para geração de massa de dados utilizada nas requisições;
2. Randomização com comando Random do Postman;
3. Reaproveitamento da massa de dados gerada em requisições anteriores para utilização em chamadas subsequentes.
4. Expansão e detalhamento de cenários de teste dentro de cada requisição, cobrindo suas respectivas rotas.
5. Geração de relatórios de execução por meio da integração do Newman.
6. Automatizar a subida dos testes do Postman em tempo real para o GitHub sem efetuar comando GIT via SSH.
7. Rodar na pipeline Gitction a automação  
   7.1. Dificuldade: Codigo para automatizar onde quebrava a pipeline  
   7.2. Identificar o erro - versão 
   7.3. Resolver o conflito de versão e rodar td scrit da atuomação via pipeline a cada pull/push
 
<br>
<br>

## 📌 Próximos Passos

 - Adicionar testes de regressão
 - Criar relatórios automáticos de QA
 - Expandir documentação

<br>
<br>

## 👩‍💻 Contatos
 
<div style="display: inline">
<a href="https://www.linkedin.com/in/in%C3%AAs-m-065b8681/">
  <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" />
</a>     
      
<a href="https://gitlab.com/inessmelo/postmancollection/-/tree/main">
  <img src="https://img.shields.io/badge/GitLab-330F63?style=for-the-badge&logo=gitlab&logoColor=white" />
</a>
</div>
   
