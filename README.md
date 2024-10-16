# qqgmt！ 
###### 在学习gsea分析时写的，可以一键获得DIY的gmt文件
##### 安装

```
install.packages("devtools")
library(devtools)
```

###### 如果连接失败：  
###### 1.尝试修复Hosts配置  
###### 2.尝试Win+R，输入inetcpl.cpl 直接打开Internet选项。打开后，在高级中勾选使用TLS 1.0、使用TLS 1.1、使用TLS 1.2、使用TLS 1.3。

```
devtools::install_github('liuyuchenlab/qqgmt')  
library(qqgmt)  
```
###### 列名必须是gene 
###### 示例数据
![image](https://github.com/user-attachments/assets/d1f816ec-45c3-43fc-a397-b9e7584f36b8)

###### 示例代码，"2022minor_ZGA_genes.xlsx"这里只能读取xlsx文件，第二个"Minor ZGA genes(Chunxia,2022)"是DIY基因集里面的名字，"NA"是对这个基因集的描述，NA就是没有的意思。
```
qqgmt("2022minor_ZGA_genes.xlsx", "Minor ZGA genes(Chunxia,2022)", "NA")
```
###### 运行代码后可得到一个和输入文件名同名的gmt文件

