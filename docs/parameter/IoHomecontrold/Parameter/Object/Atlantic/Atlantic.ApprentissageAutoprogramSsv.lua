﻿local var_0_0 = require("Overkiz.HomeAutomation.Shared.IoHomecontrolOvp.Parameter.timeUtils")
local var_0_1 = require("Overkiz.HomeAutomation.Shared.IoHomecontrolOvp.Parameter.Definition")
local var_0_2 = require("Overkiz.HomeAutomation.Shared.IoHomecontrolOvp.Command.commandModel")
local var_0_3 = {
	onRecurrence = var_0_0.recurrent.oncePerDayRandom,
	info = {
		parameter = 5,
		value = {
			type = "ay",
			data = {
				12,
				0,
				4
			}
		}
	}
}

return (var_0_1(84672516, var_0_2.access.READ, var_0_3))
