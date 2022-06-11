<#import "parts/common.ftlh" as c>

<@c.page>
    <#assign known = Session.SPRING_SECURITY_CONTEXT??>

    <#if known>
        <#assign
        user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        name = user.getUsername()>

        <h2>Hello, ${name}!</h2>

        <a href="/main" class="btn btn-primary">Start messaging</a>
    <#else>
        <h2>Hello, guest!</h2>
        <form>
            <form>
                <h5>New user? <a href="/registration">Sign up</a></h5>
            </form>
            <form>
                <h5>Already have an account? <a href="/login">Log in</a></h5>
            </form>
        </form>
    </#if>
</@c.page>