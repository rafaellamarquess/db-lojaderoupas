-- Inserir dados

-- Inserção de categorias na tabela Categorias
INSERT INTO Categorias (nome_categoria) VALUES
('Camisetas'),
('Calças'),
('Shorts'),
('Jaquetas'),
('Vestidos'),
('Saias'),
('Roupas Íntimas'),
('Roupas de Esporte'),
('Acessórios'),
('Calçados');

-- Inserção de produtos na tabela Produtos
INSERT INTO Produtos (nome_produto, descricao, preco, tamanho, cor, marca, id_categoria, id_fornecedor) VALUES
('Camiseta Básica', 'Camiseta de algodão, ideal para o dia a dia.', 29.90, 'M', 'Branco', 'Marca A', 1, 1),
('Calça Jeans', 'Calça jeans com corte reto, confortável.', 99.90, 'G', 'Azul', 'Marca B', 2, 2),
('Shorts de Praia', 'Shorts leve e arejado para dias de sol.', 49.90, 'M', 'Amarelo', 'Marca C', 3, 3),
('Jaqueta de Couro', 'Jaqueta de couro sintético, estilo moderno.', 199.90, 'G', 'Preto', 'Marca D', 4, 4),
('Vestido Floral', 'Vestido leve com estampa floral, perfeito para o verão.', 89.90, 'P', 'Verde', 'Marca E', 5, 5),
('Saia Midi', 'Saia midi em tecido leve, ideal para ocasiões especiais.', 79.90, 'M', 'Rosa', 'Marca F', 6, 6),
('Sutiã Lace', 'Sutiã de renda, conforto e elegância.', 39.90, 'M', 'Branco', 'Marca G', 7, 7),
('Calça de Moletom', 'Calça de moletom, ideal para praticar esportes.', 69.90, 'G', 'Cinza', 'Marca H', 8, 8),
('Boné Estampado', 'Boné com estampa colorida, proteção e estilo.', 29.90, '', 'Preto', 'Marca I', 9, 9),
('Tênis Casual', 'Tênis confortável, ideal para o dia a dia.', 149.90, '40', 'Branco', 'Marca J', 10, 10),
('Camiseta Estampada', 'Camiseta com estampa divertida.', 34.90, 'G', 'Azul', 'Marca A', 1, 1),
('Calça Legging', 'Legging confortável, ideal para atividades físicas.', 59.90, 'G', 'Preto', 'Marca B', 2, 2),
('Shorts Jeans', 'Shorts jeans, prático para o verão.', 49.90, 'M', 'Azul', 'Marca C', 3, 3),
('Jaqueta Jeans', 'Jaqueta jeans, estilo clássico.', 129.90, 'G', 'Azul', 'Marca D', 4, 4),
('Vestido de Noite', 'Vestido longo para eventos noturnos.', 199.90, 'G', 'Preto', 'Marca E', 5, 5),
('Saia Plissada', 'Saia plissada em tecido leve.', 79.90, 'M', 'Branco', 'Marca F', 6, 6),
('Camiseta Regata', 'Regata de algodão, fresca para o verão.', 29.90, 'P', 'Verde', 'Marca G', 1, 7),
('Calça Cargo', 'Calça cargo com vários bolsos, estilo utilitário.', 99.90, 'G', 'Verde', 'Marca H', 2, 8),
('Boné Básico', 'Boné simples, ideal para dias ensolarados.', 19.90, '', 'Cinza', 'Marca I', 9, 9),
('Bota de Couro', 'Bota de couro, ideal para o inverno.', 299.90, '39', 'Preto', 'Marca J', 10, 10);

