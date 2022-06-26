# file: nios2_sdk_shell_bashrc
#
# 2010.04.06 dvb
#
# +------------------------------------------------
# | This is the Nios II Kit SDK Shell rc file
# |
# | It calls the standard SOPC Builder rc file, first, and
# | then patches a few things up to do with replicated
# | scripts and revisions, so that the ones provided
# | with Nios II take precedence.
# |

# |
# | call the SOPC Builder standard script
# |

. "$QUARTUS_ROOTDIR/sopc_builder/bin/nios_bash"

# |
# | Alias things we like very much
# |

alias nb=nios2-build
alias nios-build=nios2-build
alias nr=nios2-run
alias nios-run=nios2-run
alias nd=nios2-debug
alias nios-debug=nios2-debug
alias nc=nios2-console
alias nios-console=nios2-console

# richard add
nios2-download DE2_115_SD_Card_Audio_Player.elf -c USB-Blaster[USB-0] -r -g
nios2-terminal -c USB-Blaster[USB-0] 
# remove exit

# End of file