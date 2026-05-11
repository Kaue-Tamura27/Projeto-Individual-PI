USE Flavoria;

SHOW TABLES;
DESC pergunta;
DESC resultado_quiz;
DESC usuario;

SELECT * FROM usuario;
DROP TABLE pergunta_personalidade;
DROP TABLE alternativa_personalidade;
DROP TABLE resultado_personalidade;

CREATE TABLE pergunta_personalidade (
    idPergunta INT PRIMARY KEY AUTO_INCREMENT,
    pergunta VARCHAR(255)
);

-- =====================================================
-- TABELA DE ALTERNATIVAS
-- =====================================================

CREATE TABLE alternativa_personalidade (
    idAlternativa INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255),
    perfil VARCHAR(50),
    fkPergunta INT,

    CONSTRAINT fkPerguntaAlternativa
        FOREIGN KEY (fkPergunta)
        REFERENCES pergunta_personalidade(idPergunta)
);

-- =====================================================
-- TABELA DE RESULTADO
-- =====================================================

CREATE TABLE resultado_personalidade (
    idResultado INT PRIMARY KEY AUTO_INCREMENT,
    perfilFinal VARCHAR(50),
    dataQuiz DATETIME DEFAULT CURRENT_TIMESTAMP,
    fkUsuario INT,

    CONSTRAINT fkUsuarioResultado
        FOREIGN KEY (fkUsuario)
        REFERENCES usuario(id)
);

-- =====================================================
-- PERGUNTA 1
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual ambiente você prefere para cozinhar?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Cozinha da família', 'Chef Tradicional', 1),
('Restaurante sofisticado', 'Chef Gourmet', 1),
('Inventando receitas novas', 'Chef Criativo', 1),
('Churrasco com amigos', 'Chef Raiz', 1);

-- =====================================================
-- PERGUNTA 2
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual ingrediente não pode faltar?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Temperos caseiros', 'Chef Tradicional', 2),
('Trufas e ingredientes refinados', 'Chef Gourmet', 2),
('Ingredientes exóticos', 'Chef Criativo', 2),
('Carne e alho', 'Chef Raiz', 2);

-- =====================================================
-- PERGUNTA 3
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Como você segue receitas?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Faço igual minha família ensinou', 'Chef Tradicional', 3),
('Sigo tudo exatamente', 'Chef Gourmet', 3),
('Improviso bastante', 'Chef Criativo', 3),
('Nem olho receita', 'Chef Raiz', 3);

-- =====================================================
-- PERGUNTA 4
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual prato você escolheria fazer?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Lasanha da vó', 'Chef Tradicional', 4),
('Risoto sofisticado', 'Chef Gourmet', 4),
('Hambúrguer diferente', 'Chef Criativo', 4),
('Costela na brasa', 'Chef Raiz', 4);

-- =====================================================
-- PERGUNTA 5
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual dessas frases mais combina com você?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Comida traz memória', 'Chef Tradicional', 5),
('Cozinhar é uma arte', 'Chef Gourmet', 5),
('Quero testar algo novo', 'Chef Criativo', 5),
('O importante é comer bem', 'Chef Raiz', 5);

-- =====================================================
-- PERGUNTA 6
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('O que você faz primeiro ao cozinhar?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Organizo receitas antigas', 'Chef Tradicional', 6),
('Preparo tudo cuidadosamente', 'Chef Gourmet', 6),
('Misturo ideias novas', 'Chef Criativo', 6),
('Acendo a churrasqueira', 'Chef Raiz', 6);

-- =====================================================
-- PERGUNTA 7
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual sobremesa você prefere?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Bolo caseiro', 'Chef Tradicional', 7),
('Petit gâteau', 'Chef Gourmet', 7),
('Sorvete diferente', 'Chef Criativo', 7),
('Pudim gigante', 'Chef Raiz', 7);

-- =====================================================
-- PERGUNTA 8
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual utensílio combina mais com você?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Panela antiga', 'Chef Tradicional', 8),
('Pinça culinária', 'Chef Gourmet', 8),
('Air fryer cheia de testes', 'Chef Criativo', 8),
('Grelha e faca', 'Chef Raiz', 8);

-- =====================================================
-- PERGUNTA 9
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Como seus amigos descrevem sua comida?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Confortável e caseira', 'Chef Tradicional', 9),
('Elegante e refinada', 'Chef Gourmet', 9),
('Diferente e divertida', 'Chef Criativo', 9),
('Forte e saborosa', 'Chef Raiz', 9);

-- =====================================================
-- PERGUNTA 10
-- =====================================================

INSERT INTO pergunta_personalidade (pergunta)
VALUES ('Qual seria seu programa perfeito?');

INSERT INTO alternativa_personalidade
(descricao, perfil, fkPergunta)
VALUES
('Almoço em família', 'Chef Tradicional', 10),
('Jantar em restaurante famoso', 'Chef Gourmet', 10),
('Festival gastronômico', 'Chef Criativo', 10),
('Churrasco no fim de semana', 'Chef Raiz', 10);

-- =====================================================
-- TESTE
-- =====================================================

SELECT * FROM pergunta_personalidade;

SELECT * FROM alternativa_personalidade;

SELECT * FROM resultado_personalidade;
