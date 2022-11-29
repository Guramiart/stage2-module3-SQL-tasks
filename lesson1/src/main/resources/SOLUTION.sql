CREATE TABLE Student
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL,
    birthday DATE NOT NULL,
    group INT NOT NULL
);
CREATE TABLE Subject
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL,
    description VARCHAR,
    grade INT
);
CREATE TABLE PaymentType
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL
);
CREATE TABLE Payment
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id BIGINT NOT NULL,
    foreign key (type_id) references PaymentType(id),
    amount DECIMAL,
    student_id BIGINT NOT NULL,
    foreign key (student_id) references Student(id),
    payment_date TIMESTAMP NOT NULL
);
CREATE TABLE Mark
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT NOT NULL,
    foreign key (student_id) references Student(id),
    subject_id BIGINT NOT NULL,
    foreign key (subject_id) references Subject(id),
    mark INT NOT NULL
);