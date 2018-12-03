# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set GEN_PIX_LOC [ipgui::add_param $IPINST -name "GEN_PIX_LOC" -parent ${Page_0}]
  set_property tooltip {Generate pixel x, y coordinates when the video is active} ${GEN_PIX_LOC}
  set OBJECT_SIZE [ipgui::add_param $IPINST -name "OBJECT_SIZE" -parent ${Page_0}]
  set_property tooltip {the vector size of the location objects} ${OBJECT_SIZE}
  set RESOLUTION [ipgui::add_param $IPINST -name "RESOLUTION" -parent ${Page_0} -layout horizontal]
  set_property tooltip {Choose the resolutions to generate the timings for} ${RESOLUTION}


}

proc update_PARAM_VALUE.GEN_PIX_LOC { PARAM_VALUE.GEN_PIX_LOC } {
	# Procedure called to update GEN_PIX_LOC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GEN_PIX_LOC { PARAM_VALUE.GEN_PIX_LOC } {
	# Procedure called to validate GEN_PIX_LOC
	return true
}

proc update_PARAM_VALUE.OBJECT_SIZE { PARAM_VALUE.OBJECT_SIZE } {
	# Procedure called to update OBJECT_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OBJECT_SIZE { PARAM_VALUE.OBJECT_SIZE } {
	# Procedure called to validate OBJECT_SIZE
	return true
}

proc update_PARAM_VALUE.RESOLUTION { PARAM_VALUE.RESOLUTION } {
	# Procedure called to update RESOLUTION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESOLUTION { PARAM_VALUE.RESOLUTION } {
	# Procedure called to validate RESOLUTION
	return true
}


proc update_MODELPARAM_VALUE.RESOLUTION { MODELPARAM_VALUE.RESOLUTION PARAM_VALUE.RESOLUTION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESOLUTION}] ${MODELPARAM_VALUE.RESOLUTION}
}

proc update_MODELPARAM_VALUE.GEN_PIX_LOC { MODELPARAM_VALUE.GEN_PIX_LOC PARAM_VALUE.GEN_PIX_LOC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GEN_PIX_LOC}] ${MODELPARAM_VALUE.GEN_PIX_LOC}
}

proc update_MODELPARAM_VALUE.OBJECT_SIZE { MODELPARAM_VALUE.OBJECT_SIZE PARAM_VALUE.OBJECT_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OBJECT_SIZE}] ${MODELPARAM_VALUE.OBJECT_SIZE}
}

