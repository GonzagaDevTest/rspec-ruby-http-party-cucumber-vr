@desafio
Feature: Desafio de consumir api VRPAT
    Como usuário quero consultar todos VRPAT

    Scenario: Consultar todos VRPAT
        Given que o usuário realizou uma requisição do tipo get na api "/comum/enumerations/VRPAT"
        When a resposta retonou o status 200
        Then devo validar um objeto aleatório