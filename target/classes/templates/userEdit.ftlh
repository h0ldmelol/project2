<#import "parts/common.ftlh" as c>

<@c.page>
    User editor
    <form action="/user" method="post">
        <input type="text" value="username" name="${user.username}">
        <#list user.roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Save</button>
    </form>
</@c.page>