set_global_assignment -entity "sram_audio" -library "lib_sram_audio" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "sram_audio" -library "lib_sram_audio" -name IP_TOOL_VERSION "21.1"
set_global_assignment -entity "sram_audio" -library "lib_sram_audio" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_sram_audio" -name SPD_FILE [file join $::quartus(sip_path) "../sram_audio.spd"]
set_global_assignment -library "lib_sram_audio" -name MISC_FILE [file join $::quartus(sip_path) "../../sram_audio.qsys"]

set_global_assignment -library "lib_sram_audio" -name MISC_FILE [file join $::quartus(sip_path) "sram_audio.v"]
set_global_assignment -library "lib_sram_audio" -name MISC_FILE [file join $::quartus(sip_path) "submodules/sram_audio_sram_0.v"]
