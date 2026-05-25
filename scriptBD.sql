
CREATE DATABASE Flavoria;
USE Flavoria;

CREATE TABLE usuario(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (100),
email VARCHAR (100) UNIQUE,
senha VARCHAR (100)
);

CREATE TABLE pergunta_personalidade (
    idPergunta INT PRIMARY KEY AUTO_INCREMENT,
    pergunta VARCHAR(255)
);


--  ALTERNATIVAS


CREATE TABLE alternativa_personalidade (
    idAlternativa INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255),
    perfil VARCHAR(50),
    fkPergunta INT,

    CONSTRAINT fkPerguntaAlternativa
        FOREIGN KEY (fkPergunta)
        REFERENCES pergunta_personalidade(idPergunta)
);


-- TABELA DE RESULTADO


CREATE TABLE resultado_personalidade (

    idResultado INT PRIMARY KEY AUTO_INCREMENT,

    fkUsuario INT,

    perfilFinal VARCHAR(50),

    tradicional INT,
    gourmet INT,
    criativo INT,
    raiz INT,
    fit INT,
    confeiteiro INT,
    aventureiro INT,

    porcentagemTradicional DECIMAL(5,2),
    porcentagemGourmet DECIMAL(5,2),
    porcentagemCriativo DECIMAL(5,2),
    porcentagemRaiz DECIMAL(5,2),
    porcentagemFit DECIMAL(5,2),
    porcentagemConfeiteiro DECIMAL(5,2),
    porcentagemAventureiro DECIMAL(5,2),

    dataQuiz DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fkUsuarioResultado
        FOREIGN KEY (fkUsuario)
        REFERENCES usuario(id)

);


-- PERFIS:
-- Chef Tradicional
-- Chef Gourmet
-- Chef Criativo
-- Chef Raiz
-- Chef Fit
-- Chef Confeiteiro
-- Chef Aventureiro


