INSERT INTO USUARIOS(NOME_USUARIO, EMAIL, CPF, TELEFONE, DATA_NASCIMENTO, PERMISSAO)
VALUES ('EDGAR', 'edgarneto@gmail.com', '12345678911', '9814732456', '2000-06-01', 'ADMIN'),
       ('PAULO', 'paulo@gmail.com', '12345678921', '972837561', '2000-01-10', 'SECRETARIO'),
       ('ANDRESSA', 'andressa@gmail.com', '12345678931', '976341223', '2000-10-10', 'PACIENTE');
INSERT INTO CONSULTAS(DATA_CONSULTA, ESPECIALIDADE, PROFISSIONAL, ID_USUARIO)
VALUES ('2024-12-12', 'UROLOGISTA', 'Dr.KidBengala', 1),
       ('2024-12-12', 'CARDIOLOGIA', 'Dra.CibellyFerreira', 2);