-- Inserção de endereços na tabela Enderecos
INSERT INTO Enderecos (logradouro, numero, complemento, bairro, cidade, estado, cep) VALUES
('Rua das Flores', '123', 'Apto 101', 'Centro', 'São Paulo', 'SP', '01001-000'),
('Avenida Brasil', '456', '', 'Jardins', 'Rio de Janeiro', 'RJ', '20031-001'),
('Rua das Palmeiras', '789', 'Casa', 'Bela Vista', 'Belo Horizonte', 'MG', '30140-110'),
('Avenida Paulista', '1000', 'Sala 202', 'Consolação', 'São Paulo', 'SP', '01311-200'),
('Rua da Praia', '55', '', 'Centro', 'Porto Alegre', 'RS', '90010-000'),
('Rua XV de Novembro', '60', '', 'Centro', 'Curitiba', 'PR', '80020-310'),
('Avenida das Américas', '1500', '', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ', '22640-102'),
('Rua 7 de Setembro', '220', 'Cobertura', 'Centro', 'Salvador', 'BA', '40060-100'),
('Avenida Independência', '300', '', 'Centro', 'Fortaleza', 'CE', '60130-090'),
('Rua do Comércio', '85', '', 'Centro', 'Recife', 'PE', '50030-080'),
('Rua dos Pinheiros', '45', '', 'Pinheiros', 'São Paulo', 'SP', '05422-010'),
('Avenida Sete de Setembro', '760', '', 'Centro', 'Manaus', 'AM', '69005-140'),
('Rua Coronel Souza', '102', '', 'Jardim América', 'Goiânia', 'GO', '74180-100'),
('Avenida Paraná', '210', '', 'Centro', 'Curitiba', 'PR', '80010-100'),
('Rua das Laranjeiras', '300', '', 'Centro', 'Vitória', 'ES', '29010-010'),
('Rua Dom Pedro II', '510', '', 'Centro', 'Florianópolis', 'SC', '88015-400'),
('Avenida Atlântica', '620', '', 'Copacabana', 'Rio de Janeiro', 'RJ', '22070-000'),
('Rua da Glória', '123', '', 'Liberdade', 'São Paulo', 'SP', '01510-001'),
('Avenida Santos Dumont', '999', 'Bloco A', 'Centro', 'Brasília', 'DF', '70040-020'),
('Rua José de Alencar', '330', '', 'Centro', 'Maceió', 'AL', '57010-100'),
('Avenida das Palmeiras', '70', '', 'Centro', 'Aracaju', 'SE', '49010-020'),
('Rua Tiradentes', '240', '', 'Centro', 'Natal', 'RN', '59010-150'),
('Rua das Acácias', '500', '', 'Jardim Botânico', 'Curitiba', 'PR', '82520-020'),
('Avenida Rio Branco', '1050', '', 'Centro', 'Recife', 'PE', '50010-030'),
('Rua Padre Cícero', '180', '', 'Centro', 'Juazeiro do Norte', 'CE', '63010-010'),
('Avenida Getúlio Vargas', '760', '', 'Centro', 'Porto Velho', 'RO', '76801-000'),
('Rua Sete de Abril', '90', '', 'Centro', 'Belém', 'PA', '66010-001'),
('Rua Gonçalves Dias', '120', '', 'Centro', 'Campo Grande', 'MS', '79002-310'),
('Avenida Fernando Corrêa', '310', '', 'Centro', 'Cuiabá', 'MT', '78020-010'),
('Rua Afonso Pena', '400', '', 'Centro', 'Uberlândia', 'MG', '38400-100');

-- Inserção de fornecedores
INSERT INTO Fornecedores (nome, telefone, email, id_endereco) VALUES
('Fornecedor A', '11987654321', 'fornecedorA@loja.com', 1),
('Fornecedor B', '21912345678', 'fornecedorB@loja.com', 2),
('Fornecedor C', '31976543210', 'fornecedorC@loja.com', 3),
('Fornecedor D', '51912398765', 'fornecedorD@loja.com', 4),
('Fornecedor E', '41987654321', 'fornecedorE@loja.com', 5),
('Fornecedor F', '11999887766', 'fornecedorF@loja.com', 6),
('Fornecedor G', '21912348765', 'fornecedorG@loja.com', 7),
('Fornecedor H', '31998761234', 'fornecedorH@loja.com', 8),
('Fornecedor I', '51987651234', 'fornecedorI@loja.com', 9),
('Fornecedor J', '41998765432', 'fornecedorJ@loja.com', 10);

-- Inserção de clientes
INSERT INTO Clientes (nome, telefone, email, cpf, id_endereco) VALUES
('Cliente A', '11987651234', 'clienteA@email.com', '12345678901', 11),
('Cliente B', '21912349876', 'clienteB@email.com', '23456789012', 12),
('Cliente C', '31998765432', 'clienteC@email.com', '34567890123', 13),
('Cliente D', '51912348765', 'clienteD@email.com', '45678901234', 14),
('Cliente E', '41987651234', 'clienteE@email.com', '56789012345', 15),
('Cliente F', '11998761234', 'clienteF@email.com', '67890123456', 16),
('Cliente G', '21912348765', 'clienteG@email.com', '78901234567', 17),
('Cliente H', '31987654321', 'clienteH@email.com', '89012345678', 18),
('Cliente I', '51912365487', 'clienteI@email.com', '90123456789', 19),
('Cliente J', '41987659876', 'clienteJ@email.com', '01234567890', 20);

-- Inserção de funcionários
INSERT INTO Funcionarios (nome, identificacao, cargo, contato, id_endereco) VALUES
('Funcionario A', '123', 'Gerente', '11912345678', 21),
('Funcionario B', '124', 'Vendedor', '21998765432', 22),
('Funcionario C', '125', 'Estoquista', '31987654321', 23),
('Funcionario D', '126', 'Caixa', '51912348765', 24),
('Funcionario E', '127', 'Vendedor', '41998765432', 25),
('Funcionario F', '128', 'Supervisor', '11998765432', 26),
('Funcionario G', '129', 'Vendedor', '21912348765', 27),
('Funcionario H', '130', 'Caixa', '31987651234', 28),
('Funcionario I', '131', 'Estoquista', '51998765432', 29),
('Funcionario J', '132', 'Gerente', '41912365487', 30);