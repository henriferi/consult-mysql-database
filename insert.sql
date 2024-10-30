-- Tabela Pacientes
INSERT INTO `Pacientes` (paciente_id, nome, data_nascimento, endereco, telefone, historico_saude_bucal, seguro_id)
VALUES 
(1, 'Ana Silva', '1990-01-15', 'Rua A, 123', '(11) 98765-4321', 'Sem histórico de problemas graves', 1),
(2, 'Carlos Oliveira', '1985-07-25', 'Rua B, 456', '(11) 98234-5678', 'Tratamento de cáries', 2),
(3, 'Mariana Souza', '1992-03-12', 'Rua C, 789', '(11) 98765-4321', 'Histórico de gengivite', 3),
(4, 'Ricardo Almeida', '1988-06-05', 'Rua D, 101', '(11) 97456-1234', 'Sem histórico', 1),
(5, 'Fernanda Costa', '1995-12-20', 'Rua E, 202', '(11) 98765-9999', 'Tratamento de canal', 2),
(6, 'Luiz Santos', '1980-08-15', 'Rua F, 303', '(11) 96123-4567', 'Sem histórico', 3),
(7, 'Juliana Pereira', '1993-05-10', 'Rua G, 404', '(11) 99876-5432', 'Clareamento dental', 1),
(8, 'Diego Ferreira', '1987-09-30', 'Rua H, 505', '(11) 93333-3333', 'Acompanhamento de tratamento', 2),
(9, 'Sofia Lima', '1994-11-11', 'Rua I, 606', '(11) 92222-2222', 'Sem histórico', 3),
(10, 'Gabriel Rocha', '1991-02-22', 'Rua J, 707', '(11) 91111-1111', 'Cáries', 1),
(11, 'Bruna Martins', '1989-10-10', 'Rua K, 808', '(11) 94567-8901', 'Histórico de gengivite', 2),
(12, 'Victor Hugo', '1992-01-18', 'Rua L, 909', '(11) 90876-5431', 'Sem histórico', 3),
(13, 'Patrícia Dias', '1983-04-04', 'Rua M, 111', '(11) 92345-6789', 'Tratamento de ortodontia', 1),
(14, 'Eduardo Mendes', '1996-07-15', 'Rua N, 222', '(11) 93456-7890', 'Acompanhamento de tratamento', 2),
(15, 'Roberta Lima', '1989-11-30', 'Rua O, 210', '(11) 98234-9999', 'Clareamento dental', 3);

-- Tabela Agendamentos
INSERT INTO `Agendamentos` (agendamento_id, paciente_id, data, horario, tipo_procedimento, dentista_id, estado_paciente)
VALUES 
(1, 1, '2024-10-10', '09:00', 'Limpeza', 1, 'novo'),
(2, 2, '2024-10-11', '10:00', 'Consulta', 2, 'retorno'),
(3, 3, '2024-10-12', '11:00', 'Extração', 1, 'urgência'),
(4, 4, '2024-10-13', '14:00', 'Limpeza', 3, 'novo'),
(5, 5, '2024-10-14', '09:30', 'Consulta', 2, 'retorno'),
(6, 6, '2024-10-15', '10:30', 'Clareamento', 1, 'novo'),
(7, 7, '2024-10-16', '13:00', 'Consulta', 3, 'urgência'),
(8, 8, '2024-10-17', '15:00', 'Tratamento de canal', 1, 'novo'),
(9, 9, '2024-10-18', '09:00', 'Extração', 2, 'retorno'),
(10, 10, '2024-10-19', '10:00', 'Limpeza', 1, 'novo'),
(11, 11, '2024-10-20', '14:30', 'Consulta', 3, 'urgência'),
(12, 12, '2024-10-21', '09:15', 'Clareamento', 2, 'retorno'),
(13, 13, '2024-10-22', '11:45', 'Consulta', 1, 'novo'),
(14, 14, '2024-10-23', '10:30', 'Limpeza', 3, 'urgência'),
(15, 15, '2024-10-24', '15:30', 'Consulta', 2, 'retorno');

-- Tabela Procedimentos Odontológicos
INSERT INTO `Procedimentos Odontológicos` (procedimento_id, nome, descricao, custo)
VALUES 
(1, 'Limpeza', 'Limpeza de rotina', 150.00),
(2, 'Consulta', 'Consulta inicial', 100.00),
(3, 'Clareamento', 'Clareamento dental', 300.00),
(4, 'Extração', 'Extração de dente', 250.00),
(5, 'Tratamento de Canal', 'Tratamento para canal', 500.00),
(6, 'Restauração', 'Restauração de dente cariado', 200.00),
(7, 'Ortodontia', 'Tratamento ortodontia', 400.00),
(8, 'Implante', 'Implante dentário', 2000.00),
(9, 'Prótese', 'Prótese dentária', 1200.00),
(10, 'Radiografia', 'Radiografia odontológica', 100.00),
(11, 'Profilaxia', 'Profilaxia de dentes', 150.00),
(12, 'Fluoretação', 'Tratamento de fluoretação', 80.00),
(13, 'Bichectomia', 'Remoção de bolsas de gordura', 3000.00),
(14, 'Clareamento Caseiro', 'Clareamento feito em casa', 400.00),
(15, 'Aparelho Móvel', 'Aparelho dentário móvel', 800.00);

