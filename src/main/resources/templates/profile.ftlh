<#import "blocks/template.ftlh" as t>
<#import "blocks/footer.ftlh" as f>
<@t.template user>
    <h1 style="text-align: center">Личный кабинет</h1>
    <hr>
    <br>
    <div style="text-align: center">
        <img src="/static/images/avatar.png"
             style="border:2px solid black; border-radius: 20px" height="120">
        <br>
        <br>
        <h2>${user.name}</h2>
        <br>
        Электоронная почта: <b>${user.email}</b>
        <br>
        Номер телефона: <b>${user.phoneNumber}</b>
        <br>
        <br>
        <#if user.isAdmin()>
            <button class="btn btn-dark mb-3 for-button" style="text-align: center; width: 100%"
                    onclick="location.href='/admin';">
                Панель администратора
            </button>
        </#if>
        <button class="btn btn-dark mb-3 for-button" style="text-align: center; width: 100%"
                onclick="location.href='/my/courses';">
            Предметы
        </button>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" style="text-align: center; width: 100%" class="btn mb-2 btn-danger">
                Выйти из аккаунта
            </button>
        </form>
    </div>
</@t.template>

<@f.template user>
</@f.template>