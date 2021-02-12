## 使用说明：
#### 同公司的小伙伴如有不明白可询问作者：王新驰 (说明文档最近更新一次时间:2021-02-12 15:54)

### 一、维护好文件夹下的相应的sql脚本即可，主要有【主库/租户库建表脚本】+【索引脚本】，其他的非必须，
#### 其中sql语句格式要求如下:
1. 每句完整sql结束时以分号结尾并换行
2. 所有表名，列名，索引名需全部为大写（大写兼容性最强）
3. 索引部分，为了只维护一份脚本就达到多个环境均通用的效果，索引需单独提取并写成一份【通用形式】的创建语句，当前主要提取的是【非主键】索引

### 二、特别备注:
#### 1.程序运行过程会用正则识别注释全局替换，所以请尽可能不要在sql中出现只有半句注释的情况，否则有一定几率出现死循环:
##### 典型案例:
某句sql建表语句中,注释说明里有【acceptType=images/*】
程序会将/*识别为注释,则可能导致后面的sql直接无法执行或陷入正则死循环

### 三、关于sql解析规则
校验器初衷是：navicat一键导出的mysql语句，可以直接复制粘贴。这样方便维护。
不过navicat导出的语句中，可能包含了类似【CHARACTER SET UTF8 COLLATE UTF8_GENERAL_CI】等字符，且mysql,oracle，sqlServer三者导出的数据各有不同。
为了sql显得干净清晰统一，建议手动去除，就像当前在模板里包含的那样子。
当然，如果你想偷懒，也可以不去管他们，直接一键导出一键复制粘贴使用。
