create DATABASE banco;
use banco;

create table produtos(id int AUTO_INCREMENT PRIMARY KEY, nome varchar(30), preco double);

create table cliente(id int AUTO_INCREMENT PRIMARY KEY, nome varchar(80), email varchar(80), telefone varchar(12));

create table compra(id int AUTO_INCREMENT PRIMARY KEY, dia date, preco double, produtos int, cliente int, FOREIGN KEY (produtos) REFERENCES produtos(id), FOREIGN KEY (cliente) REFERENCES cliente(id));

-- -------------------------------------------------------------------------------------
-- as tabelas acima são de relação um para muitos, um cliente pode comprar muitos produtos
-- -------------------------------------------------------------------------------------

create table alunos (id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(100), email VARCHAR(100));

create table cursos (id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(100), descricao text);

create table alunos_cursos (aluno_id INT,curso_id INT, PRIMARY KEY (aluno_id, curso_id), FOREIGN KEY (aluno_id) REFERENCES alunos(id), FOREIGN KEY (curso_id) REFERENCES cursos(id));

-- -------------------------------------------------------------------------------------
-- as tabelas acima são de relação muitos para muitos, um aluno pode estar em muitos cursos
-- -------------------------------------------------------------------------------------