-- Tabela Equipe Clínica
INSERT INTO `Equipe Clínica` (equipe_id, nome, especializacao, numero_registro_profissional, contato)
VALUES 
(1, 'Dr. João', 'Dentista Geral', '12345', '(11) 99876-5432'),
(2, 'Dra. Maria', 'Ortodontista', '23456', '(11) 99876-5433'),
(3, 'Dr. Pedro', 'Periodontista', '34567', '(11) 99876-5434'),
(4, 'Dra. Juliana', 'Endodontista', '45678', '(11) 99876-5435'),
(5, 'Dr. Ricardo', 'Cirurgião Dentista', '56789', '(11) 99876-5436'),
(6, 'Dra. Ana', 'Implantodontista', '67890', '(11) 99876-5437'),
(7, 'Dr. Bruno', 'Dentista Geral', '78901', '(11) 99876-5438'),
(8, 'Dra. Carla', 'Ortodontista', '89012', '(11) 99876-5439'),
(9, 'Dr. Eduardo', 'Periodontista', '90123', '(11) 99876-5401'),
(10, 'Dra. Sofia', 'Endodontista', '01234', '(11) 99876-5402'),
(11, 'Dr. André', 'Cirurgião Dentista', '12346', '(11) 99876-5403'),
(12, 'Dra. Patrícia', 'Implantodontista', '23457', '(11) 99876-5404'),
(13, 'Dr. Lucas', 'Dentista Geral', '34568', '(11) 99876-5405'),
(14, 'Dra. Fabiana', 'Ortodontista', '45679', '(11) 99876-5406'),
(15, 'Dr. Felipe', 'Periodontista', '56780', '(11) 99876-5407');

-- Tabela Registros Clínicos
INSERT INTO `Registros Clínicos` (registro_id, paciente_id, dentista_id, data, detalhes_tratamento, diagnostico, prescricoes, recomendacoes)
VALUES 
(1, 1, 1, '2024-10-10', 'Limpeza feita', 'Saudável', 'Nenhuma', 'Retorno em 6 meses'),
(2, 2, 2, '2024-10-11', 'Consulta inicial', 'Cáries', 'Usar fio dental', 'Retorno em 3 meses'),
(3, 3, 1, '2024-10-12', 'Extração realizada', 'Dente comprometido', 'Antibiótico', 'Revisão em 2 semanas'),
(4, 4, 3, '2024-10-13', 'Limpeza feita', 'Saudável', 'Nenhuma', 'Retorno em 6 meses'),
(5, 5, 2, '2024-10-14', 'Consulta realizada', 'Cáries leves', 'Antibiótico', 'Retorno em 3 meses'),
(6, 6, 1, '2024-10-15', 'Clareamento realizado', 'Saudável', 'Nenhuma', 'Retorno em 6 meses'),
(7, 7, 3, '2024-10-16', 'Consulta realizada', 'Acompanhamento de tratamento', 'Recomendado fio dental', 'Retorno em 3 meses'),
(8, 8, 1, '2024-10-17', 'Tratamento realizado', 'Canal aberto', 'Medicamento', 'Retorno em 1 mês'),
(9, 9, 2, '2024-10-18', 'Extração realizada', 'Dente comprometido', 'Analgesico', 'Revisão em 2 semanas'),
(10, 10, 1, '2024-10-19', 'Limpeza realizada', 'Saudável', 'Nenhuma', 'Retorno em 6 meses'),
(11, 11, 3, '2024-10-20', 'Consulta realizada', 'Gengivite', 'Fluoretação', 'Retorno em 3 meses'),
(12, 12, 2, '2024-10-21', 'Clareamento realizado', 'Saudável', 'Nenhuma', 'Retorno em 6 meses'),
(13, 13, 1, '2024-10-22', 'Consulta realizada', 'Saudável', 'Nenhuma', 'Retorno em 6 meses'),
(14, 14, 3, '2024-10-23', 'Limpeza realizada', 'Saudável', 'Nenhuma', 'Retorno em 6 meses'),
(15, 15, 2, '2024-10-24', 'Consulta realizada', 'Saudável', 'Nenhuma', 'Retorno em 6 meses');

-- Tabela Faturamento e Pagamentos
INSERT INTO `Faturamento e Pagamentos` (faturamento_id, paciente_id, procedimento_id, custo, seguro_utilizado, metodo_pagamento)
VALUES 
(1, 1, 1, 150.00, 'Sim', 'Cartão'),
(2, 2, 2, 100.00, 'Não', 'Dinheiro'),
(3, 3, 3, 300.00, 'Sim', 'Cartão'),
(4, 4, 4, 250.00, 'Não', 'Dinheiro'),
(5, 5, 5, 500.00, 'Sim', 'Cartão'),
(6, 6, 6, 200.00, 'Não', 'Dinheiro'),
(7, 7, 7, 400.00, 'Sim', 'Cartão'),
(8, 8, 8, 2000.00, 'Não', 'Transferência'),
(9, 9, 9, 1200.00, 'Sim', 'Cartão'),
(10, 10, 10, 100.00, 'Não', 'Dinheiro'),
(11, 11, 11, 150.00, 'Sim', 'Cartão'),
(12, 12, 12, 80.00, 'Não', 'Dinheiro'),
(13, 13, 13, 3000.00, 'Sim', 'Transferência'),
(14, 14, 14, 400.00, 'Não', 'Dinheiro'),
(15, 15, 15, 800.00, 'Sim', 'Cartão');

