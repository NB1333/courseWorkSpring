<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <h2>Create new account</h2>
    ${message!}
    <@l.login "/registration" true />
</@c.page>