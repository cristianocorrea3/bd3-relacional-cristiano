#CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE centro_cirurgico_bd;

#SELECIONA O BANCO DE DADOS
USE centro_cirurgico_bd;

#CRIAÇÃO DA TABELA ESPECIALIDADE
CREATE TABLE tbl_especialidade(
cod_especialidade INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_especialidade VARCHAR(100) NOT NULL
);

CREATE TABLE tbl_paciente(
cod_paciente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_paciente VARCHAR(500) NOT NULL,
telefone_paciente VARCHAR(10),
celular_paciente VARCHAR(11) NOT NULL,
email_paciente VARCHAR(100) NOT NULL,
nome_responsavel VARCHAR(500) NOT NULL,
telefone_responsavel VARCHAR(11) not null
);

CREATE TABLE tbl_medico(
cod_medico INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_especialidade INT UNSIGNED NOT NULL,
nome_medico VARCHAR(500) NOT NULL,
telefone_medico VARCHAR(10),
celular_medico VARCHAR(11) NOT NULL,
email_medico VARCHAR(100) NOT NULL
);

CREATE TABLE tbl_insumos(
cod_insumos INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_paciente INT UNSIGNED NOT NULL,
nome_insumo VARCHAR(100) NOT NULL,
quantidade_insumo DECIMAL(10,2)
);

CREATE TABLE tbl_sala(
cod_sala INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_especialidade INT UNSIGNED NOT NULL,
nro_sala VARCHAR(10) NOT NULL
);

CREATE TABLE tbl_agenda(
cod_agenda INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_sala INT UNSIGNED NOT NULL,
cod_medico INT UNSIGNED NOT NULL,
cod_paciente INT UNSIGNED NOT NULL,
data_cirurgia VARCHAR(10) NOT NULL,
status_cirurgia ENUM('AGENDADO', 'CONCLUÍDO', 'CANCELADO')
);





