*** Settings ***
Resource    ../../base.resource


*** Test Cases ***
Efetuar Login Com Sucesso
    [Documentation]    Testa o login com credenciais válidas

    ${headers}     Create Dictionary        
    ...    Authorization=Authorization

    ${body}        Create Dictionary        
    ...    email=${email_default}                
    ...    password=${pass_default}

    ${response}    POST        
    ...    ${BASE_URL}/login  
    ...    headers=${headers} 
    ...    json=${body}
    ...    timeout=2000      
    ...    expected_status=200

    Should Be Equal                  ${response.json()['message']}   Login realizado com sucesso
    Dictionary Should Contain Key    ${response.json()}             authorization
    Should Be Equal As Integers      ${response.status_code}        200

    ${token}    Set Variable    ${response.json()['authorization']}


Efetuar Login com email não cadastrado
    ${body}  Create Dictionary
    ...  email=xxy@qa.com
    ...  password=teste

    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${response}        POST    
    ...    url=${BASE_URL}/login
    ...    json=${body}    
    ...    headers=${headers}    
    ...    expected_status=401

    Should Be Equal    ${response.json()['message']}    Email e/ou senha inválidos
    

Efetuar Login com email invalido

    ${body}  Create Dictionary
    ...  email=fulano#qa.com
    ...  password=teste

    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${response}        POST    
    ...    url=${BASE_URL}/login
    ...    json=${body}    
    ...    headers=${headers}    
    ...    expected_status=400

    Should Be Equal    ${response.json()['email']}    email deve ser um email válido