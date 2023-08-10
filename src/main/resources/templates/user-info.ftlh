<!DOCTYPE html>
<html>
<head>
    <title>KubasyaService</title>
</head>
<body>
<h1>GO AWAY Bro</h1>
<h3>Инфа про лоха: ${user.name}</h3>
<b>мобила: </b> ${user.phoneNumber}<br>
<b>мыло: </b> ${user.email}<br>
<h4>Товары пользователя ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price}$| <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>He is not sell it</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>