webtalk_init -webtalk_dir E:/Projects/uart/uart.sim/sim_1/behav/xsim/xsim.dir/tb_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Sun Dec 20 05:21:07 2020" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2019.1 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2552052" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "WIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "76bbbdb4-500f-4f97-aef1-274909c0b580" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "bf0bfda9edf24ea1bc727ba4f096dbf6" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "29" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Windows Server 2016 or Windows 10" -context "user_environment"
webtalk_add_data -client project -key os_release -value "major release  (build 9200)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-8750H CPU @ 2.20GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2208 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "17.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key runall -value "true" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "10538615 ns" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "1" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.65_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "14188_KB" -context "xsim\\usage"
webtalk_transmit -clientid 1120136273 -regid "" -xml E:/Projects/uart/uart.sim/sim_1/behav/xsim/xsim.dir/tb_behav/webtalk/usage_statistics_ext_xsim.xml -html E:/Projects/uart/uart.sim/sim_1/behav/xsim/xsim.dir/tb_behav/webtalk/usage_statistics_ext_xsim.html -wdm E:/Projects/uart/uart.sim/sim_1/behav/xsim/xsim.dir/tb_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
