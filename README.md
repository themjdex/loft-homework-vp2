# Выполнить выпускной проект №3
1. Установите Laravel.
2. Спроектируйте базу данных для хранения информации о товарах и категориях.
3. Опишите базу данных в виде миграций формата Eloquent.
Используя спроектированную базу данных разработайте интернет-каталог на Laravel.

### Пользователь:

1. Может зарегистрироваться
2. Может просматривать
- список категорий
- список товаров
- страницу одного товара 
3. По нажатию кнопки купить, со страницы одного товара, пользователю предлагается связаться с менеджером и просят оставить Имя и email. E-mail подставляется в форму из данных об авторизованном пользователе. Имя, E-mail и id товара записывается в базу.

### Товар:

Имеет следующие характеристики:
* название
* категория
* цена
* фотография
* описание

### Категория:

Имеет следующие характеристики:
* название
* описание

### Заказы:

1. Пользователь может оставить заявку на покупку товара. id товара и email пользователя записывается.
2. Администратор получает уведомление на E-mail через SMTP

### Администратор:

* Может создавать\редактирование\удалять категории
* Может создавать\редактировать\удалять товары
* Может просматривать заказы
* Может установить\изменить адрес для получения уведомлений.
* Права администратора можно получить поставив галочку при регистрации
