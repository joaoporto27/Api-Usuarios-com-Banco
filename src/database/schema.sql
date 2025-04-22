CREATE DATABASE cadastro;

\c cadastro

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    photo TEXT
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    image TEXT NOT NULL,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users (name, email) VALUES 
    ('Thiago Ferreira', 'thiago.ferreira@email.com'),
    ('Marcelo Carboni', 'marcelo@email.com'),
    ('Eduardo Correia', 'eduardo@email.com'),
    ('Felipe Santos', 'felipe@email');


INSERT INTO posts (title, image, user_id) VALUES 
    ('Post 1', 'https:/imagem.com', 1),
    ('Post 2', 'https:/imagem.com', 2),
    ('Post 3', 'https:/imagem.com', 3);

INSERT INTO users (name, email, photo) VALUES  
    ('Carlos Eduardo', 'carloseduardo@email.com', null),
    ('Luiz Carvalho', 'luizcarvalho@email.com', null),
    ('Gustavo Porto', 'guporto@email.com', null),
    ('Luciano Porto', 'luporto@email.com', null),
    ('Rachel Porto ', 'raporto@email.com', null),
    ('Lionel Messi', 'lionel.messi@email.com', null),
    ('Cristiano Ronaldo', 'cristiano.ronaldo@email.com', null),
    ('Neymar Jr', 'neymar.jr@email.com', null),
    ('Kylian Mbappé', 'kylian.mbappe@email.com', null),
    ('Robert Lewandowski', 'robert.lewandowski@email.com', null),
    ('Kevin De Bruyne', 'kevin.debruyne@email.com', null),
    ('Mohamed Salah', 'mohamed.salah@email.com', null),
    ('Virgil van Dijk', 'virgil.vandijk@email.com', null),
    ('Karim Benzema', 'karim.benzema@email.com', null),
    ('Erling Haaland', 'erling.haaland@email.com', null),
    ('Luka Modric', 'luka.modric@email.com', null),
    ('Sergio Ramos', 'sergio.ramos@email.com', null),
    ('Harry Kane', 'harry.kane@email.com', null),
    ('Paulo Dybala', 'paulo.dybala@email.com', null),
    ('Eden Hazard', 'eden.hazard@email.com', null),
    ('Zlatan Ibrahimovic', 'zlatan.ibrahimovic@email.com', null),
    ('Gareth Bale', 'gareth.bale@email.com', null),
    ('Luis Suárez', 'luis.suarez@email.com', null),
    ('Manuel Neuer', 'manuel.neuer@email.com', null),
    ('Toni Kroos', 'toni.kroos@email.com', null),
    ('Gerard Piqué', 'gerard.pique@email.com', null),
    ('Li Wei', 'li.wei@email.com', null),
    ('Wang Fang', 'wang.fang@email.com', null),
    ('Zhang Wei', 'zhang.wei@email.com', null),
    ('Liu Yang', 'liu.yang@email.com', null),
    ('TeoKung Myadora', 'teokung.myadora@email.com', null),
    ('Chen Jie', 'chen.jie@email.com', null),
    ('Zhao Min', 'zhao.min@email.com', null),
    ('Sun Hao', 'sun.hao@email.com', null),
    ('Zhou Lei', 'zhou.lei@email.com', null),
    ('Wu Jing', 'wu.jing@email.com', null),
    ('Xu Yan', 'xu.yan@email.com', null),
    ('Hu Xia', 'hu.xia@email.com', null),
    ('Guo Lin', 'guo.lin@email.com', null),
    ('Ma Qiang', 'ma.qiang@email.com', null),
    ('He Ping', 'he.ping@email.com', null),
    ('Gao Feng', 'gao.feng@email.com', null),
    ('Lin Shu', 'lin.shu@email.com', null),
    ('Deng Hui', 'deng.hui@email.com', null),
    ('Cai Ning', 'cai.ning@email.com', null),
    ('Feng Yu', 'feng.yu@email.com', null),
    ('Tang Bo', 'tang.bo@email.com', null),
    ('Volin Raba', 'volin.raba@email.com', null),
    ('Zheng Li', 'zheng.li@email.com', null),
    ('Qin Hua', 'qin.hua@email.com', null),
    ('Bao Ling', 'bao.ling@email.com', null);