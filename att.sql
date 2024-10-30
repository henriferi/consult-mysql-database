-- Atualizar o nome de um paciente
UPDATE `Pacientes` SET nome = 'Novo Nome' WHERE paciente_id = 1;

-- Atualizar a especialidade de um dentista
UPDATE `Equipe Clínica` SET especialidade = 'Nova Especialidade' WHERE equipe_id = 2;

-- Atualizar detalhes de um registro clínico
UPDATE `Registros Clínicos` SET detalhes_tratamento = 'Tratamento atualizado' WHERE registro_id = 3;

-- Atualizar o custo em Faturamento e Pagamentos
UPDATE `Faturamento e Pagamentos` SET custo = 180.00 WHERE faturamento_id = 4;

-- Atualizar a cobertura de um seguro de saúde
UPDATE `Seguros de Saúde` SET cobertura = 'Cobertura ampliada' WHERE seguro_id = 5;

-- Atualizar valor e data de receita
UPDATE `Receitas e Despesas da Clínica` SET valor = 200.00, data = '2024-11-01' WHERE financa_id = 6;

-- Atualizar informações de um laboratório externo
UPDATE `Laboratórios Externos` SET contato = '(11) 98888-8888' WHERE laboratorio_id = 7;

-- Atualizar status de pagamento
UPDATE `Faturamento e Pagamentos` SET metodo_pagamento = 'Cheque' WHERE faturamento_id = 1;

-- Atualizar todos os registros de um paciente
UPDATE `Registros Clínicos` SET fk_paciente_id = 2 WHERE fk_paciente_id = 1;

-- Atualizar o histórico de trabalhos de um laboratório
UPDATE `Laboratórios Externos` SET historico_trabalhos = 'Novos serviços' WHERE laboratorio_id = 3;