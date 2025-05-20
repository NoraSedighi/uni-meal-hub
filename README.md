# uni-meal-hub

این پروژه طراحی یک پایگاه داده رابطه‌ای برای **سیستم سلف دانشگاه** است که به **دانشجویان و اساتید** اجازه می‌دهد:
- ثبت‌نام در سیستم
- مشاهده منوی غذایی روزانه
- ثبت سفارش غذا برای روز خاص
- این سیستم نقش‌های مختلف کاربران را پشتیبانی کرده و با استفاده از foreign key ها سازگاری و یکپارچگی داده‌ها را تضمین می‌کند
  *جدول هایی که طراحی کردم*:
  ### 👤 Person (افراد)
                                                                                                                            اطلاعات عمومی کاربران شامل دانشجویان و اساتید

- `person_id` (primary key)
- `name` (نام)
- `email` (ایمیل)
- `role` ( `student` یا `professor`)
  
### 🎓 Student (دانشجویان)
ا                                                                                                                            اطلاعات اختصاصی مربوط به دانشجویان

- `person_id` ( person به جدول primary key/ foreign key )
- `student_number` (شماره دانشجویی)
- `major` (رشته تحصیلی)

  
### 👨‍🏫 Professor (اساتید)
                                                                                                                            اطلاعات اختصاصی اساتید

- `person_id` ( person به جدول primary key/ foreign key)
- `professor_number` (شماره پرسنلی)
- `department` (دانشکده/دپارتمان)

  ### 🍛 Meal (غذاها)
                                                                                                                            فهرست غذاهای قابل ارائه در سلف دانشگاه

- `meal_id` (primary key)
- `name` (نام غذا)
- `description` (توضیحات)
- `price` (قیمت)

  ### 📅 DailyMenu (منوی روزانه)
                                                                                                                            لیستی از غذاهای ارائه شده در یک روز خاص

- `menu_id` (primary key)
- `meal_id`  (meal به foreign key)
- `menu_date` (تاریخ منو)

  ### 🧾 Orders (سفارش‌ها)
                                                                                                                            سفارش‌های ثبت‌شده توسط کاربران

- `order_id` (primary key)
- `person_id` (person به foreign key)
- `meal_id` (meal به foreign key)
- `quantity` (تعداد)
- `order_date` (تاریخ سفارش)

 پایگاه داده تا سطح سوم نرمال سازی شده :
- حذف داده‌ های تکراری
- تمام ستون‌ ها فقط‌ کلید وابسته به کلید اصلی هستند
- عدم وجود وابستگی‌های انتقالی بین ستون‌ها


 
این هم اسکرین شات از دیاگرام پروژه:



![image](https://github.com/user-attachments/assets/45cb3815-f79b-4d92-ac77-9e633c2606cc)
