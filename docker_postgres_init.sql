CREATE TYPE sex AS ENUM ('female', 'male');

create table titanic_passengers
(
    SURVIVED INT,
    P_CLASS INT,
    P_NAME VARCHAR,
    SEX sex,
    AGE DECIMAL,
    SIBLINGS_SPOUSES_ABOARD INT,
    PARENTS_CHILDREN_ABOARD INT,
    FARE NUMERIC
);

COPY titanic_passengers FROM '/titanic/titanic.csv' DELIMITER ',' CSV HEADER;
