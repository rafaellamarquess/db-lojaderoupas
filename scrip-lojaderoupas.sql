-- Criando o banco de dados
CREATE DATABASE LojaDeRoupas;
USE LojaDeRoupas;

-- Tabela de Endereços
CREATE TABLE Enderecos (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(255) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(100),
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep VARCHAR(10) NOT NULL
);

-- Tabela de Fornecedores
CREATE TABLE Fornecedores (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    id_endereco INT NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES Enderecos(id_endereco)
);

-- Tabela de Categorias de Produtos
CREATE TABLE Categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL
);

-- Tabela de Produtos
CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(10) NOT NULL,
    cor VARCHAR(20) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    id_categoria INT NOT NULL,
    id_fornecedor INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor)
);

-- Tabela de Estoque
CREATE TABLE Estoque (
    id_estoque INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_entrada DATE NOT NULL,
    data_saida DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

-- Tabela de Clientes
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    id_endereco INT NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES Enderecos(id_endereco)
);

-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    identificacao VARCHAR(20) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    contato VARCHAR(100) NOT NULL,
    id_endereco INT NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES Enderecos(id_endereco)
);

-- Tabela de Vendas
CREATE TABLE Vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    data_venda DATE NOT NULL,
    desconto DECIMAL(5, 2),
    forma_pagamento VARCHAR(50) NOT NULL,
    status_entrega VARCHAR(50) NOT NULL,
    id_funcionario INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);

-- Tabela de Produtos Vendidos
CREATE TABLE ProdutosVendidos (
    id_produto_vendido INT PRIMARY KEY AUTO_INCREMENT,
    id_venda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES Vendas(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

-- Tabela de Promoções
CREATE TABLE Promocoes (
    id_promocao INT PRIMARY KEY AUTO_INCREMENT,
    nome_promocao VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    desconto_promocional DECIMAL(5, 2) NOT NULL
);

-- Tabela de Produtos em Promoção
CREATE TABLE ProdutosPromocao (
    id_produto_promocao INT PRIMARY KEY AUTO_INCREMENT,
    id_promocao INT NOT NULL,
    id_produto INT NOT NULL,
    FOREIGN KEY (id_promocao) REFERENCES Promocoes(id_promocao),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);