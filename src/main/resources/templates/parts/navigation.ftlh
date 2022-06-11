<#include "security.ftlh">
<#import "loginPart.ftlh" as l>

<nav class="navbar navbar-expand-lg bg-light">


    <a class="navbar-brand ms-4" href="/">Forum</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="nav me-auto">
            <li class="nav-item">
                <a class="nav-link" href="/main">Message</a>
            </li>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">List of users</a>
                </li>
            </#if>
        </ul>

        <div class="navbar-text me-3">${name}</div>
        <#assign known = Session.SPRING_SECURITY_CONTEXT??>
        <#if known>
            <div class="navbar-text me-3"><@l.logout /></div>
        <#else>
            <div class="navbar-text me-3">
                <a href="/login" class="btn btn-primary" role="button">Log in</a>
            </div>
        </#if>
    </div>
</nav>