# Easypanel for Whmcs
Easypanel对接Whmcs插件。  

支持Whmcs远程开通、删除、更改密码。较完美支持Whmcs原版计费系统

## 使用方法：  
### 安装EsayPanel

http://kangle.cccyun.cn/

### 部署WHMCS插件

①将下载的压缩包上传到 你的网站/modules/servers ，解压。  
②返回到Whmcs后台，添加服务器，Type选择Easypanel，填写Username和Password，Access Hash填写EP安全码，安全码在EP后台可设置。取消勾选SSL保存。  
③添加服务器组  
④添加产品，注意"默认绑定到子目录"必须填写，否则开通的主机不能使用，一般就用wwwroot就行。 
![截图 2026-04-19 15-25-48.png](https://files.seeusercontent.com/2026/04/19/hXd3/2026-04-19-15-25-48.png) 

如果你已经在EsayPanel里定义好了产品（网站管理-产品列表）  
只需要填写下面的内容即可：  
默认绑定到子目录 /wwwroot  
数据库类型 mysql  
勾选 是否允许ftp  
产品名称 lite（你的产品名称）  

更新：
1. 修复WHMCS9.0报错问题。
2. 修复用户名为空时无法自动开通的问题。
3. 优化客户区域UI