-- Tabela Seguros de Saúde
INSERT INTO `Seguros de Saúde` (seguro_id, nome_seguro, numero_apolice, cobertura)
VALUES 
(1, 'Plano Saúde A', 'APL12345', 'Consultas e emergências'),
(2, 'Plano Saúde B', 'APL23456', 'Procedimentos básicos e ortodontia'),
(3, 'Plano Saúde C', 'APL34567', 'Tratamento completo'),
(4, 'Plano Saúde D', 'APL45678', 'Consultas e emergências'),
(5, 'Plano Saúde E', 'APL56789', 'Procedimentos básicos e ortodontia'),
(6, 'Plano Saúde F', 'APL67890', 'Tratamento completo'),
(7, 'Plano Saúde G', 'APL78901', 'Consultas e emergências'),
(8, 'Plano Saúde H', 'APL89012', 'Procedimentos básicos e ortodontia'),
(9, 'Plano Saúde I', 'APL90123', 'Tratamento completo'),
(10, 'Plano Saúde J', 'APL01234', 'Consultas e emergências'),
(11, 'Plano Saúde K', 'APL12346', 'Procedimentos básicos e ortodontia'),
(12, 'Plano Saúde L', 'APL23457', 'Tratamento completo'),
(13, 'Plano Saúde M', 'APL34568', 'Consultas e emergências'),
(14, 'Plano Saúde N', 'APL45679', 'Procedimentos básicos e ortodontia'),
(15, 'Plano Saúde O', 'APL56780', 'Tratamento completo');

-- Tabela Receitas e Despesas da Clínica
INSERT INTO `Receitas e Despesas da Clínica` (financa_id, tipo, descricao, valor, data)
VALUES 
(1, 'Receita', 'Consulta Paciente 1', 150.00, '2024-10-10'),
(2, 'Receita', 'Consulta Paciente 2', 100.00, '2024-10-11'),
(3, 'Despesa', 'Compra de materiais', 500.00, '2024-10-11'),
(4, 'Receita', 'Consulta Paciente 3', 300.00, '2024-10-12'),
(5, 'Despesa', 'Salário Dentista', 4000.00, '2024-10-13'),
(6, 'Receita', 'Consulta Paciente 4', 250.00, '2024-10-14'),
(7, 'Despesa', 'Aluguel', 2000.00, '2024-10-15'),
(8, 'Receita', 'Consulta Paciente 5', 500.00, '2024-10-16'),
(9, 'Despesa', 'Conta de luz', 300.00, '2024-10-17'),
(10, 'Receita', 'Consulta Paciente 6', 150.00, '2024-10-18'),
(11, 'Despesa', 'Conta de água', 150.00, '2024-10-19'),
(12, 'Receita', 'Consulta Paciente 7', 400.00, '2024-10-20'),
(13, 'Receita', 'Consulta Paciente 8', 2000.00, '2024-10-21'),
(14, 'Despesa', 'Material de escritório', 100.00, '2024-10-22'),
(15, 'Despesa', 'Manutenção Equipamentos', 800.00, '2024-10-23');

-- Tabela Laboratórios Externos
INSERT INTO `Laboratórios Externos` (laboratorio_id, nome, contato, historico_trabalhos)
VALUES 
(1, 'Lab Dental A', '(11) 99999-1111', 'Próteses e implantes'),
(2, 'Lab Dental B', '(11) 99999-2222', 'Radiografias e exames'),
(3, 'Lab Dental C', '(11) 99999-3333', 'Aparelhos ortodônticos'),
(4, 'Lab Dental D', '(11) 99999-4444', 'Tratamentos estéticos'),
(5, 'Lab Dental E', '(11) 99999-5555', 'Clareamento dental'),
(6, 'Lab Dental F', '(11) 99999-6666', 'Tratamentos de canal'),
(7, 'Lab Dental G', '(11) 99999-7777', 'Restauradores'),
(8, 'Lab Dental H', '(11) 99999-8888', 'Radiografias'),
(9, 'Lab Dental I', '(11) 99999-9999', 'Próteses dentárias'),
(10, 'Lab Dental J', '(11) 99998-1111', 'Implantes dentários'),
(11, 'Lab Dental K', '(11) 99998-2222', 'Tratamentos ortodônticos'),
(12, 'Lab Dental L', '(11) 99998-3333', 'Análises clínicas'),
(13, 'Lab Dental M', '(11) 99998-4444', 'Odontopediatria'),
(14, 'Lab Dental N', '(11) 99998-5555', 'Tratamentos de gengiva'),
(15, 'Lab Dental O', '(11) 99998-6666', 'Estética dental');