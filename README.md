﻿# DataMatrix 
## ———— 基于WIFI探针的大数据分析项目源代码仓库

通过WIFI探针收集MAC地址、出现时间、出现地点、与探针距离，探针设备会定时(3s)发送数据到服务端，通过一段时间数据平台产生大量的用户数据，然后使用大数据分析技术，采用离线计算和实时计算技术相结合的方式，能够对商业环境中门店的门前人流量、进店客流量、进入跳出量、新老顾客数量及新增量、在店平均时长进行分析，客流情况更新迅速，便于实时查看线下人群密集程度，有利于总部统一管理并及时调整营销活动方案。新老顾客比例，来访周期，顾客活跃度清晰展示，便于及时掌握入场顾客的构成，为销售策略调整提供参考。通过驻店时长可以快速掌握店招、产品或营销活动的吸引力。  
涉及大数据处理平台技术，包含Flume、Hadoop、Spark、HBase和数据可视化等技术的利用，基于数据处理全流程，进行数据采集、数据存储、数据处理和数据展示。



## 代码目录：

1. Web接收探针数据源代码
2. Flume配置文件（Flume主要配置文件，置入Flume程序中便可直接运行）
3. Hadoop批量处理程序源代码（HadoopHbase）
4. Web展示网站源码（QLWeb）  



## 相关环境
- 运行环境：探针设备硬件与固件、服务器三台（Ubuntu14.04）
- 开发工具：Eclipse 、IntelliJ IDEA
- 数据库：Mysql10.1.13、HBase1.2.5
- 其他参数：flume-1.7.0 、 Hadoop-2.6.0 、spark2.1.0 、
scala-2.12.1 、 Java 1.8



## 概览

* [功能设计](docs/function.md)
* [系统架构](docs/architecture.md)
* [流程设计](docs/flow.md)
* [系统展示](docs/show.md)


## TODO
- [ ] 指标进一步分析
- [ ] Spark Streaming 流数据处理

## Developers
- Qi Wenkai，Lu Bin，Xu Bowen，Wu Shouxiao
