#ifndef __VSYCAM_LIB_H_INCLUDE__
#define __VSYCAM_LIB_H_INCLUDE__
typedef struct 
{
	int nWidth;
	int nHeight;
	int nBits;
	int DataLength;
}LABVIEW_IMAGE_INFO;

typedef struct
{
	int			nID;		// 类型标志
	int			nWidth;		// 图像宽度
	int			nHeight;	// 图像高度
	int			nBits;		// 图像数据位数(数据类型：8--BYTE, 9~16--WORD)
	int			nColor;		// 图像数据格式(0--灰度，1--Bayer_RG，2--Bayer_GR，3--Bayer_BG，5--RGB，6--YUV422)

	int			nCount;		// 计数码
	int			nCode;		// 帧码
	int			nDev;		// 设备编号
	SYSTEMTIME	DateTime;	// 日期、时间

	int			nOffset;	// 数据偏移字节数
	int			nParamLen;	// 参数区字长度

	int			nDataBytes;	// 数据区字节数(图形)
	int			nImageBytes;// 图像区字节数

	WORD*		pParam;		// 参数区指针
	void*		pData;		// 数据区指针(图形)
	void*		pImage;		// 图像区指针

	double		dGamma;		// 伽玛系数.
	double		dDPM;		// 像素/毫米.
	char		pName[256];	// 图像名

	int			Reserved[8];// 预留

	/////////// 临时参数 //////////////
	int			nBitsDisp;	// 图像显示的A/D位数
	int			nGrayStart;	// 窗位.
	int			nGrayWidth;	// 窗宽.

}_HIG_FILEHEADER;

/*****************************************************************************/
/*                             图像帧头信息                                  */
/*****************************************************************************/
typedef struct
{
	unsigned short w;       // 图像宽
	unsigned short h;       // 图像高
	
	unsigned short bits;      // 图像位数 8~16bits
	unsigned short format;      // 图像类型代码(0--灰度，1--Bayer_RG，2--Bayer_GR，3--Bayer_BG，5--RGB，6--YUV422，7--JPEG)
	
	unsigned short frame_type; // 帧类型(0--普通，1--抓拍图像，2--心跳帧)
	unsigned short frame_rev;  // 帧头结构版本
	
	unsigned long  firmware_version; //固件程序版本
	unsigned long  device_no; // 设备编号
	
	unsigned long  len;     // 图像数据长度
	
	unsigned long  speed;   // 双线圈测速值(us)
	unsigned long  rs232;   // 串口信息(1~4字节)	

	unsigned short year; // 图像采集时间
	unsigned short month;
	unsigned short day;
	unsigned short hour;
	unsigned short minute;
	unsigned short second;
	
	unsigned long ip;		// 采集当前帧的摄像机IP
	unsigned long frame_count;	//总共的抓拍帧数目
	unsigned long trigger_count; //总共的触发数
	unsigned long trigger_index; //触发组索引
	unsigned long frame_no; //帧号
	
	unsigned long gain; //当前抓拍参数
	unsigned long time; //曝光时间
	unsigned long gain_r; //红增益
	unsigned long gain_g; //绿增益
	unsigned long gain_b; //蓝增益

	unsigned long mode;  // 摄像机工作模式
    unsigned long JpegQ; // JPEG压缩品质
    unsigned long td1;   // 抓拍延时(单位us)
    unsigned long td2;   // 曝光延时(单位us)

	unsigned long rev[12]; //保留参数

	unsigned char user_info[64]; // 用户数据

} FRAME_HEADER; // 帧头

class CTIF_TAG_12_BIT 
{
public:
    CTIF_TAG_12_BIT(int tag_code,int num)
	{
			data[0]=LOBYTE(LOWORD(tag_code));
			data[1]=HIBYTE(LOWORD(tag_code));
			data[2]=0x03;
			data[3]=0x00;
			data[4]=0x01;
			data[5]=0x00;
			data[6]=0x00;
			data[7]=0x00;
			data[8]=LOBYTE(LOWORD(num));
			data[9]=HIBYTE(LOWORD(num));
			data[10]=LOBYTE(HIWORD(num));
			data[11]=HIBYTE(HIWORD(num));
	}
	unsigned char data[12];
};

