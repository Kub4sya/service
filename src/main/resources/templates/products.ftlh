<!DOCTYPE html>
<html>
<head>
    <title>KubasyaService</title>
</head>
<body>
<h1>Welcome to my service | <a href="/login">Войти</a></h1><hr>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
</form>
<h4>Я лох как мне быть?</h4>
<form action="/" method="get">
    Поиск по названию: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
    <input type="submit" value="Выйти"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price}$| <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название объявления: <input type="text" name="title"/><br><br>
    Описание объявления: <input type="text" name="description"/><br><br>
    Состояние товара: <input type="text" name="condition"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Город: <input type="text" name="city"/><br><br>
    Автор: <input type="text" name="author"/><br><br>
    Первая фотография: <input type="file" name="file1"/><br><br>
    Вторая фотография: <input type="file" name="file2"/><br><br>
    Третья фотография: <input type="file" name="file3"/><br><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>