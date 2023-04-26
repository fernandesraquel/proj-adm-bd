-- Inserindo um funcionário
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('João', 'M', '1990-01-01', 5000.00, 1),
       ('Maria', 'F', '1981-07-01', 2500.00, 1),
       ('Josefa', 'F', '1986-09-17', 2500.00, 1),
       ('Humberto', 'M', '1970-05-07', 1500.00, 2),
       ('José', 'M', '1979-07-12', 3500.00, 2);
       
-- Inserindo um departamento
INSERT INTO departamento (descricao, cod_gerente)
VALUES ('Dep História', null),
       ('Dep Computação', null),
       ('Dep Geografia', null),
       (null, null);

-- Inserindo um projeto
INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES ('Monitoria', 'Projeto de Monitoria 2019.1', 1, 6, '2019-02-26', '2019-12-30'),
       ('APF', 'Analisador de Ponto de Função', 2, 2, '2018-02-26', '2019-06-30'),
       ('BD', 'Projeto de Banco de Dados', 3, 5, '2018-02-26', '2018-06-30'),
       ('ES', 'Projeto de Engenharia de Software', 1, 1, '2018-02-26', '2018-06-30');

-- Inserindo uma atividade
INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('APF', 'Atividade 1', 1, '2018-02-26', '2018-06-30'),
       ('APF', 'Atividade 2', 1, '2018-06-26', '2018-07-30'),
       ('APF', 'Atividade 3', 1, '2018-08-26', '2018-09-30'),
       ('Monitoria', 'Atividade 1', 2, '2018-06-26', '2018-07-30'),
       ('BD', 'Atividade 1', 3, '2018-06-26', '2018-07-30'),
       ('BD', 'Atividade 2', 3, '2018-08-26', '2018-09-30'),
       ('ES', 'Atividade 1', 4, '2018-09-30', '2018-10-30');
       
-- Associando uma atividade a um projeto
INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (1, 1),
       (2, 2),
       (3, 4),
       (4, 3);
       


