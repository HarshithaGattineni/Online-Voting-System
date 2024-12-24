# Disable unique checks, foreign key checks, and set SQL mode for compatibility
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS; 
SET UNIQUE_CHECKS=0;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS;
SET FOREIGN_KEY_CHECKS=0;

SET @OLD_SQL_MODE=@@SQL_MODE; 
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

# -----------------------------------------------------
# Table `candidate` (Master Table)
# -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `candidate` (
  `candidate_id` INT(11) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NULL DEFAULT NULL,
  `last_name` VARCHAR(255) NULL DEFAULT NULL,
  `gender` VARCHAR(45) NULL DEFAULT NULL,
  `age` INT(11) NULL DEFAULT NULL,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `city` VARCHAR(255) NULL DEFAULT NULL,
  `state` VARCHAR(255) NULL DEFAULT NULL,
  `zipcode` INT(11) NULL DEFAULT NULL,
  `phonenumber` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8mb4;

# -----------------------------------------------------
# Table `election` (Master Table)
# -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `election` (
  `election_id` INT(11) NOT NULL AUTO_INCREMENT,
  `election_name` VARCHAR(255) NULL DEFAULT NULL,
  `start_date` DATE NULL DEFAULT NULL,
  `end_date` DATE NULL DEFAULT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`election_id`)
) ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb4;

# -----------------------------------------------------
# Table `party` (Master Table)
# -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `party` (
  `party_id` INT(11) NOT NULL AUTO_INCREMENT,
  `party_name` VARCHAR(100) NULL DEFAULT NULL,
  `party_symbol` VARCHAR(100) NULL DEFAULT NULL,
  `party_image` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`party_id`)
) ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4;

# -----------------------------------------------------
# Table `voter` (Master Table)
# -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `voter` (
  `email` VARCHAR(255) NOT NULL,
  `first_name` VARCHAR(255) NULL DEFAULT NULL,
  `last_name` VARCHAR(255) NULL DEFAULT NULL,
  `age` INT(11) NULL DEFAULT NULL,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `mobile` VARCHAR(15) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

# -----------------------------------------------------
# Table `ballot_box` (Child Table)
# -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ballot_box` (
  `ballot_box_id` INT(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` INT(11) NULL DEFAULT NULL,
  `election_id` INT(11) NULL DEFAULT NULL,
  `party_id` INT(11) NULL DEFAULT NULL,
  `election_name` VARCHAR(45) NULL DEFAULT NULL,
  `candidate_name` VARCHAR(45) NULL DEFAULT NULL,
  `party_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`ballot_box_id`),
  INDEX `fk_candidate` (`candidate_id` ASC) VISIBLE,
  INDEX `fk_election` (`election_id` ASC) VISIBLE,
  INDEX `fk_party` (`party_id` ASC) VISIBLE,
  CONSTRAINT `fk_candidate`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `candidate` (`candidate_id`),
  CONSTRAINT `fk_election`
    FOREIGN KEY (`election_id`)
    REFERENCES `election` (`election_id`),
  CONSTRAINT `fk_party`
    FOREIGN KEY (`party_id`)
    REFERENCES `party` (`party_id`)
) ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4;

# -----------------------------------------------------
# Table `vote` (Child Table)
# -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vote` (
  `vote_id` INT(11) NOT NULL AUTO_INCREMENT,
  `ballot_box_id` INT(11) NULL DEFAULT NULL,
  `party_name` VARCHAR(45) NULL DEFAULT NULL,
  `candidate_name` VARCHAR(45) NULL DEFAULT NULL,
  `username` VARCHAR(45) NULL DEFAULT NULL,
  `election_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`vote_id`),
  INDEX `fk_ballot_box` (`ballot_box_id` ASC) VISIBLE,
  INDEX `fk_username` (`username` ASC) VISIBLE,
  CONSTRAINT `fk_ballot_box`
    FOREIGN KEY (`ballot_box_id`)
    REFERENCES `ballot_box` (`ballot_box_id`),
  CONSTRAINT `fk_username`
    FOREIGN KEY (`username`)
    REFERENCES `voter` (`email`)
) ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4;

# Restore default session values
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