-- PERGUNTA 1

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('O que mais chama sua atenção em um prato?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('O sabor que lembra bons momentos', 'Chef Tradicional', 1),
('A apresentação cuidadosa', 'Chef Gourmet', 1),
('A mistura de sabores diferentes', 'Chef Criativo', 1),
('A sensação de comida feita para compartilhar', 'Chef Raiz', 1),
('Os ingredientes equilibrados', 'Chef Fit', 1),
('Os detalhes doces e delicados', 'Chef Confeiteiro', 1),
('Os sabores pouco conhecidos', 'Chef Aventureiro', 1);


-- PERGUNTA 2


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual atividade culinária parece mais interessante?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Preparar receitas clássicas', 'Chef Tradicional', 2),
('Montar pratos elegantes', 'Chef Gourmet', 2),
('Criar combinações diferentes', 'Chef Criativo', 2),
('Fazer comida para várias pessoas', 'Chef Raiz', 2),
('Pesquisar receitas saudáveis', 'Chef Fit', 2),
('Decorar sobremesas', 'Chef Confeiteiro', 2),
('Experimentar culinárias internacionais', 'Chef Aventureiro', 2);


-- PERGUNTA 3


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual ingrediente você escolheria primeiro?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Ervas frescas', 'Chef Tradicional', 3),
('Queijos especiais', 'Chef Gourmet', 3),
('Molhos diferentes', 'Chef Criativo', 3),
('Carnes temperadas', 'Chef Raiz', 3),
('Vegetais frescos', 'Chef Fit', 3),
('Chocolate', 'Chef Confeiteiro', 3),
('Especiarias internacionais', 'Chef Aventureiro', 3);


-- PERGUNTA 4


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Como você prefere cozinhar?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Seguindo receitas conhecidas', 'Chef Tradicional', 4),
('Prestando atenção nos detalhes', 'Chef Gourmet', 4),
('Mudando ingredientes livremente', 'Chef Criativo', 4),
('De forma prática e direta', 'Chef Raiz', 4),
('Pensando no equilíbrio nutricional', 'Chef Fit', 4),
('Com bastante precisão', 'Chef Confeiteiro', 4),
('Testando sabores novos', 'Chef Aventureiro', 4);


-- PERGUNTA 5


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual ambiente parece mais agradável?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Uma cozinha familiar', 'Chef Tradicional', 5),
('Um restaurante sofisticado', 'Chef Gourmet', 5),
('Um espaço criativo', 'Chef Criativo', 5),
('Uma área de confraternização', 'Chef Raiz', 5),
('Um ambiente organizado e leve', 'Chef Fit', 5),
('Uma confeitaria charmosa', 'Chef Confeiteiro', 5),
('Uma feira gastronômica internacional', 'Chef Aventureiro', 5);


-- PERGUNTA 6


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual palavra mais combina com você?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Tradição', 'Chef Tradicional', 6),
('Elegância', 'Chef Gourmet', 6),
('Originalidade', 'Chef Criativo', 6),
('Autenticidade', 'Chef Raiz', 6),
('Equilíbrio', 'Chef Fit', 6),
('Delicadeza', 'Chef Confeiteiro', 6),
('Descoberta', 'Chef Aventureiro', 6);


-- PERGUNTA 7


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual refeição parece mais interessante?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Massas caseiras', 'Chef Tradicional', 7),
('Risoto sofisticado', 'Chef Gourmet', 7),
('Hambúrguer artesanal diferente', 'Chef Criativo', 7),
('Churrasco completo', 'Chef Raiz', 7),
('Prato nutritivo', 'Chef Fit', 7),
('Mesa de sobremesas', 'Chef Confeiteiro', 7),
('Prato típico de outro país', 'Chef Aventureiro', 7);

-- PERGUNTA 8

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('O que mais importa ao cozinhar?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('O sabor afetivo', 'Chef Tradicional', 8),
('A experiência completa', 'Chef Gourmet', 8),
('A criatividade da receita', 'Chef Criativo', 8),
('A fartura da comida', 'Chef Raiz', 8),
('O bem-estar', 'Chef Fit', 8),
('O acabamento perfeito', 'Chef Confeiteiro', 8),
('Experimentar algo novo', 'Chef Aventureiro', 8);


-- PERGUNTA 9


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Como seus amigos descreveriam sua comida?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Aconchegante', 'Chef Tradicional', 9),
('Refinada', 'Chef Gourmet', 9),
('Diferente', 'Chef Criativo', 9),
('Marcante', 'Chef Raiz', 9),
('Leve', 'Chef Fit', 9),
('Caprichada', 'Chef Confeiteiro', 9),
('Surpreendente', 'Chef Aventureiro', 9);


-- PERGUNTA 10


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual experiência culinária você escolheria?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Cozinhar em família', 'Chef Tradicional', 10),
('Participar de um jantar especial', 'Chef Gourmet', 10),
('Criar uma receita inédita', 'Chef Criativo', 10),
('Reunir amigos para comer', 'Chef Raiz', 10),
('Montar um cardápio saudável', 'Chef Fit', 10),
('Preparar doces decorados', 'Chef Confeiteiro', 10),
('Conhecer sabores internacionais', 'Chef Aventureiro', 10);


-- PERGUNTA 11

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual utensílio parece mais interessante?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Panela tradicional', 'Chef Tradicional', 11),
('Pinça culinária', 'Chef Gourmet', 11),
('Equipamentos diferentes', 'Chef Criativo', 11),
('Churrasqueira', 'Chef Raiz', 11),
('Mixer ou processador', 'Chef Fit', 11),
('Bico de confeitar', 'Chef Confeiteiro', 11),
('Wok oriental', 'Chef Aventureiro', 11);


-- PERGUNTA 12


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual bebida combina mais com você?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Café passado na hora', 'Chef Tradicional', 12),
('Vinho especial', 'Chef Gourmet', 12),
('Drink diferente', 'Chef Criativo', 12),
('Suco bem gelado', 'Chef Raiz', 12),
('Smoothie natural', 'Chef Fit', 12),
('Chocolate quente', 'Chef Confeiteiro', 12),
('Chá típico internacional', 'Chef Aventureiro', 12);


-- PERGUNTA 13


INSERT INTO pergunta_personalidade (pergunta)
VALUES ('O que você faria em um dia livre?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Preparar receitas antigas', 'Chef Tradicional', 13),
('Visitar um restaurante renomado', 'Chef Gourmet', 13),
('Inventar algo novo na cozinha', 'Chef Criativo', 13),
('Fazer um churrasco', 'Chef Raiz', 13),
('Pesquisar alimentação saudável', 'Chef Fit', 13),
('Fazer sobremesas', 'Chef Confeiteiro', 13),
('Conhecer comidas de outros lugares', 'Chef Aventureiro', 13);

-- PERGUNTA 14

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual tipo de sobremesa parece mais interessante?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Torta caseira', 'Chef Tradicional', 14),
('Cheesecake refinado', 'Chef Gourmet', 14),
('Sobremesa diferente', 'Chef Criativo', 14),
('Brownie grande para dividir', 'Chef Raiz', 14),
('Doce equilibrado', 'Chef Fit', 14),
('Macarons decorados', 'Chef Confeiteiro', 14),
('Doce típico internacional', 'Chef Aventureiro', 14);

-- PERGUNTA 15

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual dessas frases combina mais com você?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Comida também é memória', 'Chef Tradicional', 15),
('Cada detalhe faz diferença', 'Chef Gourmet', 15),
('Sempre dá para inovar', 'Chef Criativo', 15),
('Boa comida aproxima pessoas', 'Chef Raiz', 15),
('Equilíbrio é essencial', 'Chef Fit', 15),
('Os doces têm algo especial', 'Chef Confeiteiro', 15),
('Experimentar faz parte da diversão', 'Chef Aventureiro', 15);

SELECT * FROM pergunta_personalidade;
SELECT * FROM alternativa_personalidade;
SELECT * FROM resultado_personalidade;
SELECT * FROM usuario;







