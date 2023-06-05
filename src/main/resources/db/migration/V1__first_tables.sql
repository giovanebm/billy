CREATE TABLE user (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) engine=InnoDB;

CREATE TABLE expense (
    id BIGINT NOT NULL AUTO_INCREMENT,
    date DATE NOT NULL,
    description VARCHAR(255) NOT NULL,
    value DECIMAL NOT NULL,
    status VARCHAR(50) NOT NULL,
    portion_current BIGINT NOT NULL,
    portion_max BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    payment_id BIGINT NOT NULL,
    category_id BIGINT NOT NULL,
    credit_card_id BIGINT NOT NULL,
    creditor_id BIGINT NOT NULL,
    debtor_id BIGINT NOT NULL,
    investment_id BIGINT NOT NULL,
    PRIMARY KEY (id)
) engine=InnoDB;

CREATE TABLE income (
    id BIGINT NOT NULL AUTO_INCREMENT,
    date DATE NOT NULL,
    description VARCHAR(255) NOT NULL,
    value DECIMAL NOT NULL,
    investment_id BIGINT NOT NULL,
    PRIMARY KEY (id)
) engine=InnoDB;

CREATE TABLE payment_method (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) engine=InnoDB;

CREATE TABLE expense_category (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) engine=InnoDB;

CREATE TABLE credit_card (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    due_date DATE NOT NULL,
    PRIMARY KEY (id)
) engine=InnoDB;

CREATE TABLE creditor (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) engine=InnoDB;

CREATE TABLE debtor (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) engine=InnoDB;

CREATE TABLE investment (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    initial_date DATE NOT NULL,
    due_date DATE NOT NULL,
    place VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) engine=InnoDB;

ALTER TABLE expense ADD CONSTRAINT Expenses_fk0 FOREIGN KEY (user_id) REFERENCES user(id);
ALTER TABLE expense ADD CONSTRAINT Expenses_fk1 FOREIGN KEY (payment_id) REFERENCES payment_method(id);
ALTER TABLE expense ADD CONSTRAINT Expenses_fk2 FOREIGN KEY (category_id) REFERENCES expense_category(id);
ALTER TABLE expense ADD CONSTRAINT Expenses_fk3 FOREIGN KEY (credit_card_id) REFERENCES credit_card(id);
ALTER TABLE expense ADD CONSTRAINT Expenses_fk4 FOREIGN KEY (creditor_id) REFERENCES creditor(id);
ALTER TABLE expense ADD CONSTRAINT Expenses_fk5 FOREIGN KEY (debtor_id) REFERENCES debtor(id);
ALTER TABLE expense ADD CONSTRAINT Expenses_fk6 FOREIGN KEY (investment_id) REFERENCES investment(id);
ALTER TABLE income ADD CONSTRAINT Incomes_fk0 FOREIGN KEY (investment_id) REFERENCES investment(id);