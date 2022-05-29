<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter!}" placeholder="Search by theme">
                <button type="submit" class="btn btn-primary ml-2">Search</button>
            </form>
        </div>
    </div>

        <div class="card card-body">
            <div class="form-group mt-3">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>
                            <input type="text" class="form-control" name="text" placeholder="Enter message" />
                        </label>
                    </div>
                    <div class="form-group">
                        <label>
                            <input type="text" class="form-control" name="tag" placeholder="Theme">
                        </label>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">Enter</button>
                    </div>
                </form>
            </div>
        </div>

    <div class="card-columns">
        <#list messages as message>
            <div class="card my-3">
                <div class="m-2">
                    <span>${message.text}</span>
                    <i>${message.tag}</i>
                </div>
                <div class="card-footer text-muted">
                    ${message.authorName}
                </div>
            </div>
        <#else>
            No messages
        </#list>
    </div>
</@c.page>