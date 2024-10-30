-- scripts de criação


CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Seguros de Saúde`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Seguros de Saúde` (
  `seguro_id` INT NOT NULL AUTO_INCREMENT,
  `nome_seguro` VARCHAR(100) NULL,
  `numero_apolice` VARCHAR(50) NULL,
  `cobertura` TEXT NULL,
  PRIMARY KEY (`seguro_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pacientes` (
  `paciente_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `data_nascimento` DATE NULL,
  `endereco` VARCHAR(150) NULL,
  `fk_seguro_id` INT NULL,
  `historico_saude_bucal` TEXT NULL,
  `telefone` VARCHAR(15) NULL,
  PRIMARY KEY (`paciente_id`),
  INDEX `seguro_id_idx` (`fk_seguro_id` ASC) VISIBLE,
  CONSTRAINT `fk_seguro_id`
    FOREIGN KEY (`fk_seguro_id`)
    REFERENCES `mydb`.`Seguros de Saúde` (`seguro_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Equipe Clínica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipe Clínica` (
  `equipe_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `especializacao` VARCHAR(50) NULL,
  `numero_registro_profissional` VARCHAR(20) NULL,
  `contato` VARCHAR(15) NULL,
  PRIMARY KEY (`equipe_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Agendamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Agendamentos` (
  `agendamento_id` INT NOT NULL AUTO_INCREMENT,
  `fk_agendamento_paciente_id` INT NULL,
  `data` DATE NULL,
  `horario` TIME NULL,
  `tipo_procedimento` VARCHAR(50) NULL,
  `fk_agendamentos_dentista_id` INT NULL,
  `estado_paciente` ENUM('novo', 'retorno', 'urgência') NULL,
  PRIMARY KEY (`agendamento_id`),
  INDEX `paciente_id_idx` (`fk_agendamento_paciente_id` ASC) VISIBLE,
  INDEX `dentista_id_idx` (`fk_agendamentos_dentista_id` ASC) VISIBLE,
  CONSTRAINT `fk_agendamento_paciente_id`
    FOREIGN KEY (`fk_agendamento_paciente_id`)
    REFERENCES `mydb`.`Pacientes` (`paciente_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_agendamentos_dentista_id`
    FOREIGN KEY (`fk_agendamentos_dentista_id`)
    REFERENCES `mydb`.`Equipe Clínica` (`equipe_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Procedimentos Odontológicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Procedimentos Odontológicos` (
  `procedimento_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `descricao` TEXT NULL,
  `custo` DECIMAL(10,2) NULL,
  PRIMARY KEY (`procedimento_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Registros Clínicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Registros Clínicos` (
  `registro_id` INT NOT NULL AUTO_INCREMENT,
  `fk_registro_paciente_id` INT NULL,
  `fk_registro_dentista_id` INT NULL,
  `data` DATE NULL,
  `detalhes_tratamento` TEXT NULL,
  `diagnostico` TEXT NULL,
  `prescricoes` TEXT NULL,
  `recomendacoes` TEXT NULL,
  PRIMARY KEY (`registro_id`),
  INDEX `paciente_id_idx` (`fk_registro_paciente_id` ASC) VISIBLE,
  INDEX `dentista_id_idx` (`fk_registro_dentista_id` ASC) VISIBLE,
  CONSTRAINT `fk_registro_paciente_id`
    FOREIGN KEY (`fk_registro_paciente_id`)
    REFERENCES `mydb`.`Pacientes` (`paciente_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_registro_dentista_id`
    FOREIGN KEY (`fk_registro_dentista_id`)
    REFERENCES `mydb`.`Equipe Clínica` (`equipe_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Faturamento e Pagamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Faturamento e Pagamentos` (
  `faturamento_id` INT NOT NULL AUTO_INCREMENT,
  `fk_faturamento_pagamento_paciente_id` INT NULL,
  `fk_faturamento_pagamento_procedimento_id` INT NULL,
  `custo` DECIMAL(10,2) NULL,
  `seguro_utilizado` TINYINT NULL,
  `metodo_pagamento` ENUM('dinheiro', 'cartão', 'transferência', 'outro') NULL,
  PRIMARY KEY (`faturamento_id`),
  INDEX `paciente_id_idx` (`fk_faturamento_pagamento_paciente_id` ASC) VISIBLE,
  INDEX `procedimento_id_idx` (`fk_faturamento_pagamento_procedimento_id` ASC) VISIBLE,
  CONSTRAINT `fk_faturamento_pagamento_paciente_id`
    FOREIGN KEY (`fk_faturamento_pagamento_paciente_id`)
    REFERENCES `mydb`.`Pacientes` (`paciente_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_faturamento_pagamento_procedimento_id`
    FOREIGN KEY (`fk_faturamento_pagamento_procedimento_id`)
    REFERENCES `mydb`.`Procedimentos Odontológicos` (`procedimento_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Receitas e Despesas da Clínica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Receitas e Despesas da Clínica` (
  `financa_id` INT NOT NULL AUTO_INCREMENT,
  `tipo` ENUM('receita', 'despesa') NULL,
  `descricao` TEXT NULL,
  `valor` DECIMAL(10,2) NULL,
  `data` DATE NULL,
  PRIMARY KEY (`financa_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Laboratórios Externos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Laboratórios Externos` (
  `laboratorio_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `contato` VARCHAR(15) NULL,
  `historico_trabalhos` TEXT NULL,
  PRIMARY KEY (`laboratorio_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Procedimentos_Registros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Procedimentos_Registros` (
  `Odontológicos_procedimento_id` INT NOT NULL,
  `Registros Clínicos_registro_id` INT NOT NULL,
  PRIMARY KEY (`Odontológicos_procedimento_id`, `Registros Clínicos_registro_id`),
  INDEX `fk_Procedimentos Odontológicos_has_Registros Clínicos_Reg_idx` (`Registros Clínicos_registro_id` ASC) VISIBLE,
  INDEX `fk_Procedimentos Odontológicos_has_Registros Clínicos_Pro_idx` (`Odontológicos_procedimento_id` ASC) VISIBLE,
  CONSTRAINT `fk_Procedimentos Odontológicos_has_Registros Clínicos_Proce1`
    FOREIGN KEY (`Odontológicos_procedimento_id`)
    REFERENCES `mydb`.`Procedimentos Odontológicos` (`procedimento_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Procedimentos Odontológicos_has_Registros Clínicos_Regis1`
    FOREIGN KEY (`Registros Clínicos_registro_id`)
    REFERENCES `mydb`.`Registros Clínicos` (`registro_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;