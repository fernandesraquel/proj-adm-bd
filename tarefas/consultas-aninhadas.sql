-- Criando a tabela de funcionário
CREATE TABLE funcionario (
  codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  sexo CHAR(1) NOT NULL,
  dt_nasc DATE NOT NULL,
  salario DECIMAL(10, 2) NOT NULL,
  cod_depto INT NOT NULL,
  FOREIGN KEY (cod_depto) REFERENCES departamento(codigo)
);
