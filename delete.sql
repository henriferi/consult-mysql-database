-- Deletar registros da tabela Pacientes
DELETE FROM `Pacientes` WHERE paciente_id = 1;

-- Deletar registros da tabela Equipe Clínica
DELETE FROM `Equipe Clínica` WHERE equipe_id = 2;

-- Deletar registros da tabela Registros Clínicos
DELETE FROM `Registros Clínicos` WHERE registro_id = 3;

-- Deletar registros da tabela Faturamento e Pagamentos
DELETE FROM `Faturamento e Pagamentos` WHERE faturamento_id = 4;

-- Deletar registros da tabela Seguros de Saúde
DELETE FROM `Seguros de Saúde` WHERE seguro_id = 5;

-- Deletar registros da tabela Receitas e Despesas da Clínica
DELETE FROM `Receitas e Despesas da Clínica` WHERE financa_id = 6;

-- Deletar registros da tabela Laboratórios Externos
DELETE FROM `Laboratórios Externos` WHERE laboratorio_id = 7;

-- Deletar múltiplos registros da tabela Pacientes
DELETE FROM `Pacientes` WHERE paciente_id IN (2, 3);

-- Deletar registros da tabela Equipe Clínica com uma condição
DELETE FROM `Equipe Clínica` WHERE nome LIKE 'Dr. A%';

-- Deletar todos os registros da tabela Registros Clínicos
DELETE FROM `Registros Clínicos`;