*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
Resource    shared/setup_teardown.robot
Resource    pages/Login.robot
Resource    pages/CadastroLoja.robot