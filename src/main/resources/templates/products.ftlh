<!DOCTYPE html>
<html>
<head>
    <title>KubasyaService</title>
</head>
<body>
<h1>Welcome to my service</h1><hr>
<h4>Я лох как мне быть?</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
</#list>
</body>
</html>