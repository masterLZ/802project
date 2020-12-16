<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="文件输入输出" Type="Folder">
			<Item Name="基本路径文件" Type="Folder">
				<Item Name="Report.csv" Type="Document" URL="../data/Report/Report.csv"/>
				<Item Name="Parameter.csv" Type="Document" URL="../data/参数/Parameter.csv"/>
				<Item Name="PowerEnergMeter.csv" Type="Document" URL="../data/能量功率数据/PowerEnergMeter.csv"/>
				<Item Name="Spectrometer.csv" Type="Document" URL="../data/光谱仪数据/Spectrometer.csv"/>
				<Item Name="Near.png" Type="Document" URL="../data/近远场数据/近场图/Near.png"/>
				<Item Name="Far.png" Type="Document" URL="../data/近远场数据/远场图/Far.png"/>
				<Item Name="Polarmeter.csv" Type="Document" URL="../data/偏振数据/Polarmeter.csv"/>
				<Item Name="Scope.csv" Type="Document" URL="../data/示波器数据/Scope.csv"/>
				<Item Name="InitParameter.csv" Type="Document" URL="../data/参数/InitParameter.csv"/>
			</Item>
			<Item Name="WritePolaration.vi" Type="VI" URL="../InOut/WritePolaration.vi"/>
			<Item Name="WriteScope.vi" Type="VI" URL="../InOut/WriteScope.vi"/>
			<Item Name="WriteCSV.vi" Type="VI" URL="../InOut/WriteCSV.vi"/>
			<Item Name="WritePowerEnergy.vi" Type="VI" URL="../InOut/WritePowerEnergy.vi"/>
			<Item Name="WriteSpectroMeter.vi" Type="VI" URL="../InOut/WriteSpectroMeter.vi"/>
			<Item Name="WriteNearFar.vi" Type="VI" URL="../InOut/WriteNearFar.vi"/>
			<Item Name="ReadPowerEnergyFile.vi" Type="VI" URL="../InOut/ReadPowerEnergyFile.vi"/>
			<Item Name="ReadPolarzationFile.vi" Type="VI" URL="../InOut/ReadPolarzationFile.vi"/>
			<Item Name="ReadScopeFile.vi" Type="VI" URL="../InOut/ReadScopeFile.vi"/>
			<Item Name="ReadSpetroFile.vi" Type="VI" URL="../InOut/ReadSpetroFile.vi"/>
			<Item Name="ReadNearFar.vi" Type="VI" URL="../InOut/ReadNearFar.vi"/>
			<Item Name="ReadAllFile.vi" Type="VI" URL="../InOut/ReadAllFile.vi"/>
			<Item Name="Time2String.vi" Type="VI" URL="../InOut/Time2String.vi"/>
			<Item Name="读取历史数据.vi" Type="VI" URL="../InOut/读取历史数据.vi"/>
			<Item Name="保存数据.vi" Type="VI" URL="../InOut/保存数据.vi"/>
			<Item Name="JointImage.vi" Type="VI" URL="../InOut/JointImage.vi"/>
			<Item Name="Write_param.vi" Type="VI" URL="../InOut/Write_param.vi"/>
			<Item Name="Read_param.vi" Type="VI" URL="../InOut/Read_param.vi"/>
			<Item Name="Set Default.vi" Type="VI" URL="../UI组件/Set Default.vi"/>
			<Item Name="ConvetToShow.vi" Type="VI" URL="../InOut/ConvetToShow.vi"/>
			<Item Name="WriteItemToExcel.vi" Type="VI" URL="../InOut/WriteItemToExcel.vi"/>
			<Item Name="WriteTest.vi" Type="VI" URL="../InOut/WriteTest.vi"/>
			<Item Name="ReportItem.ctl" Type="VI" URL="../InOut/ReportItem.ctl"/>
		</Item>
		<Item Name="全局变量" Type="Folder">
			<Item Name="globalMessage.vi" Type="VI" URL="../参数/globalMessage.vi"/>
			<Item Name="HistoryFile.vi" Type="VI" URL="../HistoryFile.vi"/>
			<Item Name="Reslut.vi" Type="VI" URL="../InOut/Reslut.vi"/>
			<Item Name="AllPath.vi" Type="VI" URL="../Init/AllPath.vi"/>
			<Item Name="参数.vi" Type="VI" URL="../参数/参数.vi"/>
		</Item>
		<Item Name="Control" Type="Folder">
			<Item Name="Polarzation" Type="Folder">
				<Item Name="PAX_Read.vi" Type="VI" URL="../偏振控制器/PAX_Read.vi"/>
				<Item Name="PAXStop.vi" Type="VI" URL="../偏振控制器/PAXStop.vi"/>
				<Item Name="PolarMeterCheck.vi" Type="VI" URL="../MessageHandle/连接检查/PolarMeterCheck.vi"/>
				<Item Name="PolarizationRead.vi" Type="VI" URL="../偏振控制器/PolarizationRead.vi"/>
			</Item>
			<Item Name="Camera" Type="Folder">
				<Item Name="FarFiledMesure" Type="Folder">
					<Item Name="FarfiledImageJoint2.vi" Type="VI" URL="../相机/FarfiledImageJoint2.vi"/>
					<Item Name="GenerateFarfiledGrid.vi" Type="VI" URL="../相机/GenerateFarfiledGrid.vi"/>
					<Item Name="Far1test.vi" Type="VI" URL="../相机/Far1test.vi"/>
				</Item>
				<Item Name="DivergenceAngle" Type="Folder">
					<Item Name="CaculateSpotSize .vi" Type="VI" URL="../相机/发散角计算/CaculateSpotSize .vi"/>
					<Item Name="CaculateDivergenceAngle .vi" Type="VI" URL="../相机/发散角计算/CaculateDivergenceAngle .vi"/>
					<Item Name="GenerateDiverageGrid.vi" Type="VI" URL="../相机/GenerateDiverageGrid.vi"/>
					<Item Name="NearFiledCamSetTrigger.vi" Type="VI" URL="../相机/NearFiledCamSetTrigger.vi"/>
					<Item Name="CaculateChord.vi" Type="VI" URL="../相机/发散角计算/CaculateChord.vi"/>
					<Item Name="CollimationLightScan.vi" Type="VI" URL="../相机/CollimationLightScan.vi"/>
					<Item Name="GenerateCollimationLightScanGrid.vi" Type="VI" URL="../相机/GenerateCollimationLightScanGrid.vi"/>
					<Item Name="CollimationLightScanOffset.vi" Type="VI" URL="../相机/CollimationLightScanOffset.vi"/>
					<Item Name="ChordToAngle.vi" Type="VI" URL="../相机/发散角计算/ChordToAngle.vi"/>
					<Item Name="DivergeAngleScan.vi" Type="VI" URL="../相机/DivergeAngleScan.vi"/>
					<Item Name="fitHyperbolamodel.vi" Type="VI" URL="../相机/fitHyperbolamodel.vi"/>
					<Item Name="Hyperbolamodel.vi" Type="VI" URL="../相机/Hyperbolamodel.vi"/>
				</Item>
				<Item Name="远场控制" Type="Folder">
					<Item Name="FarFiledCapOneFrame.vi" Type="VI" URL="../相机/FarFiledCapOneFrame.vi"/>
					<Item Name="FarFiledCamColse.vi" Type="VI" URL="../相机/FarFiledCamColse.vi"/>
					<Item Name="FarFiledCamTest.vi" Type="VI" URL="../相机/FarFiledCamTest.vi"/>
					<Item Name="FarFiledCamSetExposure.vi" Type="VI" URL="../相机/FarFiledCamSetExposure.vi"/>
					<Item Name="FarfieldGeneratePosgrid.vi" Type="VI" URL="../电机/FarfieldGeneratePosgrid.vi"/>
					<Item Name="FarfiledDefineReferencePose.vi" Type="VI" URL="../电机/FarfiledDefineReferencePose.vi"/>
					<Item Name="FarFiledDefineOffset.vi" Type="VI" URL="../相机/FarFiledDefineOffset.vi"/>
				</Item>
				<Item Name="近场控制" Type="Folder">
					<Item Name="nearCamSetExpoureTime.vi" Type="VI" URL="../相机/nearCamSetExpoureTime.vi"/>
					<Item Name="nearCamSetTriggerSource.vi" Type="VI" URL="../相机/nearCamSetTriggerSource.vi"/>
					<Item Name="nearCamReConnect.vi" Type="VI" URL="../相机/nearCamReConnect.vi"/>
					<Item Name="nearCamSetSoftwareTrigger.vi" Type="VI" URL="../相机/nearCamSetSoftwareTrigger.vi"/>
					<Item Name="IMAQdx_FindCamAttributes.vi" Type="VI" URL="../相机/IMAQdx_FindCamAttributes.vi"/>
					<Item Name="nearFiledCamFind1.vi" Type="VI" URL="../相机/nearFiledCamFind1.vi"/>
				</Item>
				<Item Name="ImageResample.vi" Type="VI" URL="../相机/ImageResample.vi"/>
				<Item Name="Cam1.vi" Type="VI" URL="../相机/Cam1.vi"/>
			</Item>
			<Item Name="Scope" Type="Folder">
				<Item Name="FromIPtoVISA.vi" Type="VI" URL="../示波器/FromIPtoVISA.vi"/>
				<Item Name="Scope1.vi" Type="VI" URL="../示波器/Scope1.vi"/>
			</Item>
			<Item Name="Power/Energy" Type="Folder">
				<Item Name="EnergyMeter Read.vi" Type="VI" URL="../功率能量计/EnergyMeter Read.vi"/>
				<Item Name="ResetEnergyMeterRange.vi" Type="VI" URL="../功率能量计/ResetEnergyMeterRange.vi"/>
				<Item Name="JudgePowerEnergy.vi" Type="VI" URL="../功率能量计/JudgePowerEnergy.vi"/>
				<Item Name="TCPIP_CRLF_Quary.vi" Type="VI" URL="../功率能量计/TCPIP_CRLF_Quary.vi"/>
				<Item Name="PowerMeter Read.vi" Type="VI" URL="../功率能量计/PowerMeter Read.vi"/>
			</Item>
			<Item Name="SpectroMeter" Type="Folder">
				<Item Name="FindFWHM.vi" Type="VI" URL="../光谱仪/FindFWHM.vi"/>
				<Item Name="SpectroMeterRead.vi" Type="VI" URL="../光谱仪/SpectroMeterRead.vi"/>
			</Item>
			<Item Name="WaitMission.vi" Type="VI" URL="../UI组件/WaitMission.vi"/>
		</Item>
		<Item Name="Init" Type="Folder">
			<Item Name="InitAll.vi" Type="VI" URL="../Init/InitAll.vi"/>
			<Item Name="PowerMeterInit.vi" Type="VI" URL="../功率能量计/PowerMeterInit.vi"/>
			<Item Name="EnergyMeterInit.vi" Type="VI" URL="../功率能量计/EnergyMeterInit.vi"/>
			<Item Name="PolarizationInit.vi" Type="VI" URL="../偏振控制器/PolarizationInit.vi"/>
			<Item Name="ScopeInit.vi" Type="VI" URL="../示波器/ScopeInit.vi"/>
			<Item Name="SpectroMeterInit.vi" Type="VI" URL="../光谱仪/SpectroMeterInit.vi"/>
			<Item Name="CameraInit.vi" Type="VI" URL="../相机/CameraInit.vi"/>
			<Item Name="FarFiledCamInit.vi" Type="VI" URL="../相机/FarFiledCamInit.vi"/>
			<Item Name="PAX_init.vi" Type="VI" URL="../偏振控制器/PAX_init.vi"/>
			<Item Name="GlobalInit.vi" Type="VI" URL="../Init/GlobalInit.vi"/>
		</Item>
		<Item Name="Parameter and Message" Type="Folder">
			<Item Name="PowerEnergyMeter_param.vi" Type="VI" URL="../参数/PowerEnergyMeter_param.vi"/>
			<Item Name="NearFieldCamera_param.vi" Type="VI" URL="../参数/NearFieldCamera_param.vi"/>
			<Item Name="FarFieldCamera_param.vi" Type="VI" URL="../参数/FarFieldCamera_param.vi"/>
			<Item Name="SpecMeter_param.vi" Type="VI" URL="../参数/SpecMeter_param.vi"/>
			<Item Name="Polarmeter_param.vi" Type="VI" URL="../参数/Polarmeter_param.vi"/>
			<Item Name="general_param.vi" Type="VI" URL="../参数/general_param.vi"/>
			<Item Name="Scope_param.vi" Type="VI" URL="../参数/Scope_param.vi"/>
			<Item Name="ParamSetAll.vi" Type="VI" URL="../参数/ParamSetAll.vi"/>
		</Item>
		<Item Name="Error" Type="Folder">
			<Item Name="ErrorHandle.vi" Type="VI" URL="../MessageHandle/ErrorHandle.vi"/>
			<Item Name="RunLog.vi" Type="VI" URL="../MessageHandle/RunLog.vi"/>
			<Item Name="ErrorAdd.vi" Type="VI" URL="../MessageHandle/ErrorAdd.vi"/>
		</Item>
		<Item Name="UI" Type="Folder">
			<Item Name="KeyGray_normalbool.vi" Type="VI" URL="../UI组件/KeyGray_normalbool.vi"/>
			<Item Name="ChangeUnit.vi" Type="VI" URL="../UI组件/ChangeUnit.vi"/>
			<Item Name="MeasurementSelect.vi" Type="VI" URL="../UI组件/MeasurementSelect.vi"/>
			<Item Name="ListBox XControl.xctl" Type="XControl" URL="../UI组件/Selectable ListBox xControl/ListBox XControl.xctl"/>
			<Item Name="KeyGray.vi" Type="VI" URL="../UI组件/KeyGray.vi"/>
			<Item Name="loadSubVI.vi" Type="VI" URL="../UI组件/loadSubVI.vi"/>
			<Item Name="WaitUIShutDown.vi" Type="VI" URL="../WaitUIShutDown.vi"/>
			<Item Name="Wait10sThenAbort.vi" Type="VI" URL="../UI组件/Wait10sThenAbort.vi"/>
			<Item Name="DataLimit.vi" Type="VI" URL="../UI组件/DataLimit.vi"/>
			<Item Name="WaitMeasure.vi" Type="VI" URL="../UI组件/WaitMeasure.vi"/>
			<Item Name="GetCurrentMissionString.vi" Type="VI" URL="../UI组件/GetCurrentMissionString.vi"/>
			<Item Name="IPCheck.vi" Type="VI" URL="../UI组件/IPCheck.vi"/>
		</Item>
		<Item Name="ConnectCheck" Type="Folder">
			<Item Name="ConnectCheckReport.vi" Type="VI" URL="../MessageHandle/连接检查/ConnectCheckReport.vi"/>
			<Item Name="PowerMeterCheck.vi" Type="VI" URL="../MessageHandle/连接检查/PowerMeterCheck.vi"/>
			<Item Name="ScopeCheck.vi" Type="VI" URL="../MessageHandle/连接检查/ScopeCheck.vi"/>
			<Item Name="EnergyMeterCheck.vi" Type="VI" URL="../MessageHandle/连接检查/EnergyMeterCheck.vi"/>
			<Item Name="CameraConnectCheck.vi" Type="VI" URL="../相机/CameraConnectCheck.vi"/>
			<Item Name="NearFiledCamConnect.vi" Type="VI" URL="../相机/NearFiledCamConnect.vi"/>
			<Item Name="FarFiledCamConnectCheck.vi" Type="VI" URL="../相机/FarFiledCamConnectCheck.vi"/>
			<Item Name="SpectroMeterConnectCheck.vi" Type="VI" URL="../光谱仪/SpectroMeterConnectCheck.vi"/>
			<Item Name="ConnectCheck.vi" Type="VI" URL="../MessageHandle/连接检查/ConnectCheck.vi"/>
		</Item>
		<Item Name="电机" Type="Folder">
			<Item Name="MotorPosReade.vi" Type="VI" URL="../电机/MotorPosReade.vi"/>
			<Item Name="MotorTest.vi" Type="VI" URL="../电机/MotorTest.vi"/>
			<Item Name="RotateTest.vi" Type="VI" URL="../电机/RotateTest.vi"/>
			<Item Name="MotorAlltoZero.vi" Type="VI" URL="../电机/MotorAlltoZero.vi"/>
			<Item Name="ControlMotor.vi" Type="VI" URL="../电机/ControlMotor.vi"/>
			<Item Name="ControlAxisSet.vi" Type="VI" URL="../电机/ControlAxisSet.vi"/>
			<Item Name="ControlMotorParam.vi" Type="VI" URL="../电机/ControlMotorParam.vi"/>
			<Item Name="ControlMotorMove.vi" Type="VI" URL="../电机/ControlMotorMove.vi"/>
			<Item Name="ControlMotorCalculatePusle.vi" Type="VI" URL="../电机/ControlMotorCalculatePusle.vi"/>
			<Item Name="ControlMotorDefinePostion.vi" Type="VI" URL="../电机/ControlMotorDefinePostion.vi"/>
			<Item Name="ControlReadPulse.vi" Type="VI" URL="../电机/ControlReadPulse.vi"/>
			<Item Name="控制电机位置枚举器.ctl" Type="VI" URL="../UI组件/控制电机位置枚举器.ctl"/>
			<Item Name="控制电机枚举器.ctl" Type="VI" URL="../UI组件/控制电机枚举器.ctl"/>
			<Item Name="控制电机指令枚举器.ctl" Type="VI" URL="../UI组件/控制电机指令枚举器.ctl"/>
			<Item Name="DifineDivergenceAngleAxisPos.vi" Type="VI" URL="../UI组件/DifineDivergenceAngleAxisPos.vi"/>
			<Item Name="ControlMotorAbsMove.vi" Type="VI" URL="../UI组件/ControlMotorAbsMove.vi"/>
			<Item Name="ControlMotorTest.vi" Type="VI" URL="../电机/ControlMotorTest.vi"/>
			<Item Name="AxisInit.vi" Type="VI" URL="../电机/AxisInit.vi"/>
			<Item Name="MotorInit.vi" Type="VI" URL="../电机/MotorInit.vi"/>
			<Item Name="ControlMotorFindZero.vi" Type="VI" URL="../电机/ControlMotorFindZero.vi"/>
			<Item Name="MotorRotateInJoint.vi" Type="VI" URL="../电机/MotorRotateInJoint.vi"/>
			<Item Name="ControlMotorSetIo.vi" Type="VI" URL="../电机/ControlMotorSetIo.vi"/>
			<Item Name="ServoToZero.vi" Type="VI" URL="../电机/ServoToZero.vi"/>
			<Item Name="ControlMotorFindZeroAll.vi" Type="VI" URL="../电机/ControlMotorFindZeroAll.vi"/>
			<Item Name="ContrlJudgeStopMove.vi" Type="VI" URL="../电机/ContrlJudgeStopMove.vi"/>
			<Item Name="ControlMotorDefinePostionParam.vi" Type="VI" URL="../电机/ControlMotorDefinePostionParam.vi"/>
			<Item Name="MotorMoveRelative.vi" Type="VI" URL="../电机/MotorMoveRelative.vi"/>
			<Item Name="ControlReadPulseAll.vi" Type="VI" URL="../电机/ControlReadPulseAll.vi"/>
		</Item>
		<Item Name="衰减片" Type="Folder">
			<Item Name="衰减片电机枚举.ctl" Type="VI" URL="../电机/衰减片/衰减片电机枚举.ctl"/>
			<Item Name="衰减片电机位置枚举器.ctl" Type="VI" URL="../电机/衰减片/衰减片电机位置枚举器.ctl"/>
			<Item Name="衰减片电机指令枚举器.ctl" Type="VI" URL="../电机/衰减片/衰减片电机指令枚举器.ctl"/>
			<Item Name="Attenuator_Communication.vi" Type="VI" URL="../电机/衰减片/Attenuator_Communication.vi"/>
			<Item Name="Attenuator_AbsMove.vi" Type="VI" URL="../电机/衰减片/Attenuator_AbsMove.vi"/>
			<Item Name="Attenuator_AxisInit.vi" Type="VI" URL="../电机/衰减片/Attenuator_AxisInit.vi"/>
			<Item Name="Attenuator_Close.vi" Type="VI" URL="../电机/衰减片/Attenuator_Close.vi"/>
			<Item Name="Attenuator_CalculatePusle.vi" Type="VI" URL="../电机/衰减片/Attenuator_CalculatePusle.vi"/>
			<Item Name="Attenuator_FindZero.vi" Type="VI" URL="../电机/衰减片/Attenuator_FindZero.vi"/>
			<Item Name="Attenuator_DefinePostion.vi" Type="VI" URL="../电机/衰减片/Attenuator_DefinePostion.vi"/>
			<Item Name="Attenuator_Control.vi" Type="VI" URL="../电机/衰减片/Attenuator_Control.vi"/>
			<Item Name="Attenuator_ReadPos.vi" Type="VI" URL="../电机/衰减片/Attenuator_ReadPos.vi"/>
			<Item Name="衰减片前面板.ctl" Type="VI" URL="../UI组件/衰减片前面板.ctl"/>
		</Item>
		<Item Name="测试用" Type="Folder">
			<Item Name="ControlMotorTest_Connect.vi" Type="VI" URL="../电机/ControlMotorTest_Connect.vi"/>
			<Item Name="ControlMotorFindZeroEdge.vi" Type="VI" URL="../电机/ControlMotorFindZeroEdge.vi"/>
			<Item Name="MotorRotate.vi" Type="VI" URL="../电机/MotorRotate.vi"/>
			<Item Name="MotorShutDown.vi" Type="VI" URL="../电机/MotorShutDown.vi"/>
			<Item Name="MotorJudgePosition.vi" Type="VI" URL="../电机/MotorJudgePosition.vi"/>
			<Item Name="FarFiledPreCap.vi" Type="VI" URL="../相机/FarFiledPreCap.vi"/>
			<Item Name="spectest1.vi" Type="VI" URL="../光谱仪/spectest1.vi"/>
			<Item Name="Demo.vi" Type="VI" URL="../../驱动/相机驱动/LabView2014Demo_V1.0.8/LabView14Demo/Demo.vi"/>
			<Item Name="LabviewSample.vi" Type="VI" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/LabviewSample.vi"/>
			<Item Name="TestFit.vi" Type="VI" URL="../相机/TestFit.vi"/>
			<Item Name="Attenuator_Test.vi" Type="VI" URL="../电机/衰减片/Attenuator_Test.vi"/>
		</Item>
		<Item Name="Alligent" Type="Folder">
			<Item Name="保存初始位置.vi" Type="VI" URL="../InOut/保存初始位置.vi"/>
			<Item Name="Alligent_DrawOverLay.vi" Type="VI" URL="../Alligent_DrawOverLay.vi"/>
			<Item Name="nearCamGetExpoureTime.vi" Type="VI" URL="../相机/nearCamGetExpoureTime.vi"/>
			<Item Name="Alligent.vi" Type="VI" URL="../Alligent.vi"/>
		</Item>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="图标.ico" Type="Document" URL="../图标.ico"/>
		<Item Name="StartMeasure.vi" Type="VI" URL="../StartMeasure.vi"/>
		<Item Name="StopAll.vi" Type="VI" URL="../StopAll.vi"/>
		<Item Name="Tektronix DPO MSO 2000 4000 Series.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Tektronix DPO MSO 2000 4000 Series/Tektronix DPO MSO 2000 4000 Series.lvlib"/>
		<Item Name="读取初始位置.vi" Type="VI" URL="../InOut/读取初始位置.vi"/>
		<Item Name="ControlMotorGetDefinedPostion.vi" Type="VI" URL="../电机/ControlMotorGetDefinedPostion.vi"/>
		<Item Name="GetSystemPath.vi" Type="VI" URL="../GetSystemPath.vi"/>
		<Item Name="PositionToHub.vi" Type="VI" URL="../电机/PositionToHub.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="TLPAX VXIpnp Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX VXIpnp Error Converter.vi"/>
				<Item Name="TLPAX Find Resources.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Find Resources.vi"/>
				<Item Name="TLPAX Set Basic Scan Rate.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Set Basic Scan Rate.vi"/>
				<Item Name="TLPAX Set Power Auto Range.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Set Power Auto Range.vi"/>
				<Item Name="TLPAX Set Measurement Mode.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Set Measurement Mode.vi"/>
				<Item Name="TLPAX Identification Query.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Identification Query.vi"/>
				<Item Name="TLPAX Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Initialize.vi"/>
				<Item Name="TLPAX Get Resource Name.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Get Resource Name.vi"/>
				<Item Name="TLPAX Set Wavelength.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Set Wavelength.vi"/>
				<Item Name="TLPAX Get Wavelength Limits.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Get Wavelength Limits.vi"/>
				<Item Name="TLPAX Get Power.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Get Power.vi"/>
				<Item Name="TLPAX Get Degree Of Polarization.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Get Degree Of Polarization.vi"/>
				<Item Name="TLPAX Get Normalized Stokes.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Get Normalized Stokes.vi"/>
				<Item Name="TLPAX Get Polarization.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Get Polarization.vi"/>
				<Item Name="TLPAX Close.vi" Type="VI" URL="/&lt;instrlib&gt;/TLPAX/TLPAX.llb/TLPAX Close.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ ArrayToImage" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ArrayToImage"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Version To Dotted String.vi" Type="VI" URL="/&lt;vilib&gt;/_xctls/Version To Dotted String.vi"/>
				<Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (string).vi"/>
				<Item Name="Write Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (I64).vi"/>
				<Item Name="Write Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Write Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Delimited Spreadsheet.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="IMAQ Write TIFF File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write TIFF File 2"/>
				<Item Name="IMAQ Write PNG File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write PNG File 2"/>
				<Item Name="IMAQ Write JPEG2000 File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write JPEG2000 File 2"/>
				<Item Name="IMAQ Write JPEG File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write JPEG File 2"/>
				<Item Name="IMAQ Write Image And Vision Info File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write Image And Vision Info File 2"/>
				<Item Name="IMAQ Write BMP File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write BMP File 2"/>
				<Item Name="IMAQ Write File 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ Write File 2"/>
				<Item Name="NI_Vision_Development_Module.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/NI_Vision_Development_Module.lvlib"/>
				<Item Name="IMAQ SetImageSize" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ SetImageSize"/>
				<Item Name="IMAQ ReadFile 2" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ ReadFile 2"/>
				<Item Name="IMAQ GetImageSize" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ GetImageSize"/>
				<Item Name="IMAQ Rounding Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Rounding Mode.ctl"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="IMAQ Dispose" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Dispose"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name=".NET Object To Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/dotnet.llb/.NET Object To Variant.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="NI_XML.lvlib" Type="Library" URL="/&lt;vilib&gt;/xml/NI_XML.lvlib"/>
				<Item Name="To .NET Object.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/dotnet.llb/To .NET Object.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="Flatten Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pixmap.llb/Flatten Pixmap.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="IMAQ ImageToArray" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ImageToArray"/>
				<Item Name="NI_Vision_Acquisition_Software.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/driver/NI_Vision_Acquisition_Software.lvlib"/>
				<Item Name="IMAQdx.ctl" Type="VI" URL="/&lt;vilib&gt;/userdefined/High Color/IMAQdx.ctl"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="IMAQ Copy" Type="VI" URL="/&lt;vilib&gt;/vision/Management.llb/IMAQ Copy"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="NI_report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_report.lvclass"/>
				<Item Name="NI_ReportGenerationCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_ReportGenerationCore.lvlib"/>
				<Item Name="NI_HTML.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/HTML/NI_HTML.lvclass"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Write PNG File.vi"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Create ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create ActiveX Event Queue.vi"/>
				<Item Name="Wait types.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait types.ctl"/>
				<Item Name="Create Error Clust.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create Error Clust.vi"/>
				<Item Name="Wait On ActiveX Event.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait On ActiveX Event.vi"/>
				<Item Name="EventData.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/EventData.ctl"/>
				<Item Name="OccFireType.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/OccFireType.ctl"/>
				<Item Name="Destroy ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Destroy ActiveX Event Queue.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="NI_Standard Report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Standard Report/NI_Standard Report.lvclass"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP File.vi"/>
				<Item Name="compatOverwrite.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOverwrite.vi"/>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data.vi"/>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="Built App File Layout.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Built App File Layout.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Compress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDT.llb/Compress Digital.vi"/>
				<Item Name="DTbl Compress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Compress Digital.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DWDT Compress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Compress Digital.vi"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="IMAQ Overlay Rectangle" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Rectangle"/>
				<Item Name="IMAQ Overlay Line" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Line"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="Color (U64)" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Color (U64)"/>
				<Item Name="IMAQ ArrayToColorImage" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ArrayToColorImage"/>
				<Item Name="Image Unit" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Unit"/>
				<Item Name="IMAQ GetImageInfo" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ GetImageInfo"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="TULV_API.dll" Type="Document" URL="/&lt;userlib&gt;/TucsenCamera/TULV_API.dll"/>
				<Item Name="TU_WaitForFrame.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_WaitForFrame.vi"/>
				<Item Name="TU_GetFrame.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_GetFrame.vi"/>
				<Item Name="TU_SetParameter.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_SetParameter.vi"/>
				<Item Name="TU_UninitCamera.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_UninitCamera.vi"/>
				<Item Name="TU_StopCapture.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_StopCapture.vi"/>
				<Item Name="TU_InitCamera.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_InitCamera.vi"/>
				<Item Name="TU_GetParameterLimits.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_GetParameterLimits.vi"/>
				<Item Name="TU_OpenCamera.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_OpenCamera.vi"/>
				<Item Name="TU_GetCameraInfo.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_GetCameraInfo.vi"/>
				<Item Name="TU_SetTrigger.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_SetTrigger.vi"/>
				<Item Name="TU_GetParameter.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_GetParameter.vi"/>
				<Item Name="TU_StartCapture.vi" Type="VI" URL="/&lt;userlib&gt;/TucsenCamera/TU_StartCapture.vi"/>
			</Item>
			<Item Name="DOPsetMeasuremen.vi" Type="VI" URL="../示波器/DOPsetMeasuremen.vi"/>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Toggle Symbol.vi" Type="VI" URL="../UI组件/Selectable ListBox xControl/SubVIs/Toggle Symbol.vi"/>
			<Item Name="DPOreadPWidth.vi" Type="VI" URL="../示波器/DPOreadPWidth.vi"/>
			<Item Name="DPOreadFrequency.vi" Type="VI" URL="../示波器/DPOreadFrequency.vi"/>
			<Item Name="TLPAX_32.dll" Type="Document" URL="TLPAX_32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="IMC_Pkg4xxx.lvlib" Type="Library" URL="../../驱动/电机/IMCApp/inc/Labview/32/IMC_Pkg4xxx.lvlib"/>
			<Item Name="LightField Automation.lvclass" Type="LVClass" URL="/C/ProgramData/Documents/Princeton Instruments/LightField/Add-in and Automation SDK/Samples/LabVIEW Automation/lightfield-automation-labview/LightField Automation.lvclass"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="DOMUserDefRef.dll" Type="Document" URL="DOMUserDefRef.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="PrincetonInstruments.LightFieldAddInSupportServices.dll" Type="Document" URL="/C/Program Files/Princeton Instruments/LightField/PrincetonInstruments.LightFieldAddInSupportServices.dll"/>
			<Item Name="PrincetonInstruments.LightFieldViewV3.dll" Type="Document" URL="/C/Program Files/Princeton Instruments/LightField/AddInViews/PrincetonInstruments.LightFieldViewV3.dll"/>
			<Item Name="PrincetonInstruments.LightField.AutomationV3.dll" Type="Document" URL="/C/Program Files/Princeton Instruments/LightField/PrincetonInstruments.LightField.AutomationV3.dll"/>
			<Item Name="TU_WaitForFrame_1.vi" Type="VI" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/TucsenCamera1/TU_WaitForFrame_1.vi"/>
			<Item Name="TU_GetROI.vi" Type="VI" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/TucsenCamera1/TU_GetROI.vi"/>
			<Item Name="TU_SetROI.vi" Type="VI" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/TucsenCamera1/TU_SetROI.vi"/>
			<Item Name="TU_StopRecorder.vi" Type="VI" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/TucsenCamera1/TU_StopRecorder.vi"/>
			<Item Name="TU_StartRecorder.vi" Type="VI" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/TucsenCamera1/TU_StartRecorder.vi"/>
			<Item Name="TU_SetOutPutTrigger.vi" Type="VI" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/TucsenCamera1/TU_SetOutPutTrigger.vi"/>
			<Item Name="TU_GetOutPutTrigger.vi" Type="VI" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/TucsenCamera1/TU_GetOutPutTrigger.vi"/>
			<Item Name="TU_GetTrigger.vi" Type="VI" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/TucsenCamera1/TU_GetTrigger.vi"/>
			<Item Name="computeTheta.vi" Type="VI" URL="../相机/computeTheta.vi"/>
			<Item Name="VsyCam.dll" Type="Document" URL="../../驱动/相机驱动/LabView2014Demo_V1.0.8/LabView14Demo/VsyCam.dll"/>
			<Item Name="niimaqdx.dll" Type="Document" URL="niimaqdx.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ComputeAreaUsingMoment.vi" Type="VI" URL="../相机/发散角计算/ComputeAreaUsingMoment.vi"/>
			<Item Name="nearCamSnap.vi" Type="VI" URL="../相机/nearCamSnap.vi"/>
			<Item Name="cover8-12.vi" Type="VI" URL="../相机/cover8-12.vi"/>
			<Item Name="findCOM.vi" Type="VI" URL="../电机/findCOM.vi"/>
			<Item Name="Atten.lvlib" Type="Library" URL="../../驱动/电控衰减/API1/Atten.lvlib"/>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="位置调整控件.ctl" Type="VI" URL="../UI组件/位置调整控件.ctl"/>
			<Item Name="TULV_API.dll" Type="Document" URL="../../驱动/远场相机/Labview(Gige)_x86_20200804/TucsenCamera1/TULV_API.dll"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