#define VsyCam_SUCCESS  (0)
#define VsyCam_FALSE   (-1)
#define VsyCam_TIMEOUT (-2)

#define NS_UNIT 0
#define US_UNIT 1
#define MS_UNIT 2
#define S_UNIT  3

#define CAMERA_INFO_LEN 0x160    /* 参数区长度 */

//厂商信息区  (0x00--------0x1f)
#define  ID   			0x00 	//设备码(0--无设备，!0--有设备)
#define  WIDTH			0x01	//传感器水平像素数(宽度)
#define  HEIGHT			0x02    //传感器垂直像素数(宽度)
#define  BITS			0x03 	//图像数据的A/D位数	
#define  COLOR			0x04    //图像数据格式(0--灰度，1--Bayer_RG，2--Bayer_GR，3--Bayer_BG，5--RGB，6--YUV422，7--JPEG)
#define  HEART_BEAT     0x0F	//*保留*

#define  SOFT_VERSION  	0x12	//固件程序版本
#define  DEVICE_NO     	0x13    //摄像机编号
#define  PRODUCT_NO     0x14    //参数编号

//单位信息区  (0x20--------0x2f)
#define  GAIN_UNIT     	0x20	//当前增益值
#define  OFFSET_UNIT    0x21	//当前偏置值
#define  FREQ_UNIT    	0x22	//当前帧频值
#define  TIME_UNIT     	0x23	//当前曝光时间单位


//参数控制范围信息区  (0x30--------0x4f)
#define  MAX_GAIN		0x30	//增益最大值
#define  MIN_GAIN		0x31	//增益最小值
#define  MAX_OFFSET		0x32	//偏置最大值
#define  MIN_OFFSET		0x33	//偏置最小值
#define  MAX_FREQ       0x34	//帧频最大值
#define  MIN_FREQ       0x35	//帧频最小值
#define  MAX_TIME       0x36	//曝光时间最大值
#define  MIN_TIME       0x37	//曝光时间最小值
#define  MAX_BALANCEMODE  0x38	//白平衡方式选择最大值
#define  MAX_AGCLIMIT   0x39	//AGC门限值最大值
#define  MAX_AGCSELECT  0x3a	//AGC取样区域选择最大值

#define  MAX_DELAY		0x43 //;;;;
#define  MIN_DELAY		0x44


/***********************************/
#define  ENVIR_TTEMP	0x50	//环境温度
#define	 COOLING_TANK	0x51	//制冷舱温度
#define  COOLING_SET	0x52	//制冷舱温度设置	
#define  COOLING_SWITCH	0x53    //制冷模式
/************************************/

#define  SP_NOTICE		0x70	//相机特殊说明
//---- 只读信息区End -----

#define  PROTECT_AREA   0x8f  // 0--0x13f区域为命令区，可以任意设置  

//---- 2. 可编程参数名宏定义(读/写) -----
//获得参数：参数值 = CYUSB_ReadCameraParam(参数名);
//修改参数：CYUSB_UpdateCameraParam(参数名,参数值);
#define  GAIN      		0x90	//当前增益值
#define  OFFSET      	0x91	//当前偏置值
#define  FREQ      		0x92	//当前帧频值
#define  TIME      		0x93	//当前曝光时间值
#define  SYNC			0x94	//*同步方式(3-监控模式)

#define  BITSEL			0x95	//8bit/12bit切换
#define  FIRMWARE_VERSION 0x96  //相机固件版本号澹(含义和作用同上面命令SOFT_VERSION，为了兼容以前相机特增加此命令，替换掉上面的SOFT_VERSION，此命令参数值高两个字节作为主版本号，低两个字节作为次版本号)


//预留n个命令位置.......


