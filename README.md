# 802project
802项目

主体由Labview编写

# 基本设置
本机IP 192.168.129.205

近场相机IP 192.168.129.10

MOXA1 IP 192.168.129.20; 端口4001 波特率115200 连接功率能量计表头

示波器VISA TCPIP0::192.168.129.30::inst0::INSTR

# 注意事项
港宇相机需要讲图采集之后帧数开始跳了才能进行设置。否则容易失败

# 开发日志：

2020/4/20 添加光谱仪，示波器，功率能量计，偏振仪的文件写入

2020/4/21 添加近场图文件和发散角文件写入。更改能量计功率计表头切换通道指令，但是未测试。添加示波器，光谱仪，功率能量计，偏振仪文件读取。初步完成图像拼接

2020/4/22 添加文件写入按钮对应的子vi。完成读取历史数据的文件输出逻辑，输出结果存在HistoryFile的全局变量中。基本完成读取历史数据UI和处理函数。

遇到问题：结束逻辑需要处理，目前需要测量结束后关掉软件才能进行下一次测量，首次设置任务和是否完成本次测量两个全局变量之间矛盾

2020/4/23 功率能量计测试通过；

重写相机部分函数，在相机通信检查的时候记录控制套接字；将HeatBeat放到StartMeaure里，在通信检查后就直接执行，防止相机读数出错；添加近场相机控制逻辑

相机测试通过；最终文件显示那里有问题，应该是单位搞错了

2020/4/24 相机和能量计功率计联调通过，修改表头初始化bug

2020/4/26 带示波器调试，解决示波器上bug，目前示波器，功率计能量计，近场相机联调通过。
示波器二次设置有问题需要解决

2020/4/27 解决示波器设置问题

2020/4/29 修改主页面通信和任务显示问题，任务选择结束后禁用

2020/5/6 修改读取示波器测量函数。上升沿时间改成正脉冲时间

2020/5/7 添加写入和读取参数，设置初始化默认值,初始化界面添加默认

2020/5/8 参数默认值通过测试，添加复选框属性

2020/5/9 添加listbox字体属性，添加近场相机自启动

2020/5/11 修改重新启动逻辑和主界面，取消主测量界面，与Main合并

2020/5/31 加入联谊电机旋转台，控制测量位置。加入偏振测量功能


2020/6/3 加入卓立电机控制位移。采集发散角。重写近场相机采集函数。能量功率计测量即入多次测量取平均。

2020/6/4 修改港宇相机的参数设置部分，添加发散角计算功能。优化初始化界面

2020/6/5 修改显示细节

2020/6/21 修改测量界面，添加注释，加入测量进度调。等待点击功能加入倒计时功能以便完全自动化。