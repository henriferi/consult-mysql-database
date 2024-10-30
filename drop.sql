

DROP VIEW IF EXISTS ; 

DROP PROCEDURE IF EXISTS ; 

DROP FUNCTION IF EXISTS ; 

-- Destruir todas as tabelas
SET FOREIGN_KEY_CHECKS = 0; -- Desativa as verificações de chave estrangeira temporariamente
DROP TABLE IF EXISTS `Pacientes`, `Agendamentos`, `Procedimentos Odontológicos`, 
                    `Equipe Clínica`, `Registros Clínicos`, `Faturamento e Pagamentos`, 
                    `Seguros de Saúde`, `Receitas e Despesas da Clínica`, `Laboratórios Externos`;
SET FOREIGN_KEY_CHECKS = 1; -- Reativa as verificações de chave estrangeira
