<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>List of users</h2>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Role</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a class="btn btn-primary ms-3" href="/user/${user.id}">edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>