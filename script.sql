create DATABASE banco;
use banco;

drop table if exists produtos;
drop table if exists cliente;
drop table if exists compra;
create table produtos(id int AUTO_INCREMENT PRIMARY KEY, nome varchar(30), preco double);

create table cliente(id int AUTO_INCREMENT PRIMARY KEY, nome varchar(80), email varchar(80), telefone varchar(12));

create table compra(id int AUTO_INCREMENT PRIMARY KEY, dia date, preco double, produtos int, cliente int, FOREIGN KEY (produtos) REFERENCES produtos(id), FOREIGN KEY (cliente) REFERENCES cliente(id));

INSERT INTO produtos (nome, preco) VALUES 
('Laptop', 3500.50),
('Smartphone', 2000.99),
('Teclado Mecânico', 350.00),
('Mouse Gamer', 250.75);

INSERT INTO cliente (nome, email, telefone) VALUES 
('Carlos Silva', 'carlos@email.com', '11987654321'),
('Mariana Costa', 'mariana@email.com', '11976543210'),
('Rafael Souza', 'rafael@email.com', '11876543219'),
('Ana Pereira', 'ana@email.com', '11965432187');

INSERT INTO compra (dia, preco, produtos, cliente) VALUES 
('2024-02-10', 3500.50, 1, 1),
('2024-02-11', 2000.99, 2, 2),
('2024-02-12', 350.00, 3, 3),
('2024-02-13', 250.75, 4, 4);


-- -------------------------------------------------------------------------------------
-- as tabelas acima são de relação um para muitos, um cliente pode comprar muitos produtos
-- -------------------------------------------------------------------------------------

drop table if exists alunos;
drop table if exists cursos;
drop table if exists alunos_cursos;
create table alunos (id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(100), email VARCHAR(100));

create table cursos (id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(100), descricao text);

create table alunos_cursos (aluno_id INT,curso_id INT, PRIMARY KEY (aluno_id, curso_id), FOREIGN KEY (aluno_id) REFERENCES alunos(id), FOREIGN KEY (curso_id) REFERENCES cursos(id));

INSERT INTO alunos (nome, email) VALUES 
('João Silva', 'joao.silva@email.com'),
('Maria Oliveira', 'maria.oliveira@email.com'),
('Carlos Santos', 'carlos.santos@email.com'),
('Ana Pereira', 'ana.pereira@email.com');

INSERT INTO cursos (nome, descricao) VALUES 
('Banco de Dados', 'Curso sobre modelagem e gerenciamento de bancos de dados.'),
('Desenvolvimento Web', 'Aprenda a criar sites e aplicações web.'),
('Machine Learning', 'Introdução ao aprendizado de máquina e inteligência artificial.'),
('Redes de Computadores', 'Conceitos básicos e avançados sobre redes.');

INSERT INTO alunos_cursos (aluno_id, curso_id) VALUES 
(1, 1), -- João no curso de Banco de Dados
(2, 2), -- Maria no curso de Desenvolvimento Web
(3, 3), -- Carlos no curso de Machine Learning
(4, 4), -- Ana no curso de Redes de Computadores
(1, 2), -- João também no curso de Desenvolvimento Web
(2, 3), -- Maria também no curso de Machine Learning
(3, 4), -- Carlos também no curso de Redes
(4, 1); -- Ana também no curso de Banco de Dados

-- -------------------------------------------------------------------------------------
-- as tabelas acima são de relação muitos para muitos, um aluno pode estar em muitos cursos
-- -------------------------------------------------------------------------------------