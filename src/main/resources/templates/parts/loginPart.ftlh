<#macro login path isRegisterForm>
    <form action="/login" method="post">
        <div class="mb-3">
            <label for="usernameField" class="form-label">Username</label>
            <input type="text" name="username" class="form-control" id="usernameField" placeholder="username">
        </div>
        <div class="mb-3">
            <label for="passwordField" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" id="passwordField" placeholder="password">
        </div>
        <button class="btn btn-primary me-2" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button class="btn btn-primary" type="submit">Sign out</button>
    </form>
</#macro>