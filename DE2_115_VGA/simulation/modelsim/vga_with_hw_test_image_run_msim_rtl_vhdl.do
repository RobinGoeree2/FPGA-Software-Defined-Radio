transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Robin/Downloads/vga_with_hw_test_image_v1_1_restored/db {C:/Users/Robin/Downloads/vga_with_hw_test_image_v1_1_restored/db/altpll0_altpll.v}
vcom -93 -work work {C:/Users/Robin/Downloads/vga_with_hw_test_image_v1_1_restored/vga_controller.vhd}
vcom -93 -work work {C:/Users/Robin/Downloads/vga_with_hw_test_image_v1_1_restored/hw_image_generator.vhd}
vcom -93 -work work {C:/Users/Robin/Downloads/vga_with_hw_test_image_v1_1_restored/altpll0.vhd}

