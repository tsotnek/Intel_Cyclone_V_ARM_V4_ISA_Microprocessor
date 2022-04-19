transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA {C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA/de0_nano_soc_baseline.v}
vlog -vlog01compat -work work +incdir+C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA {C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA/program_counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA {C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA {C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA/ARMv4ISA_Proccessor_MAIN.v}
vlog -vlog01compat -work work +incdir+C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA {C:/Users/tsotn/Documents/QUARTUS_Intel_projects_FPGA/program_memory.v}

