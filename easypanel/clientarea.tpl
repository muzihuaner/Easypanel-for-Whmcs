<link rel="stylesheet" href="hhttps://gcore.jsdelivr.net/npm/fontawesome-4.7@4.7.0/css/font-awesome.min.css">

<div class="ep-modern-container" id="easypanel-container">
    
    <div class="ep-header-card">
        <div class="ep-header-main">
            <div class="ep-product-info">
                <h3 class="ep-title">{$product}</h3>
                <div class="ep-status-tags">
                    <span class="ep-badge ep-badge-{$status|lower}">
                        <i class="fa fa-circle"></i> {$status}
                    </span>
                    <span class="ep-expire-date">
                        <i class="fa fa-calendar-check-o"></i> 到期时间: <strong>{$nextduedate}</strong>
                    </span>
                </div>
            </div>
            <div class="ep-actions">
                <form action="http://{$serverip}:3312/vhost/?c=session&a=login" method="post" target="_blank" class="ep-inline-form">
                    <input type="hidden" name="username" value="{$username}" />
                    <input type="hidden" name="passwd" value="{$password}" />
                    <button type="submit" class="ep-btn ep-btn-primary">
                        <i class="fa fa-bolt"></i> 免密登录面板
                    </button>
                </form>
                <a href="http://{$serverip}:3312/vhost/?c=session&a=loginForm" target="_blank" class="ep-btn ep-btn-outline mt-2">
                    <i class="fa fa-external-link"></i> 登录页
                </a>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="ep-info-card">
                <div class="ep-card-head">
                    <i class="fa fa-hdd-o"></i> 服务器配置
                </div>
                <div class="ep-card-body">
                    <div class="ep-info-item">
                        <span class="label-text">IP 解析</span>
                        <span class="value-text">{$serverhostname}</span>
                    </div>
                    <div class="ep-info-item">
                        <span class="label-text">WEB 容量</span>
                        <span class="value-text">{$web}</span>
                    </div>
                    <div class="ep-info-item">
                        <span class="label-text">数据库容量</span>
                        <span class="value-text">{$db}</span>
                    </div>
                    <div class="ep-info-item ep-no-border">
                        <span class="label-text">月流量</span>
                        <span class="value-text">{$flow}</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="ep-info-card">
                <div class="ep-card-head">
                    <i class="fa fa-lock"></i> 账户凭据
                </div>
                <div class="ep-card-body">
                    <div class="ep-info-item">
                        <span class="label-text">管理账号</span>
                        <span class="value-text"><strong>{$username}</strong></span>
                    </div>
                    <div class="ep-info-item">
                        <span class="label-text">数据库名</span>
                        <span class="value-text">{$username}</span>
                    </div>
                    <div class="ep-info-item">
                        <span class="label-text">面板/DB密码</span>
                        <div class="ep-password-box">
                            <input type="password" value="{$password}" readonly id="accPass" class="ep-pass-input">
                            <button class="ep-copy-btn" onclick="copyPassword()">
                                <i class="fa fa-copy"></i>
                            </button>
                        </div>
                    </div>
                    <div class="ep-tips-box">
                        <i class="fa fa-info-circle"></i> 数据库密码与账户初始密码一致
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="ep-footer-alert">
        <i class="fa fa-warning"></i> 
        <span>禁止违规站点，请务必遵守《用户服务条款（Terms of Service）》</span>
    </div>
</div>

<style>
/* 核心容器 */
.ep-modern-container {
    padding: 10px 0;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    color: #444;
}

/* 顶部信息卡片 */
.ep-header-card {
    background: #fff;
    border-radius: 12px;
    padding: 25px;
    margin-bottom: 25px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.05);
    border-left: 5px solid #337ab7;
}

.ep-header-main {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}

.ep-title {
    margin: 0 0 10px 0;
    font-weight: 700;
    color: #2c3e50;
    font-size: 22px;
}

/* 状态标签 */
.ep-badge {
    padding: 4px 12px;
    border-radius: 50px;
    font-size: 12px;
    font-weight: 600;
    text-transform: uppercase;
}
.ep-badge i { font-size: 8px; vertical-align: middle; margin-right: 4px; }
.ep-badge-active { background: #e6f4ea; color: #1e7e34; }
.ep-badge-pending { background: #fff3cd; color: #856404; }
.ep-badge-suspended { background: #f8d7da; color: #721c24; }

.ep-expire-date {
    margin-left: 15px;
    color: #7f8c8d;
    font-size: 14px;
}

/* 按钮样式 */
.ep-btn {
    padding: 10px 20px;
    border-radius: 8px;
    font-weight: 600;
    transition: all 0.3s ease;
    border: none;
    cursor: pointer;
    display: inline-block;
    text-decoration: none !important;
}
.ep-btn-primary { background: #337ab7; color: white !important; }
.ep-btn-primary:hover { background: #286090; transform: translateY(-2px); box-shadow: 0 4px 10px rgba(51,122,183,0.3); }

.ep-btn-outline { background: #f8f9fa; color: #666 !important; border: 1px solid #ddd; margin-left: 8px; }
.ep-btn-outline:hover { background: #eee; border-color: #ccc; }

/* 详情卡片 */
.ep-info-card {
    background: #fff;
    border-radius: 12px;
    margin-bottom: 20px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.03);
    overflow: hidden;
    border: 1px solid #eaeaea;
}

.ep-card-head {
    background: #fcfcfc;
    padding: 15px 20px;
    font-weight: 700;
    border-bottom: 1px solid #f0f0f0;
    color: #333;
}

.ep-card-body { padding: 10px 20px; }

.ep-info-item {
    display: flex;
    justify-content: space-between;
    padding: 12px 0;
    border-bottom: 1px dashed #eee;
    align-items: center;
}
.ep-no-border { border-bottom: none; }

.label-text { color: #888; font-size: 14px; }
.value-text { color: #333; font-weight: 500; }

/* 密码框优化 */
.ep-password-box {
    display: flex;
    background: #f4f7f9;
    border-radius: 6px;
    padding: 4px 8px;
    border: 1px solid #e1e8ed;
}
.ep-pass-input {
    border: none;
    background: transparent;
    font-family: monospace;
    width: 100px;
    color: #337ab7;
}
.ep-copy-btn {
    border: none;
    background: none;
    color: #888;
    cursor: pointer;
}
.ep-copy-btn:hover { color: #337ab7; }

.ep-tips-box {
    margin-top: 15px;
    padding: 10px;
    background: #f8f9fa;
    border-radius: 6px;
    font-size: 12px;
    color: #999;
    text-align: center;
}

/* 底部警告 */
.ep-footer-alert {
    background: #fffcf5;
    border: 1px solid #ffeeba;
    color: #856404;
    padding: 15px;
    border-radius: 10px;
    text-align: center;
    margin-top: 10px;
}

/* 响应式适配 */
@media (max-width: 768px) {
    .ep-header-main { flex-direction: column; text-align: center; }
    .ep-actions { margin-top: 20px; width: 100%; }
    .ep-btn { width: 100%; margin: 5px 0 !important; }
    .ep-expire-date { display: block; margin: 10px 0 0 0; }
}
</style>

<script>
function copyPassword() {
    var copyText = document.getElementById("accPass");
    copyText.type = 'text'; // 暂时转为 text 以便复制
    copyText.select();
    document.execCommand("copy");
    copyText.type = 'password'; // 转回 password
    alert("密码已成功复制到剪贴板");
}
</script>