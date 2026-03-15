# CDC false paths: AXI clock <-> neuro clock (async_fifo handles crossing)
set_false_path -from [get_clocks -of_objects [get_pins WRAPPER/CL/u_mmcm/CLKIN1]] \
               -to   [get_clocks -of_objects [get_pins WRAPPER/CL/u_mmcm/CLKOUT0]]
set_false_path -from [get_clocks -of_objects [get_pins WRAPPER/CL/u_mmcm/CLKOUT0]] \
               -to   [get_clocks -of_objects [get_pins WRAPPER/CL/u_mmcm/CLKIN1]]
