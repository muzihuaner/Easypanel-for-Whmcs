<link rel="stylesheet" href="{$systemurl}modules/servers/easypanel/theme/style.css">

<div class="easypanel-client-area" id="easypanel-container">

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default panel-accent-blue box">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-8">
                            <h3 class="m-t-0 m-b-5">{$product}</h3>
                            <span class="label label-{if $status eq 'Active'}success{elseif $status eq 'Pending'}warning{elseif $status eq 'Suspended'}danger{else}default{/if}">
                                {$status}
                            </span>
                            <span class="text-muted m-l-10"><i class="fa fa-clock-o"></i> 到期时间: {$nextduedate}</span>
                        </div>
                        <div class="col-md-4 text-right sm-text-left m-t-sm-10">
                            <form action="http://{$serverip}:3312/vhost/?c=session&a=login" method="post" target="_blank" style="display:inline-block;">
                                <input type="hidden" name="username" value="{$username}" />
                                <input type="hidden" name="passwd" value="{$password}" />
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-sign-in"></i> 免密登录控制面板
                                </button>
                            </form>
                            <a href="http://{$serverip}:3312/vhost/?c=session&a=loginForm" target="_blank" class="btn btn-default" style="margin-left: 5px;">
                                <i class="fa fa-external-link"></i> 登录页
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default box">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-server"></i> 服务器信息</h3>
                </div>
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td width="40%">CNAME解析</td>
                            <td>{$serverhostname}</td>
                        </tr>
                        <tr>
                            <td>IP解析</td>
                            <td>{$serverhostname}</td>
                        </tr>
                        <tr>
                            <td>WEB容量</td>
                            <td>{$web}</td>
                        </tr>
                        <tr>
                            <td>数据库容量</td>
                            <td>{$db}</td>
                        </tr>
                         <tr>
                            <td>月流量</td>
                            <td>{$flow}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="col-md-6">
            <div class="panel panel-default box">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-user"></i> 账户凭据</h3>
                </div>
                 <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td width="40%">账户名称</td>
                            <td><strong>{$username}</strong></td>
                        </tr>
                        <tr>
                            <td>初始密码</td>
                            <td>
                                <div class="input-group" style="max-width: 200px;">
                                    <input type="text" class="form-control input-sm" value="{$password}" readonly id="accPass">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default btn-sm" type="button" onclick="var copyText = document.getElementById('accPass');copyText.select();document.execCommand('copy');alert('已复制');"><i class="fa fa-copy"></i></button>
                                    </span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>数据库名</td>
                            <td>{$username}</td>
                        </tr>
                         <tr>
                            <td>数据库密码</td>
                            <td>
                                <span class="text-muted">同账户密码</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="alert alert-warning text-center" style="margin-top: 20px;">
        <i class="fa fa-exclamation-triangle"></i> 禁止违规站点，请遵守《用户服务条款（Terms of Service）》
    </div>

</div>

<style>
.panel-accent-blue {
    border-top: 3px solid #337ab7;
}
.sm-text-left {
    text-align: right;
}
@media (max-width: 768px) {
    .sm-text-left {
        text-align: left;
        margin-top: 15px;
    }
    .m-t-sm-10 {
        margin-top: 10px;
    }
}
</style>