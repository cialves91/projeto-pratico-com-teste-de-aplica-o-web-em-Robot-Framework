*** Settings ***
Resource    ../resources/base.robot
Suite Setup       Start Session
Suite Teardown    Close Session


*** Test Cases ***
Deve poder cadastrar um novo usuário
    ${user}=    Create Dictionary
    ...    name=Cintia Ferreira Alves
    ...    email=cintia.alves.91@hotmail.com
    ...    password=123456

    Remove user from database    ${user}[email]

    Go to signup page
    Submit signup form    ${user}
    Notice should be    Boas vindas ao Mark85, o seu gerenciador de tarefas.

Não deve permitir o cadastro com email duplicado
    [Tags]    dup

    ${user}=    Create Dictionary
    ...    name=Cintia Ferreira Alves
    ...    email=ferreira.alves.91@hotmail.com
    ...    password=123456

    Remove user from database    ${user}[email]
    Insert user from database    ${user}

    Go to signup page
    Submit signup form    ${user}
    Notice should be    Oops! Já existe uma conta com o e-mail informado.

