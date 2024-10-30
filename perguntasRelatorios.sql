-- Perguntas/Relatórios

-- 1. Pacientes agendados para procedimentos
SELECT p.nome, a.data, a.horario, a.tipo_procedimento 
FROM `Pacientes` p 
JOIN `Agendamentos` a ON p.paciente_id = a.paciente_id;

-- 2. Procedimentos associados a cada paciente
SELECT p.nome, pr.nome AS procedimento 
FROM `Pacientes` p 
JOIN `Registros Clínicos` rc ON p.paciente_id = rc.paciente_id 
JOIN `Procedimentos Odontológicos` pr ON rc.procedimento_id = pr.procedimento_id;

-- 3. Dentistas disponíveis para um procedimento
SELECT d.nome 
FROM `Equipe Clínica` d 
JOIN `Agendamentos` a ON d.equipe_id = a.dentista_id 
WHERE a.tipo_procedimento = 'Procedimento X';

-- 4. Histórico clínico de um paciente
SELECT rc.data, rc.diagnostico, rc.prescricoes 
FROM `Registros Clínicos` rc 
WHERE rc.paciente_id = 1;

-- 5. Custo total dos procedimentos em um período
SELECT SUM(f.custo) AS total_custos 
FROM `Faturamento e Pagamentos` f 
WHERE f.data BETWEEN '2024-01-01' AND '2024-12-31';

-- 6. Seguros de saúde associados a pacientes
SELECT p.nome, s.nome_seguro 
FROM `Pacientes` p 
JOIN `Seguros de Saúde` s ON p.seguro_id = s.seguro_id;

-- 7. Laboratórios externos com contratos
SELECT l.nome 
FROM `Laboratórios Externos` l;

-- 8. Registros clínicos de um dentista específico
SELECT rc.data, rc.diagnostico 
FROM `Registros Clínicos` rc 
WHERE rc.dentista_id = 1;

-- 9. Total de receitas e despesas da clínica
SELECT SUM(valor) AS total_financas 
FROM `Receitas e Despesas da Clínica` 
WHERE data BETWEEN '2024-01-01' AND '2024-12-31';

-- 10. Procedimentos com maior custo
SELECT nome, custo 
FROM `Procedimentos Odontológicos` 
ORDER BY custo DESC LIMIT 5;

-- 11. Pacientes com agendamentos de urgência
SELECT p.nome, a.data, a.horario 
FROM `Pacientes` p 
JOIN `Agendamentos` a ON p.paciente_id = a.paciente_id 
WHERE a.estado_paciente = 'urgência';

-- 12. Média de custo por paciente
SELECT AVG(f.custo) AS media_custo 
FROM `Faturamento e Pagamentos` f;

-- 13. Pacientes sem seguro de saúde
SELECT p.nome 
FROM `Pacientes` p 
WHERE p.seguro_id IS NULL;

-- 14. Especialização dos dentistas
SELECT d.nome, d.especializacao 
FROM `Equipe Clínica` d;

-- 15. Detalhes dos tratamentos prescritos para um paciente
SELECT rc.detalhes_tratamento 
FROM `Registros Clínicos` rc 
WHERE rc.paciente_id = 1;

-- 16. Pacientes que tiveram retorno ao dentista
SELECT DISTINCT p.nome 
FROM `Pacientes` p 
JOIN `Agendamentos` a ON p.paciente_id = a.paciente_id 
WHERE a.estado_paciente = 'retorno';

-- 17. Total de faturamento por mês
SELECT MONTH(f.data) AS mes, SUM(f.custo) AS total_faturamento 
FROM `Faturamento e Pagamentos` f 
GROUP BY mes;

-- 18. Procedimentos relacionados ao histórico de saúde bucal
SELECT p.nome, pr.nome 
FROM `Pacientes` p 
JOIN `Registros Clínicos` rc ON p.paciente_id = rc.paciente_id 
JOIN `Procedimentos Odontológicos` pr ON rc.procedimento_id = pr.procedimento_id;

-- 19. Dentistas que atenderam mais pacientes
SELECT d.nome, COUNT(rc.paciente_id) AS total_pacientes 
FROM `Equipe Clínica` d 
JOIN `Registros Clínicos` rc ON d.equipe_id = rc.dentista_id 
GROUP BY d.nome 
ORDER BY total_pacientes DESC;

-- 20. Pacientes com gastos superiores a um valor específico
SELECT p.nome 
FROM `Pacientes` p 
JOIN `Faturamento e Pagamentos` f ON p.paciente_id = f.paciente_id 
GROUP BY p.nome 
HAVING SUM(f.custo) > 1000;
