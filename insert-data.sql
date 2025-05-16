insert into person(person_id, name, email, role)
values (1, 'Sara', 'thisissara@gmail.com', 'student');

insert into person(person_id, name, email, role)
values (2, 'Ms Ahmadi', 'ttahmadi61@gmail.com', 'professor');

insert into student(person_id, student_number, major)
values (1, '99123456', 'Computer Engineering');

insert into professor(person_id, professor_number, department)
values (2, '12345', 'Mathematics & Computer Science');

insert into meal(meal_id, name, description, price)
values (1, 'kebab', 'Iranian food', 120);

insert into meal(meal_id, name, description, price)
values (2, 'pizza', 'fast food', 100);

insert into meal(meal_id, name, description, price)
values (3, 'cake', 'dessert', 60);

insert into meal(meal_id, name, description, price)
values (4, 'lemonade', 'drink', 50);

insert into daily_menu(menu_id, meal_id, menu_date)
values (1, 1, '2025-05-17');

insert into daily_menu(menu_id, meal_id, menu_date)
values (2, 2, '2025-05-18');

insert into daily_menu(menu_id, meal_id, menu_date)
values (3, 3, '2025-05-17');

insert into daily_menu(menu_id, meal_id, menu_date)
values (4, 4, '2025-05-18');

insert into orders(order_id, person_id, meal_id, quantity, order_date)
values (1, 1, 1, 1, '2025-05-16');

insert into orders(order_id, person_id, meal_id, quantity, order_date)
values (2, 2, 2, 2, '2025-05-17');