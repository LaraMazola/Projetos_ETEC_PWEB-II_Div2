create database olojinha;
use olojinha;
create table categorias
(
    catid int primary key auto_increment,
    catnome varchar(150),
    catativo boolean default 1
);
create table subcategorias
(
    subid int primary key auto_increment,
    subnome varchar(150),
    subcatid int,
    subativo boolean default 1,
    constraint fksubcatid foreign key (subcatid) references categorias (catid)
);
create table produtos
(
    proid int primary key auto_increment,
    pronome varchar(150),
    prodescricao varchar(1024),
    provalorcusto double,
    provalorvenda double,
    proquantidade int,
    prosubid int,
    proativo boolean default 1,
    constraint fkprosubid foreign key (prosubid) references subcategorias (subid)
);
create table fotosproduto
(
    fotid int primary key auto_increment,
    fotcaminho varchar(1024),
    fotdescricao varchar(150),
    fotproid int,
    fotprincipal boolean default 0,
    fotativo boolean default 1,
    constraint fkfotproid foreign key (fotproid) references produtos (proid)
);
insert into categorias (catnome) values
('Acessórios para Veículos'),
('Agro'),
('Alimentos e Bebidas'),
('Pet Shop'),
('Antiguidades e Coleções'),
('Arte, Papelaria e Armarinho'),
('Bebês'),
('Beleza e Cuidado Pessoal'),
('Brinquedos e Hobbies'),
('Calçados, Roupas e Bolsas'),
('Câmeras e Acessórios'),
('Carros, Motos e Outros'),
('Casa, Móveis e Decoração'),
('Celulares e Telefones'),
('Construção'),
('Eletrodomésticos'),
('Eletrônicos, Áudio e Vídeo'),
('Esportes e Fitness'),
('Ferramentas'),
('Festas e Lembrancinhas'),
('Games'),
('Imóveis'),
('Indústria e Comércio'),
('Informática'),
('Ingressos'),
('Instrumentos Musicais'),
('Joias e Relógios'),
('Livros, Revistas e Comics'),
('Música, Filmes e Seriados'),
('Saúde'),
('Serviços'),
('Mais Categorias');


INSERT INTO subcategorias
    (subnome, subcatid)
VALUES
    ('Playstation', 1),
    ('XBox', 2);

INSERT INTO produtos
    (
        pronome,
        prodescricao,
        provalorcusto,
        provalorvenda,
        proquantidade,
        prosubid
    )
VALUES
    ('Hogwarts Legacy - Playstation 5','Jogo para PlayStation PS4 / PS5: Produto pronto para uso',100, 140,20,1),
    ('Assassins Creed Black Flag Resynced Xbox Series X Midia Fisica','Inspire medo nos seus inimigos ao abordar e afundar embarcações rivais na pele de Edward Kenway, capitão do Gralha.',200, 264,20,2),
    ('God of War Ragnarok - Playstation 5','Embarque na jornada épica de Kratos e Atreus pelos reinos nórdicos em uma aventura cheia de ação e mitologia.',180,249,20,1),
    ('Red Dead Redemption 2 Xbox Series X Midia Fisica','Viva a história de Arthur Morgan no velho oeste em um dos jogos mais premiados da história dos videogames.',220,299,20,2),
    ('EA Sports FC 25 - Playstation 5','Monte seu time dos sonhos e dispute partidas realistas com gráficos de última geração e modos online atualizados.',250,329,20,1),
    ('The Last of Us Part II Remastered PS5','Sobreviva em um mundo pós-apocalíptico com gráficos aprimorados e jogabilidade intensa no PS5.',190,259,20,1),
    ('Forza Horizon 5 Xbox Series X Midia Fisica','Explore paisagens incríveis do México em corridas eletrizantes com centenas de carros disponíveis.',210,289,20,2),
    ('Spider-Man Miles Morales - Playstation 5','Balance por Nova York e enfrente novos inimigos com os poderes únicos de Miles Morales.',170,239,20,1),
    ('Halo Infinite Xbox Series X Midia Fisica','O lendário Master Chief retorna em uma campanha épica e multiplayer competitivo cheio de ação.',180,249,20,2),
    ('Call of Duty Modern Warfare III PS5','Entre em batalhas intensas com gráficos ultrarrealistas e modos multiplayer frenéticos.',260,349,20,1),
    ('Resident Evil 4 Remake Xbox Series X Midia Fisica','Reviva o clássico do terror em uma versão totalmente refeita com gráficos modernos e gameplay renovado.',230,309,20,2),
    ('Gran Turismo 7 - Playstation 5','Experimente o simulador de corrida definitivo com carros realistas e pistas impressionantes.',240,319,20,1);

INSERT INTO fotosproduto
    (fotcaminho, fotdescricao, fotproid)
VALUES
    ('imgprodutos/img1.jpg', '', 1),
    ('imgprodutos/img2.jpg', '', 1),
    ('imgprodutos/img3.webp', '', 1),
    ('imgprodutos/img4.webp', '', 1),
    ('imgprodutos/img5.jpg', '', 1),
    ('imgprodutos/img6.jpg', '', 1);

