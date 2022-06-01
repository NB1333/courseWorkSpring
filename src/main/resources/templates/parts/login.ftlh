<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="mb-3">
            <label for="usernameField" class="form-label">Username</label>
            <input type="text" name="username" class="form-control" id="usernameField" placeholder="username">
        </div>
        <div class="mb-3">
            <label for="passwordField" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" id="passwordField" placeholder="password">
        </div><#if !isRegisterForm><a href="/registration">Add new user</a></#if>
        <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button class="btn btn-primary" type="submit">Sign Out</button>
    </form>
</#macro>