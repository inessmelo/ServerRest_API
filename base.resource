*** Settings ***
Library     RequestsLibrary
Library     Collections

Resource    ./test_api/test/login.robot

*** Variables ***
${BASE_URL}         https://serverest.dev
${email_default}    fulano@qa.com
${pass_default}     teste
