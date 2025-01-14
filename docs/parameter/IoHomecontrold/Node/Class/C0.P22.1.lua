﻿local var_0_0 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.log")
local var_0_1 = {}

var_0_1.name = "HeatingAndCoolingGeneratorHeatPump"
var_0_1.HeatPump = "620000"
var_0_1.Hybrid = "520001"

local function var_0_2(arg_1_0)
	return (string.format("%.2X%.2X%.2X", arg_1_0.generalinfo[2][8], arg_1_0.generalinfo[2][9], arg_1_0.generalinfo[2][10]))
end

function var_0_1.create(arg_2_0, arg_2_1)
	local var_2_0 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_1_ProductModelName")
	local var_2_1 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_2_SerialNumber")
	local var_2_2 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_3_RegulationName")
	local var_2_3 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_4_SoftwareVersion")
	local var_2_4 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_6_ProductType")
	local var_2_5 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_7_ZonesNumber")
	local var_2_6 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_8_ZonesMainCapabilities")
	local var_2_7 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_25_DHWConfiguration")
	local var_2_8 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_29_PuissanceThermiqueNominaleChauf")
	local var_2_9 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_31_PuissanceThermiqueNominaleECS")
	local var_2_10 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_32_EnergyConsumptionSensorCapability")
	local var_2_11 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_33_TotalElectricalEnergyConsumption")
	local var_2_12 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_35_HeatingRelatedElectricalEnergyConsumption")
	local var_2_13 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_37_DHWRelatedElectricalEnergyConsumption")
	local var_2_14 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_39_OperatingMode")
	local var_2_15 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_42_ZonesHeatingInternalSchedulingAvailability")
	local var_2_16 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_46_ZonesCurrentHeatingModes")
	local var_2_17 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_65_ZonesCoolingInternalSchedulingAvailability")
	local var_2_18 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_69_ZonesCurrentCoolingModes")
	local var_2_19 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_92_CurrentDHWMode")
	local var_2_20 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_98_ZonesCurrentHeatingProfiles")
	local var_2_21 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_115_ZonesCurrentCoolingProfiles")
	local var_2_22 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_132_DHWCurrentProfile")
	local var_2_23 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_134_MinHeatingTargetTemperature")
	local var_2_24 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_135_MaxHeatingTargetTemperature")
	local var_2_25 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_136_ZonesComfortHeatingTargetTemperatures")
	local var_2_26 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_153_ZonesEcoHeatingTargetTemperatures")
	local var_2_27 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_187_MinCoolingTargetTemperature")
	local var_2_28 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_188_MaxCoolingTargetTemperature")
	local var_2_29 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_189_ZonesComfortCoolingTargetTemperatures")
	local var_2_30 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_206_ZonesEcoCoolingTargetTemperatures")
	local var_2_31 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_240_ZonesTargetTemperatures")
	local var_2_32 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_257_ComfortTargetDHWTemperature")
	local var_2_33 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_258_EcoTargetDHWTemperature")
	local var_2_34 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_260_DHWTargetTemperature")
	local var_2_35 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_264_HeatingDerogationAvailability")
	local var_2_36 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_299_ZonesDerogationRemainingTimes")
	local var_2_37 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_316_DHWDerogationAvailability")
	local var_2_38 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_317_DHWBoostOnOff")
	local var_2_39 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_318_ThermalComfortSchedulingCapability")
	local var_2_40 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_319_TimeProgram1")
	local var_2_41 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_320_TimeProgram2")
	local var_2_42 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_321_TimeProgram3")
	local var_2_43 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_322_TimeProgram4")
	local var_2_44 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_323_ZonesActiveHeatingTimePrograms")
	local var_2_45 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_340_ZonesActiveCoolingTimePrograms")
	local var_2_46 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_358_DHWProgramming")
	local var_2_47 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_365_FossilEnergyCost")
	local var_2_48 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_366_ElectricalPeakOffHoursEnergyCost")
	local var_2_49 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_367_ElectricalPeakHoursEnergyCost")
	local var_2_50 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_369_AbsenceSchedulingCapability")
	local var_2_51 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_370_AbsenceHeatingTargetTemperature")
	local var_2_52 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_371_AbsenceCoolingTargetTemperature")
	local var_2_53 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_373_AbsenceRemainingTime")
	local var_2_54 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_375_AbsenceEndDateTime")
	local var_2_55 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_376_ZonesTemperatureSensorsAvailability")
	local var_2_56 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_393_ZonesTemperatures")
	local var_2_57 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_410_OutsideTemperatureSensorAvailability")
	local var_2_58 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_411_OutsideTemperature")
	local var_2_59 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_422_ZonesNames")
	local var_2_60 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_443_ZonesHeatingOnOffStates")
	local var_2_61 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_460_ZonesCoolingOnOffStates")
	local var_2_62 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_477_DHWOnOffState")
	local var_2_63 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_728_CoolingRelatedElectricalEnergyConsumption")
	local var_2_64 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_730_ErrorCode")
	local var_2_65 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_733_DerogationOnOffState")
	local var_2_66 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_962_DateTime")
	local var_2_67 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_963_GatewayVersion")
	local var_2_68 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_964_StandardServiceVersion")
	local var_2_69 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Serv_965_TotalFossilEnergyConsumption")
	local var_2_70 = require("Overkiz.HomeAutomation.Shared.IoHomecontrolOvp.Node.nodeModel")
	local var_2_71 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.factory")

	if arg_2_0.manufacturer == var_2_70.manufacturers.Atlantic then
		var_2_71:create(var_2_5, arg_2_0)
		var_2_71:create(var_2_0, arg_2_0)
		var_2_71:create(var_2_6, arg_2_0)
		var_2_71:create(var_2_55, arg_2_0)
		var_2_71:create(var_2_7, arg_2_0)
		var_2_71:create(var_2_57, arg_2_0)
		var_2_71:create(var_2_10, arg_2_0)
		var_2_71:create(var_2_4, arg_2_0)
		var_2_71:create(var_2_35, arg_2_0)
		var_2_71:create(var_2_37, arg_2_0)
		var_2_71:create(var_2_39, arg_2_0)
		var_2_71:create(var_2_50, arg_2_0)
		var_2_71:create(var_2_14, arg_2_0)
		var_2_71:create(var_2_1, arg_2_0)
		var_2_71:create(var_2_15, arg_2_0)
		var_2_71:create(var_2_17, arg_2_0)
		var_2_71:create(var_2_62, arg_2_0)
		var_2_71:create(var_2_60, arg_2_0)
		var_2_71:create(var_2_61, arg_2_0)
		var_2_71:create(var_2_31, arg_2_0)
		var_2_71:create(var_2_65, arg_2_0)
		var_2_71:create(var_2_56, arg_2_0)
		var_2_71:create(var_2_16, arg_2_0)
		var_2_71:create(var_2_18, arg_2_0)
		var_2_71:create(var_2_38, arg_2_0)
		var_2_71:create(var_2_20, arg_2_0)
		var_2_71:create(var_2_21, arg_2_0)
		var_2_71:create(var_2_36, arg_2_0)
		var_2_71:create(var_2_59, arg_2_0)
		var_2_71:create(var_2_64, arg_2_0)
		var_2_71:create(var_2_54, arg_2_0)
		var_2_71:create(var_2_44, arg_2_0)
		var_2_71:create(var_2_45, arg_2_0)
		var_2_71:create(var_2_40, arg_2_0)
		var_2_71:create(var_2_41, arg_2_0)
		var_2_71:create(var_2_42, arg_2_0)
		var_2_71:create(var_2_43, arg_2_0)
		var_2_71:create(var_2_25, arg_2_0)
		var_2_71:create(var_2_26, arg_2_0)
		var_2_71:create(var_2_29, arg_2_0)
		var_2_71:create(var_2_30, arg_2_0)
		var_2_71:create(var_2_23, arg_2_0)
		var_2_71:create(var_2_24, arg_2_0)
		var_2_71:create(var_2_27, arg_2_0)
		var_2_71:create(var_2_28, arg_2_0)
		var_2_71:create(var_2_51, arg_2_0)
		var_2_71:create(var_2_52, arg_2_0)
		var_2_71:create(var_2_11, arg_2_0)
		var_2_71:create(var_2_12, arg_2_0)
		var_2_71:create(var_2_13, arg_2_0)
		var_2_71:create(var_2_8, arg_2_0)
		var_2_71:create(var_2_9, arg_2_0)

		if tostring(var_0_2(arg_2_0)) == tostring(var_0_1.Hybrid) then
			var_2_71:create(var_2_47, arg_2_0)
			var_2_71:create(var_2_48, arg_2_0)
			var_2_71:create(var_2_49, arg_2_0)
			var_2_71:create(var_2_67, arg_2_0)
			var_2_71:create(var_2_68, arg_2_0)
			var_2_71:create(var_2_66, arg_2_0)
			var_2_71:create(var_2_69, arg_2_0)
		end

		var_2_71:create(var_2_2, arg_2_0)
		var_2_71:create(var_2_3, arg_2_0)
		var_2_71:create(var_2_19, arg_2_0)
		var_2_71:create(var_2_22, arg_2_0)
		var_2_71:create(var_2_32, arg_2_0)
		var_2_71:create(var_2_33, arg_2_0)
		var_2_71:create(var_2_34, arg_2_0)
		var_2_71:create(var_2_58, arg_2_0)
		var_2_71:create(var_2_63, arg_2_0)
		var_2_71:create(var_2_46, arg_2_0)
		var_2_71:create(var_2_53, arg_2_0)

		local var_2_72 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Factory.atlanticPassApcParametersFactory")
		local var_2_73 = require("Overkiz.HomeAutomation.Protocol.IoHomecontrol.Parameter.Private.Atlantic.PassAPC.Diagnostics.PassApcDiagnosticParameters")
		local var_2_74 = var_2_72:create(var_2_73.PassAPCHeatPump)

		for iter_2_0, iter_2_1 in ipairs(var_2_74) do
			var_0_0:info("Factory : Create Parameter " .. iter_2_1.name .. " for node " .. arg_2_0.address)
			var_2_71:create(iter_2_1, arg_2_0)
		end
	end
end

return var_0_1
