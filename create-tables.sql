create table person(
                       person_id int primary key ,
                       name nvarchar(255),
                       email nvarchar(255),
                       role enum('student', 'professor')
);

create table student(
                        person_id int primary key ,
                        student_number nvarchar(127),
                        major nvarchar(127),
                        foreign key (person_id) references person(person_id)
);

create table professor(
                          person_id int primary key ,
                          professor_number nvarchar(63),
                          department nvarchar(255),
                          foreign key (person_id) references person(person_id)
);

create table meal(
                     meal_id int primary key ,
                     name varchar(255),
                     description text,
                     price decimal(10, 2)
);

create table daily_menu(
                           menu_id int primary key ,
                           meal_id int,
                           menu_date date,
                           foreign key (meal_id) references meal(meal_id)
);

create table orders(
                       order_id int primary key,
                       person_id int,
                       meal_id int,
                       quantity int,
                       order_date date,
                       foreign key (person_id) references person (person_id),
                       foreign key (meal_id) references meal (meal_id)
);