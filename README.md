### 项目开发部署工具
* 数据库：MySQL8.0以上
* 项目构建构建工具：Maven3
* 项目部署工具：Tomcat8
  
* 项目结构
    ```
        -config  项目基础配置，数据库信息配置
        -controller Controller类
        -dao 数据持久层
        -entity 实体类
        -filter 过滤器
        -service 业务逻辑层
        -util 工具包
        -App 基础配置类
    ```
  * 详细的文档说明在<code>doc</code>目录下
---
### 操作流程
* [x] 首页



* [x] 点击餐桌进入菜单页



* [x] 右侧的搜索框(搜索菜名)


* [x] 点击图片进入详情页(选择加入餐车)



* [x] 点击右下角查看菜单可以看到已点的菜



* [x] 点击下单进入到订单页



* [x] 点击结账(流程结束)

* [x] 本地输入localhost:8080/IHotel/login 进入商家后台登陆

> 账号：aa@aa.aa    密码：123456


### 项目运行步骤
* 先导入.sql文件到数据库
* 使用maven打包项目得到.war包
* 修改数据库配置信息
* 将生成的.war包放到Tomcat的webapps目录下
* 使用 localhost:8080/IHotel访问

