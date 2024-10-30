-- 1. View para pacientes agendados para procedimentos
CREATE OR REPLACE VIEW vw_pacientes_agendados AS
SELECT p.paciente_id, p.nome, a.data, a.horario, a.tipo_procedimento
FROM `Pacientes` p
JOIN `Agendamentos` a ON p.paciente_id = a.paciente_id;

-- 2. View para procedimentos associados a cada paciente
CREATE OR REPLACE VIEW vw_procedimentos_paciente AS
SELECT p.paciente_id, p.nome, pr.nome AS procedimento
FROM `Pacientes` p
JOIN `Registros Clínicos` rc ON p.paciente_id = rc.paciente_id
JOIN `Procedimentos Odontológicos` pr ON rc.procedimento_id = pr.procedimento_id;

-- 3. View para dentistas disponíveis para um procedimento
CREATE OR REPLACE VIEW vw_dentistas_disponiveis AS
SELECT d.equipe_id, d.nome, a.tipo_procedimento
FROM `Equipe Clínica` d
JOIN `Agendamentos` a ON d.equipe_id = a.dentista_id;

-- 4. View para o histórico clínico de um paciente
CREATE OR REPLACE VIEW vw_historico_clinico AS
SELECT rc.registro_id, rc.data, rc.diagnostico, rc.prescricoes
FROM `Registros Clínicos` rc;

-- 5. View para custo total dos procedimentos em um período
CREATE OR REPLACE VIEW vw_custos_periodo AS
SELECT SUM(f.custo) AS total_custos
FROM `Faturamento e Pagamentos` f
WHERE f.data BETWEEN '2024-01-01' AND '2024-12-31';

-- 6. View para seguros de saúde associados a pacientes
CREATE OR REPLACE VIEW vw_seguros_pacientes AS
SELECT p.paciente_id, p.nome, s.nome_seguro
FROM `Pacientes` p
JOIN `Seguros de Saúde` s ON p.seguro_id = s.seguro_id;

-- 7. View para laboratórios externos com contratos
CREATE OR REPLACE VIEW vw_laboratorios_externos AS
SELECT l.laboratorio_id, l.nome
FROM `Laboratórios Externos` l;

-- 8. View para registros clínicos de um dentista específico
CREATE OR REPLACE VIEW vw_registros_por_dentista AS
SELECT rc.registro_id, rc.data, rc.diagnostico
FROM `Registros Clínicos` rc;

-- 9. View para total de receitas e despesas da clínica
CREATE OR REPLACE VIEW vw_total_financas AS
SELECT SUM(valor) AS total_financas
FROM `Receitas e Despesas da Clínica`;

-- 10. View para procedimentos com maior custo
CREATE OR REPLACE VIEW vw_procedimentos_maior_custo AS
SELECT nome, custo
FROM `Procedimentos Odontológicos`
ORDER BY custo DESC;