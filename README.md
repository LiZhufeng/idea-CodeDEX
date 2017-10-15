# CodeDEX
共享CodeDEX问题以及解决方法，我老婆镇楼
![圣人惠](https://gss0.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/c75c10385343fbf29b60a7afb67eca8064388fe9.jpg)
### 目前存在的问题：
1、首页，不需要获取Question所有的字段，可以把link单独取出来放到一个表中
-> 后续：都不需要存储link，因为网页上显示的数据都从数据库加载，故使用同一个jsp文件加载codedex

2、跳转到提交codeDEX的页面的时候，其实最好显示问题的描述。这样需要通过POST提交数据

### 任务：
1、添加存储codeDEX的页面，需要两个文件：提供输入框的upload_codedex.jsp，以及真正执行数据库的插入操作的upload.jsp（已完成）
2、问题与codeDEX：添加问题，修改问题，修改codeDEX
3、普通用户和超级用户（普通用户只能登录后查看，超级用户可以添加和修改）：数据库添加用户字段、login.jsp

### 学到的东西：
1、停止加载直接用return。

2、对于使用Statement来执行insert操作，不能通过execute方法的返回值来判断是否执行成功，而要用executeUpdate方法。
[参考资料](http://blog.csdn.net/gavinloo/article/details/6890459)

### 参考网站
[1、TortoiseGit配置密钥](http://blog.csdn.net/bendanbaichi1989/article/details/17916795)

[2、TortoiseGit 上传到远端](http://blog.csdn.net/chenqiangdage/article/details/45958951)

[3、HTML表单设计](http://blog.csdn.net/hxh1994/article/details/42610481)

[4、更好看的表单样式](http://www.laozuo.org/3495.html)

[5、Haroopad-markdown编辑器](http://blog.csdn.net/wangshubo1989/article/details/53007104)

[6、引入CSS样式](http://www.divcss5.com/rumen/r56.shtml)

[7、设置tomcat的起始页](https://zhidao.baidu.com/question/1989849001795555387.html)

[8、idea-创建jsp工程](https://www.zhihu.com/question/35967146)

[9、idea-将项目上传到git仓库](http://blog.csdn.net/autfish/article/details/52513465)

