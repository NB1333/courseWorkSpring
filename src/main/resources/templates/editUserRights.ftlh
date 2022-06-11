<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>Edit user rights</h2>

    <form action="/user" method="post">
        <#list roles as role>
            <div>
                <label>
                    <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
                </label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <button class="btn btn-primary mt-3" type="submit">Save</button>
    </form>
</@c.page>