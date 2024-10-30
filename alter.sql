-- alterar 

ALTER TABLE Pacientes
ADD COLUMN email VARCHAR(100);

ALTER TABLE Pacientes
MODIFY COLUMN telefone VARCHAR(25);

ALTER TABLE Pacientes
CHANGE COLUMN historico_saude_bucal historico_medico TEXT;

ALTER TABLE Agendamentos
ADD COLUMN status_agendamento ENUM('ativo', 'cancelado') DEFAULT 'ativo';

CREATE INDEX idx_data ON Agendamentos(data);

ALTER TABLE Pacientes
ADD COLUMN cpf VARCHAR(11) UNIQUE;


ALTER TABLE Pacientes
ADD CONSTRAINT fk_seguro_paciente
FOREIGN KEY (seguro_id)
REFERENCES Seguros(seguro_id);

ALTER TABLE `Procedimentos Odontológicos`
MODIFY COLUMN descricao TEXT;

ALTER TABLE `Registros Clínicos`
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `Equipe Clínica`
DROP COLUMN numero_registro_profissional;