#define  AGCMODE		0xb0 //增益控制方式(1--自动(AGC)，0--手动)
#define  AGCLIMIT		0xb1 //AGC门限值 (0-255)
#define  AGCSELECT      0xb2 //AGC取样区域选择 低16位有效，分别对应4x4的16个区域，顺序为从左到右，从上到下
#define  AGCTIME        0xb3 //AGC与电子快门连动
#define  AGC_GAIN_MAX   0xb4 //AGC调整范围 0 ~ Max dB
#define  AGC_TIME_MIN   0xb5 //AGC与电子快门连动时，电子快门调整最小值(us)
#define  AGC_TIME_MAX   0xb6 //AGC与电子快门连动时，电子快门调整最大值(us)
//预留n个命令位置.......


#define  GAIN_R          0xc9 //当前R增益值
#define  GAIN_G			 0xca //当前G增益值
#define  GAIN_B			 0xcb //当前B增益值
#define  BALANCEMODE     0xd2 //白平衡校正方式选择 0--手动白平衡 1--自动白平衡.
//预留n个命令位置.......

#define  AUTOGRAY		 0xe0 //*自动灰度增强(1--自动，0--手动)
#define  GRID	  		 0xe1 //像素抽点值 (不抽点，1/2抽点)
#define  GRID_1B1        0 //不抽点
#define  GRID_1B2        1 //1/2抽点
#define  GRID_1B4        2 //1/4抽点
#define  BIN	  		 0xe2
#define  GAMMA	  		 0xe3 //用户GAMMA使能 (0- 默认曲线 1-用户指定曲线)
#define  AUTOASC         0xe4 //auto ASC (1--自动，0--手动)
#define  AUTOAGC         0xe5 //auto AGC (1--自动，0--手动)
#define  DELETE_SMEAR_EN 0Xe8 //0:使能校正拖影   1:失能校正拖影
                                      
//预留n个命令位置.......

#define  SOFT_TRIGGER	0xf0 // 软件触发命令 1-主通道闪光 0-副通道闪光
#define  TEST_IMAGE     0xf1 // 测试图形选择 1-测试图像 0-正常图像
#define  TIME_STAMP 	0xf2 // 对时命令，参数为标准相差秒

#define  UPLOAD_MODE	0xf3	 //图像数据上传模式 0主动 1被动
//预留n个命令位置.......


#define  SERVER_IP      0x100 // 服务器IP(监控模式有效)
#define  SERVER_PORT    0x101 // 服务器PORT(监控模式有效)
#define  TRI_JPEG_Q     0x102 // 抓拍时JPEG质量(监控模式有效)
#define  TRI_GRID		0x103 // (触发时)抽点
#define  TRI_BIN		0x104 // (触发时)合并
#define  TRI_TIME		0x105 // (触发时)曝光时间
#define  TRI_GAIN		0x106 // (触发时)增益
#define  TRI_GAIN_R		0x107 // (触发时)红增益
#define  TRI_GAIN_G		0x108 // (触发时)绿增益
#define  TRI_GAIN_B		0x109 // (触发时)蓝增益
#define  TRI_PARAM_EN	0x10A // (触发时)0 - 触发时使用摄像机当前增益与当前曝光时间
                              //       1 - 触发时使用摄像机触发增益TRI_GAIN与触发曝光时间TRI_TIME


#define  DELAY_TIME      0x110 // FPGA_CMD_DIRECT
#define  WAY_TRIG		 0x111 // FPGA_CMD_DIRECT


//#define  FPGA_REVS      0x110 // FPGA_CMD_DIRECT
//#define  FPGA_REVE      0x11F // FPGA_CMD_DIRECT


/* 网络摄像机特有 */
#define  IP_ADDR		0x120 // 摄像机IP地址
#define  GATEWAY		0x121 // 摄像机网关
#define	 NETMASK		0x122 // 网络地址掩码
#define  CTRL_PORT      0x123 // 控制端口
#define  TRAN_PORT	    0x124 // 传输端口

