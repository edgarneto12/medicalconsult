INSERT INTO USUARIOS(NOME_USUARIO, EMAIL_USUARIO, CPF_USUARIO, TELEFONE_USUARIO, DATA_NASCIMENTO, PERMISSAO)
VALUES ('EDGAR', 'edgar@gmail.com', '12345678911', '81995687496', '2004-05-13', 'ADMIN'),
       ('PAULO', 'paulo@gmail.com', '12345678921', '81928565418', '2003-03-20', 'SECRETARIO'),
       ('ANDRESSA', 'andressa@gmail.com', '12345678998', '83965852579', '2000-12-10', 'PACIENTE');

INSERT INTO CONSULTAS(DATA_CONSULTA, ESPECIALIDADE, PROFISSIONAL, ID_USUARIO)
VALUES ('2024-12-12', 'CARDIOLOGISTA', 'Dr.Atestados', 3),
       ('2024-12-12', 'CLINICO_GERAL', 'Dra.Atestados', 3);