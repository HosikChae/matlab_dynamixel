function Address = loadAddress(model)
	Address.type.BYTE = 1;
	Address.type.WORD = 2;
if nargin < 1
elseif strcmp('mx106', model) == true
	Address.model_number.value = 					 0;	 % 0X00 WORD
	Address.version_of_firmware.value = 			 2;	 % 0X02 BYTE
	Address.id.value = 								 3;	 % 0X03 BYTE
	Address.baud_rate.value = 						 4;	 % 0X04 BYTE
	Address.return_delay_time.value = 				 5;	 % 0X05 BYTE
	Address.cw_angle_limit.value = 					 6;	 % 0X06 WORD
	Address.ccw_angle_limit.value = 				 8;	 % 0X08 WORD
	Address.drive_mode.value = 						10;	 % 0X0A BYTE
	Address.the_highest_limit_temperature.value = 	11;	 % 0X0B BYTE
	Address.the_lowest_limit_voltage.value = 		12;	 % 0X0C BYTE
	Address.the_highest_limit_voltage.value = 		13;	 % 0X0D BYTE
	Address.max_torque.value = 						14;	 % 0X0E WORD
	Address.status_return_level.value = 			16;	 % 0X10 BYTE
	Address.alarm_led.value = 						17;	 % 0X11 BYTE
	Address.alarm_shutdown.value = 					18;	 % 0X12 BYTE
	Address.multi_turn_offset.value = 				20;	 % 0X14 WORD
	Address.resolution_divider.value = 				22;	 % 0X16 BYTE
	Address.torque_enable.value = 					24;	 % 0X18 BYTE
	Address.led.value = 							25;	 % 0X19 BYTE
	Address.d_gain.value = 							26;	 % 0X1A BYTE
	Address.i_gain.value = 							27;	 % 0X1B BYTE
	Address.p_gain.value = 							28;	 % 0X1C BYTE
	Address.goal_position.value = 					30;	 % 0X1E WORD
	Address.moving_speed.value = 					32;	 % 0X20 WORD
	Address.torque_limit.value = 					34;	 % 0X22 WORD
	Address.present_position.value = 				36;	 % 0X24 WORD
	Address.present_speed.value = 					38;	 % 0X26 WORD
	Address.present_load.value = 					40;	 % 0X28 WORD
	Address.present_voltage.value = 				42;	 % 0X2A BYTE
	Address.present_temperature.value = 			43;	 % 0X2B BYTE
	Address.registered.value = 						44;	 % 0X2C BYTE
	Address.moving.value = 							46;	 % 0X2E BYTE
	Address.lock.value = 							47;	 % 0X2F BYTE
	Address.punch.value = 							48;	 % 0X30 WORD
	Address.current.value = 						68;	 % 0X44 WORD
	Address.torque_control_mode_enable.value = 		70;	 % 0X46 BYTE
	Address.goal_torque.value = 					71;	 % 0X47 WORD
	Address.goal_acceleration.value = 				73;	 % 0X49 BYTE

	Address.model_number.type = 					Address.type.WORD;
	Address.version_of_firmware.type = 				Address.type.BYTE;
	Address.id.type = 								Address.type.BYTE;
	Address.baud_rate.type = 						Address.type.BYTE;
	Address.return_delay_time.type = 				Address.type.BYTE;
	Address.cw_angle_limit.type = 					Address.type.WORD;
	Address.ccw_angle_limit.type = 					Address.type.WORD;
	Address.drive_mode.type = 						Address.type.BYTE;
	Address.the_highest_limit_temperature.type = 	Address.type.BYTE;
	Address.the_lowest_limit_voltage.type = 		Address.type.BYTE;
	Address.the_highest_limit_voltage.type = 		Address.type.BYTE;
	Address.max_torque.type = 						Address.type.WORD;
	Address.status_return_level.type = 				Address.type.BYTE;
	Address.alarm_led.type = 						Address.type.BYTE;
	Address.alarm_shutdown.type = 					Address.type.BYTE;
	Address.multi_turn_offset.type = 				Address.type.WORD;
	Address.resolution_divider.type = 				Address.type.BYTE;
	Address.torque_enable.type = 					Address.type.BYTE;
	Address.led.type = 								Address.type.BYTE;
	Address.d_gain.type = 							Address.type.BYTE;
	Address.i_gain.type = 							Address.type.BYTE;
	Address.p_gain.type = 							Address.type.BYTE;
	Address.goal_position.type = 					Address.type.WORD;
	Address.moving_speed.type = 					Address.type.WORD;
	Address.torque_limit.type = 					Address.type.WORD;
	Address.present_position.type = 				Address.type.WORD;
	Address.present_speed.type = 					Address.type.WORD;
	Address.present_load.type = 					Address.type.WORD;
	Address.present_voltage.type = 					Address.type.BYTE;
	Address.present_temperature.type = 				Address.type.BYTE;
	Address.registered.type = 						Address.type.BYTE;
	Address.moving.type = 							Address.type.BYTE;
	Address.lock.type = 							Address.type.BYTE;
	Address.punch.type = 							Address.type.WORD;
	Address.current.type = 							Address.type.WORD;
	Address.torque_control_mode_enable.type = 		Address.type.BYTE;
	Address.goal_torque.type = 						Address.type.WORD;
	Address.goal_acceleration.type = 				Address.type.BYTE;
