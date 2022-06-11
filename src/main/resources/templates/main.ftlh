<#import "parts/common.ftlh" as c>
<#import "parts/loginPart.ftlh" as l>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <div class="mb-3">
                    <label for="themeSearch" class="form-label">Search by theme</label>
                    <input type="text" name="filter" class="form-control" value="${filter!}" id="themeSearch"
                           placeholder="Search by theme">
                </div>
                <div class="mb-4">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </form>
        </div>
    </div>
    <div>
        <form method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="message" class="form-label">Message</label>
                <input type="text" name="text" class="form-control" id="message"
                       placeholder="Enter message">
            </div>
            <div class="mb-3">
                <label for="theme" class="form-label">Theme</label>
                <input type="text" name="tag" class="form-control" id="theme"
                       placeholder="Enter theme">
            </div>
            <button type="submit" class="btn btn-primary mb-4">Add</button>
        </form>
    </div>
    <div><h2>Messages</h2></div>
    <div class="card-columns">
        <#list messages as message>
            <div class="card my-4">
                <div class="card">
                    <b>#${message.id}</b>
                    <span>${message.text}</span>
                    <i>Theme: ${message.tag}</i>
                </div>
                <div class="card-footer text-muted">
                    <strong>${message.getAuthorName()}</strong>
                </div>
            </div>
        <#else>
            No message
        </#list>
    </div>

</@c.page>