CREATE TABLE public.PERSONS (
    name varchar(60) NOT NULL,
    surname varchar(60) NOT NULL,
    age smallint NOT NULL,
    phone_number varchar(10),
    city_of_living varchar(60) NOT NULL,
    CONSTRAINT pk PRIMARY KEY (name, surname, age)
);