else
	Address.model_number.value = 					 0;	 % 0X00 WORD
	Address.version_of_firmware.value = 			 2;	 % 0X02 BYTE
	Address.id.value = 								 3;	 % 0X03 BYTE
	Address.baud_rate.value = 						 4;	 % 0X04 BYTE
	Address.return_delay_time.value = 				 5;	 % 0X05 BYTE
	Address.cw_angle_limit.value = 					 6;	 % 0X06 WORD
	Address.ccw_angle_limit.value = 				 8;	 % 0X08 WORD
	Address.drive_mode.value = 						10;	 % 0X0A BYTE
	Address.the_highest_limit_temperature.value = 	11;	 % 0X0B BYTE
	Address.the_lowest_limit_voltage.value = 		12;	 % 0X0C BYTE
	Address.the_highest_limit_voltage.value = 		13;	 % 0X0D BYTE
	Address.max_torque.value = 						14;	 % 0X0E WORD
	Address.status_return_level.value = 			16;	 % 0X10 BYTE
	Address.alarm_led.value = 						17;	 % 0X11 BYTE
	Address.alarm_shutdown.value = 					18;	 % 0X12 BYTE
	Address.multi_turn_offset.value = 				20;	 % 0X14 WORD
	Address.resolution_divider.value = 				22;	 % 0X16 BYTE
	Address.torque_enable.value = 					24;	 % 0X18 BYTE
	Address.led.value = 							25;	 % 0X19 BYTE
	Address.d_gain.value = 							26;	 % 0X1A BYTE
	Address.i_gain.value = 							27;	 % 0X1B BYTE
	Address.p_gain.value = 							28;	 % 0X1C BYTE
	Address.goal_position.value = 					30;	 % 0X1E WORD
	Address.moving_speed.value = 					32;	 % 0X20 WORD
	Address.torque_limit.value = 					34;	 % 0X22 WORD
	Address.present_position.value = 				36;	 % 0X24 WORD
	Address.present_speed.value = 					38;	 % 0X26 WORD
	Address.present_load.value = 					40;	 % 0X28 WORD
	Address.present_voltage.value = 				42;	 % 0X2A BYTE
	Address.present_temperature.value = 			43;	 % 0X2B BYTE
	Address.registered.value = 						44;	 % 0X2C BYTE
	Address.moving.value = 							46;	 % 0X2E BYTE
	Address.lock.value = 							47;	 % 0X2F BYTE
	Address.punch.value = 							48;	 % 0X30 WORD
	Address.current.value = 						68;	 % 0X44 WORD
	Address.torque_control_mode_enable.value = 		70;	 % 0X46 BYTE
	Address.goal_torque.value = 					71;	 % 0X47 WORD
	Address.goal_acceleration.value = 				73;	 % 0X49 BYTE

	Address.model_number.type = 					Address.type.WORD;
	Address.version_of_firmware.type = 				Address.type.BYTE;
	Address.id.type = 								Address.type.BYTE;
	Address.baud_rate.type = 						Address.type.BYTE;
	Address.return_delay_time.type = 				Address.type.BYTE;
	Address.cw_angle_limit.type = 					Address.type.WORD;
	Address.ccw_angle_limit.type = 					Address.type.WORD;
	Address.drive_mode.type = 						Address.type.BYTE;
	Address.the_highest_limit_temperature.type = 	Address.type.BYTE;
	Address.the_lowest_limit_voltage.type = 		Address.type.BYTE;
	Address.the_highest_limit_voltage.type = 		Address.type.BYTE;
	Address.max_torque.type = 						Address.type.WORD;
	Address.status_return_level.type = 				Address.type.BYTE;
	Address.alarm_led.type = 						Address.type.BYTE;
	Address.alarm_shutdown.type = 					Address.type.BYTE;
	Address.multi_turn_offset.type = 				Address.type.WORD;
	Address.resolution_divider.type = 				Address.type.BYTE;
	Address.torque_enable.type = 					Address.type.BYTE;
	Address.led.type = 								Address.type.BYTE;
	Address.d_gain.type = 							Address.type.BYTE;
	Address.i_gain.type = 							Address.type.BYTE;
	Address.p_gain.type = 							Address.type.BYTE;
	Address.goal_position.type = 					Address.type.WORD;
	Address.moving_speed.type = 					Address.type.WORD;
	Address.torque_limit.type = 					Address.type.WORD;
	Address.present_position.type = 				Address.type.WORD;
	Address.present_speed.type = 					Address.type.WORD;
	Address.present_load.type = 					Address.type.WORD;
	Address.present_voltage.type = 					Address.type.BYTE;
	Address.present_temperature.type = 				Address.type.BYTE;
	Address.registered.type = 						Address.type.BYTE;
	Address.moving.type = 							Address.type.BYTE;
	Address.lock.type = 							Address.type.BYTE;
	Address.punch.type = 							Address.type.WORD;
	Address.current.type = 							Address.type.WORD;
	Address.torque_control_mode_enable.type = 		Address.type.BYTE;
	Address.goal_torque.type = 						Address.type.WORD;
	Address.goal_acceleration.type = 				Address.type.BYTE;
end