#define  TF_COUNT		0x125 // 连续抓拍帧数 (1-3)
#define  JPEG_SET		0x126 // JPEG压缩品质 (0-100) 0--最差 100--最优
#define  EXP_OUT_EN     0x127 // 曝光同步输出( d0--闪光灯 d1--频闪 )
#define  TRIG_SET		0x128 // 触发帧间隔 0－连续触发 1，2－间隔n帧输出
#define  RESEND         0x129 // 重传，1获取最新一帧可能重复上传最新一帧 2获取最新一帧不重复上传

#define  RADAR_SET_0	0x12B // 设置获得雷达数据超时参数(单位ms)
#define  RADAR_SET_1	0x12C // *预留	
#define  RADAR_SET_2	0x12D // 测速雷达串口同步头字节定义，32B参数分成4个字节，可以使用4种同步字节
                              // 摄像机在收到抓拍触发后，接收RS232数据，如果接收的RS232数据字节与4个同步字节
                              // 的任意一个匹配时，记录其后的n个，并嵌入帧信息头回传
#define  RADAR_SET_3	0x12E // 设置串口波特率
#define  RADAR_SET_4	0x12F // 设置同步字后信息长度 1~4字节

#define  YEAR			0x130
#define  MONTH		    0x131
#define  DAY			0x132
#define  HOUR			0x133
#define  MINUTE		    0x134
#define  SECOND		    0x135 // 写入秒后更新系统时间 

#define  TRIGGER_DELAY  0x136 // *抓拍延时(us)
#define  EXP_DELAY      0x137 // *曝光延时(us)
#define  SELECT_IMAGE   0x13F // *选图命令
#define  USER_INFO      0x140 // 0x140~0x14F 用户信息 64Byte


/* 摄像机命令号 */
#define  SOFT_RESET		0xFF0002 // 软复位命令
#define  SYNC_PARAM		0xFF0003 // 同步参数命令
#define  SAVE_PARAM		0xFF0004 // 保存参数到摄像机
#define  RESET_PARAM	0xFF0005 // *复位工作参数
#define  CMD_GAMMA  	0xFF0006 // 设置GAMMA参数
#define  CMD_HDJZ   	0xFF0007 // 设置坏点校正参数
#define  FIRMWARE_UPLOAD   0xFF0008 //固件上传完成指令
#define  UPGRADE_CHECK     0xFF0009 //升级结果查询指令

#define  TCMD           0xAABB //相机透传指令

extern "C" int __declspec(dllexport)VsyCam_TransDataForShow(LABVIEW_IMAGE_INFO *ImgInfo,char *OriginData,char *ResultData);

extern "C" int __declspec(dllexport)VsyCam_SearchCamera(BYTE *ipArray);

extern "C" int __declspec(dllexport)VsyCam_OpenConnection(char* IP,int PORT);

extern "C" int __declspec(dllexport)VsyCam_CloseConnection(int sockFd);

extern "C" int __declspec(dllexport)VsyCam_GetImage(int sockFd,char *Head,LABVIEW_IMAGE_INFO *ImgInfo,char* Data,int camVersion);

extern "C" int __declspec(dllexport)VsyCam_UpdateCameraParam(int sockFd, int command, int value,int *ack);

extern "C" int __declspec (dllexport)VsyCam_ReadCameraParam(int sockFd, int command);

extern "C" int __declspec(dllexport)VsyCam_TIFSave(const char *pFileName,char *Head,char* pImgData);

extern "C" int __declspec(dllexport)VsyCam_HigSave(const char *pFileName,char *Head,char *pImgData);

extern "C" int __declspec(dllexport)VsyCam_SetPara(int socketFd );
/****** 注:T命令透传指令最多支持用户数据长度为255个字节 *******/
/**** 参数说明:   pusrData:为透传数据；usrDataLen:透传数据长度 ************/
/**** 返回值:  0: 成功    -1: 失败 *********/
extern "C" int __declspec(dllexport) VsyCam_SendTCommand(int sockFd,char *pusrData,int usrDataLen);

#endif //__VSYCAM_LIB_H_INCLUDE__
