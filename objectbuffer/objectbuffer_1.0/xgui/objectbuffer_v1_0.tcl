# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_S00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S00_AXI_DATA_WIDTH}
  set C_S00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S00_AXI_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}

  ipgui::add_param $IPINST -name "OBJECT_SIZE"
  ipgui::add_param $IPINST -name "PIXEL_SIZE"
  ipgui::add_param $IPINST -name "RES_X"
  ipgui::add_param $IPINST -name "RES_Y"

}

proc update_PARAM_VALUE.OBJECT_SIZE { PARAM_VALUE.OBJECT_SIZE } {
	# Procedure called to update OBJECT_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OBJECT_SIZE { PARAM_VALUE.OBJECT_SIZE } {
	# Procedure called to validate OBJECT_SIZE
	return true
}

proc update_PARAM_VALUE.PIXEL_SIZE { PARAM_VALUE.PIXEL_SIZE } {
	# Procedure called to update PIXEL_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PIXEL_SIZE { PARAM_VALUE.PIXEL_SIZE } {
	# Procedure called to validate PIXEL_SIZE
	return true
}

proc update_PARAM_VALUE.RES_X { PARAM_VALUE.RES_X } {
	# Procedure called to update RES_X when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RES_X { PARAM_VALUE.RES_X } {
	# Procedure called to validate RES_X
	return true
}

proc update_PARAM_VALUE.RES_Y { PARAM_VALUE.RES_Y } {
	# Procedure called to update RES_Y when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RES_Y { PARAM_VALUE.RES_Y } {
	# Procedure called to validate RES_Y
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.OBJECT_SIZE { MODELPARAM_VALUE.OBJECT_SIZE PARAM_VALUE.OBJECT_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OBJECT_SIZE}] ${MODELPARAM_VALUE.OBJECT_SIZE}
}

proc update_MODELPARAM_VALUE.PIXEL_SIZE { MODELPARAM_VALUE.PIXEL_SIZE PARAM_VALUE.PIXEL_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PIXEL_SIZE}] ${MODELPARAM_VALUE.PIXEL_SIZE}
}

proc update_MODELPARAM_VALUE.RES_X { MODELPARAM_VALUE.RES_X PARAM_VALUE.RES_X } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RES_X}] ${MODELPARAM_VALUE.RES_X}
}

proc update_MODELPARAM_VALUE.RES_Y { MODELPARAM_VALUE.RES_Y PARAM_VALUE.RES_Y } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RES_Y}] ${MODELPARAM_VALUE.RES_Y}
}

