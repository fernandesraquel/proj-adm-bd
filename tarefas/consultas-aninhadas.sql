SET FOREIGN_KEY_CHECKS=0; 

-- Criando a tabela de funcionário
CREATE TABLE funcionario (
  codigo int AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50), 
  sexo CHAR(1),
  dt_nasc DATE,
  salario DECIMAL(10, 2),
  cod_depto INT,
  FOREIGN KEY (cod_depto) REFERENCES departamento(codigo)
);

-- Inserindo um novo funcionário
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('José', 'M', '1990-01-01', 5000.00, 1),
       ('Raquel', 'F', '1987-02-05', 3000.00, 2),
       ('Annielly', 'F', '1989-06-02', 7000.00, 1),
       ('Fábio', 'M', '1992-02-08', 1000.00, 1);
