-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema IIB2_UE2_Gruppe01
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema IIB2_UE2_Gruppe01
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `IIB2_UE2_Gruppe01` DEFAULT CHARACTER SET utf8 ;
USE `IIB2_UE2_Gruppe01` ;

-- -----------------------------------------------------
-- Table `IIB2_UE2_Gruppe01`.`Beruf`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `IIB2_UE2_Gruppe01`.`Beruf` ;

CREATE TABLE IF NOT EXISTS `IIB2_UE2_Gruppe01`.`Beruf` (
  `brf_id` INT NOT NULL AUTO_INCREMENT,
  `brf_berufname` VARCHAR(70) NULL,
  `brf_spezialisierung` VARCHAR(50) NULL,
  PRIMARY KEY (`brf_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IIB2_UE2_Gruppe01`.`Nutzer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `IIB2_UE2_Gruppe01`.`Nutzer` ;

CREATE TABLE IF NOT EXISTS `IIB2_UE2_Gruppe01`.`Nutzer` (
  `ntz_email` VARCHAR(50) NOT NULL,
  `ntz_passwort` VARCHAR(256) NOT NULL,
  `ntz_name` VARCHAR(50) NULL,
  `ntz_vorname` VARCHAR(50) NULL,
  `Beruf_brf_id` INT NOT NULL,
  PRIMARY KEY (`ntz_email`),
  INDEX `fk_Nutzer_Beruf_idx` (`Beruf_brf_id` ASC),
  CONSTRAINT `fk_Nutzer_Beruf`
    FOREIGN KEY (`Beruf_brf_id`)
    REFERENCES `IIB2_UE2_Gruppe01`.`Beruf` (`brf_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IIB2_UE2_Gruppe01`.`Sanierungsauftrag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `IIB2_UE2_Gruppe01`.`Sanierungsauftrag` ;

CREATE TABLE IF NOT EXISTS `IIB2_UE2_Gruppe01`.`Sanierungsauftrag` (
  `snr_id` INT NOT NULL AUTO_INCREMENT,
  `snr_ifcpfad` MEDIUMTEXT NULL,
  `snr_gebaeude` MEDIUMTEXT NULL,
  `snr_status` ENUM('eingegangen', 'handwerker_beauftragt', 'erledigt', 'reklamiert') NULL,
  `snr_beschreibung` MEDIUMTEXT NULL,
  PRIMARY KEY (`snr_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IIB2_UE2_Gruppe01`.`LnSiehtAn`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `IIB2_UE2_Gruppe01`.`LnSiehtAn` ;

CREATE TABLE IF NOT EXISTS `IIB2_UE2_Gruppe01`.`LnSiehtAn` (
  `lns_id` INT NOT NULL AUTO_INCREMENT,
  `Nutzer_ntz_email` VARCHAR(50) NOT NULL,
  `Sanierungsauftrag_snr_id` INT NOT NULL,
  PRIMARY KEY (`lns_id`),
  INDEX `fk_LnSiehtAn_Nutzer1_idx` (`Nutzer_ntz_email` ASC),
  INDEX `fk_LnSiehtAn_Sanierungsauftrag1_idx` (`Sanierungsauftrag_snr_id` ASC),
  CONSTRAINT `fk_LnSiehtAn_Nutzer1`
    FOREIGN KEY (`Nutzer_ntz_email`)
    REFERENCES `IIB2_UE2_Gruppe01`.`Nutzer` (`ntz_email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LnSiehtAn_Sanierungsauftrag1`
    FOREIGN KEY (`Sanierungsauftrag_snr_id`)
    REFERENCES `IIB2_UE2_Gruppe01`.`Sanierungsauftrag` (`snr_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `IIB2_UE2_Gruppe01`.`Beruf`
-- -----------------------------------------------------
START TRANSACTION;
USE `IIB2_UE2_Gruppe01`;
INSERT INTO `IIB2_UE2_Gruppe01`.`Beruf` (`brf_id`, `brf_berufname`, `brf_spezialisierung`) VALUES (1, 'Anlagentechniker für Sanitär-, Heizungs- und Klimatechnik', 'Wassertechnik');
INSERT INTO `IIB2_UE2_Gruppe01`.`Beruf` (`brf_id`, `brf_berufname`, `brf_spezialisierung`) VALUES (2, 'Anlagentechniker für Sanitär-, Heizungs- und Klimatechnik', 'Wärmetechnik');
INSERT INTO `IIB2_UE2_Gruppe01`.`Beruf` (`brf_id`, `brf_berufname`, `brf_spezialisierung`) VALUES (3, 'Elektroniker für Energie- und Gebäudetechnik', NULL);
INSERT INTO `IIB2_UE2_Gruppe01`.`Beruf` (`brf_id`, `brf_berufname`, `brf_spezialisierung`) VALUES (4, 'Maler', NULL);
INSERT INTO `IIB2_UE2_Gruppe01`.`Beruf` (`brf_id`, `brf_berufname`, `brf_spezialisierung`) VALUES (5, 'Bauplaner', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `IIB2_UE2_Gruppe01`.`Nutzer`
-- -----------------------------------------------------
START TRANSACTION;
USE `IIB2_UE2_Gruppe01`;
INSERT INTO `IIB2_UE2_Gruppe01`.`Nutzer` (`ntz_email`, `ntz_passwort`, `ntz_name`, `ntz_vorname`, `Beruf_brf_id`) VALUES ('karl.hofmann@maler.de', 'karl', 'Karl', 'Hofmann', 4);
INSERT INTO `IIB2_UE2_Gruppe01`.`Nutzer` (`ntz_email`, `ntz_passwort`, `ntz_name`, `ntz_vorname`, `Beruf_brf_id`) VALUES ('fritz.fischer@wassertechnik.de', 'fritz', 'Fritz', 'Fischer', 1);
INSERT INTO `IIB2_UE2_Gruppe01`.`Nutzer` (`ntz_email`, `ntz_passwort`, `ntz_name`, `ntz_vorname`, `Beruf_brf_id`) VALUES ('julia.meier@baudezernat.de', 'julia', 'Julia', 'Meier', 5);
INSERT INTO `IIB2_UE2_Gruppe01`.`Nutzer` (`ntz_email`, `ntz_passwort`, `ntz_name`, `ntz_vorname`, `Beruf_brf_id`) VALUES ('max.schulz@baudezernat.de', 'max', 'Max', 'Schulz', 5);

COMMIT;


-- -----------------------------------------------------
-- Data for table `IIB2_UE2_Gruppe01`.`Sanierungsauftrag`
-- -----------------------------------------------------
START TRANSACTION;
USE `IIB2_UE2_Gruppe01`;
INSERT INTO `IIB2_UE2_Gruppe01`.`Sanierungsauftrag` (`snr_id`, `snr_ifcpfad`, `snr_gebaeude`, `snr_status`, `snr_beschreibung`) VALUES (1, NULL, 'Wohnhaus', 'eingegangen', 'Alte Tapete entfernen und neu tapezieren.');
INSERT INTO `IIB2_UE2_Gruppe01`.`Sanierungsauftrag` (`snr_id`, `snr_ifcpfad`, `snr_gebaeude`, `snr_status`, `snr_beschreibung`) VALUES (2, NULL, 'Wohnhaus', 'erledigt', 'Weiß streichen.');
INSERT INTO `IIB2_UE2_Gruppe01`.`Sanierungsauftrag` (`snr_id`, `snr_ifcpfad`, `snr_gebaeude`, `snr_status`, `snr_beschreibung`) VALUES (3, NULL, 'Wohnhaus', 'handwerker_beauftragt', 'Waschbecken austauschen.');
INSERT INTO `IIB2_UE2_Gruppe01`.`Sanierungsauftrag` (`snr_id`, `snr_ifcpfad`, `snr_gebaeude`, `snr_status`, `snr_beschreibung`) VALUES (4, NULL, 'Fabrik', 'handwerker_beauftragt', 'Rohre verlegen.');

COMMIT;


-- -----------------------------------------------------
-- Data for table `IIB2_UE2_Gruppe01`.`LnSiehtAn`
-- -----------------------------------------------------
START TRANSACTION;
USE `IIB2_UE2_Gruppe01`;
INSERT INTO `IIB2_UE2_Gruppe01`.`LnSiehtAn` (`lns_id`, `Nutzer_ntz_email`, `Sanierungsauftrag_snr_id`) VALUES (1, 'fritz.fischer@wassertechnik.de', 3);
INSERT INTO `IIB2_UE2_Gruppe01`.`LnSiehtAn` (`lns_id`, `Nutzer_ntz_email`, `Sanierungsauftrag_snr_id`) VALUES (2, 'fritz.fischer@wassertechnik.de', 4);
INSERT INTO `IIB2_UE2_Gruppe01`.`LnSiehtAn` (`lns_id`, `Nutzer_ntz_email`, `Sanierungsauftrag_snr_id`) VALUES (3, 'karl.hofmann@maler.de', 1);
INSERT INTO `IIB2_UE2_Gruppe01`.`LnSiehtAn` (`lns_id`, `Nutzer_ntz_email`, `Sanierungsauftrag_snr_id`) VALUES (4, 'karl.hofmann@maler.de', 2);

COMMIT;

