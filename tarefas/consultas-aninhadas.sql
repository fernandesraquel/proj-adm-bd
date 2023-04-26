-- Desabilitar Foreign Keys
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

-- Criando a tabela de departamento
CREATE TABLE departamento (
  codigo int AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(100),
  cod_gerente INT,
  FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo)
);

-- Criando a tabela de projeto
CREATE TABLE projeto (
  codigo int AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  descricao VARCHAR(200),
  cod_depto INT,
  cod_responsavel INT,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY (cod_depto) REFERENCES departamento(codigo),
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

-- Criando a tabela de atividade
CREATE TABLE atividade (
  codigo int AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  descricao VARCHAR(200),
  cod_responsavel INT,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

-- Criando a tabela de relacionamento entre atividade e projeto
CREATE TABLE atividade_projeto (
  cod_projeto INT,
  cod_atividade INT,
  PRIMARY KEY (cod_projeto, cod_atividade),
  FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
  FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo)
);
