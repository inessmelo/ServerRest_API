*** Settings ***
Resource    ../../base.resource


*** Test Cases ***
Criar um usuario sem email
    [Documentation]    Cadastrar um novo usuario

    ${headers}    Create Dictionary    
    ...    Authorization=Bearer ${token}  

    ${body}    Create Dictionary    
    ...    password=teste

    ${response}    POST        
    ...    ${BASE_URL}/login  
    ...    headers=${headers} 
    ...    json=${body}
    ...    timeout=2000        
    ...    expected_status=400

    Should Be Equal As Integers    ${response.status_code}    400
    Dictionary Should Contain Key    ${response.json()}    mensagem
    Should Be Equal    ${response.json()['mensagem']}    "Email e senha são obrigatórios"