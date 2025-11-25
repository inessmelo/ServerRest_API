*** Settings ***
Resource    ../../base.resource


*** Test Cases ***
#GET Users
Efetuar a busca de todos os usuarios com sucesso
    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${response}        GET    
    ...    url=${BASE_URL}/usuarios   
    ...    headers=${headers}    
    ...    expected_status=200    
   
    Dictionary Should Contain Key    ${response.json()}    usuarios
   

Efetuar a busca de um usuario por ADM
    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${params}    Create Dictionary    administrador=true

    ${response}        GET    
    ...    url=${BASE_URL}/usuarios   
    ...    headers=${headers}    
    ...    expected_status=200

    ${email}        Get From Dictionary    
    ...    ${response.json()['usuarios'][1]}    email   
    ${pass}    Get From Dictionary    
    ...    ${response.json()['usuarios'][1]}    password   
    ${id}    Get From Dictionary    
    ...    ${response.json()['usuarios'][1]}    _id   


Efetuar a busca de um usuario por ID
    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${params}        Create Dictionary      _id=0uxuPY0cbmQhpEz1

    ${response}=       GET
    ...    url=https://serverest.dev/usuarios
    ...    headers=${headers}    
    ...    params=${params}
    ...    expected_status=200 


Efetuar a busca de um usuario por NOME
    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${params}        Create Dictionary      nome=Fulano da Silva

    ${response}=       GET
    ...    url=https://serverest.dev/usuarios
    ...    headers=${headers}    
    ...    params=${params}
    ...    expected_status=200 

Efetuar a busca de um usuario por PASS
    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${params}        Create Dictionary      password=12345

    ${response}=       GET
    ...    url=https://serverest.dev/usuarios
    ...    headers=${headers}    
    ...    params=${params}
    ...    expected_status=200

Efetuar a busca de um usuario por EMAIL
    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${params}        Create Dictionary      email=uqqsxpzg@emailteste.com

    ${response}=       GET
    ...    url=https://serverest.dev/usuarios
    ...    headers=${headers}    
    ...    params=${params}
    ...    expected_status=200
    
    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${params}        Create Dictionary      administrador=true

    ${response}=       GET
    ...    url=https://serverest.dev/usuarios
    ...    headers=${headers}    
    ...    params=${params}
    ...    expected_status=200

Criar um novo usuario
    ${headers}        Create Dictionary     
    ...    Authorization=Authorization

    ${body}        Catenate    	{
    ...    "nome": "Aldacia Beltrana", 
    ...    "email": "aldacia@beltrana.com.br", 
    ...    "password": "abc@123", 
    ...    "administrador": "true"
    ...    }

    ${body}        Evaluate     json.loads($body)


    ${response}=       POST
    ...    url=https://serverest.dev/login
    ...    json=${body}    
    ...    headers=${headers}
    ...    expected_status=200
    ...    msg="Cadastro realizado com sucesso


# POST Users
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

    Should Be Equal As Integers        ${response.status_code}    400
    Dictionary Should Contain Key      ${response.json()}         mensagem
    Should Be Equal                    ${response.json()['mensagem']}    
    ...    "Email e senha são obrigatórios"