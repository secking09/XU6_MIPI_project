

set root_dir [file dirname [info script]]

proc checkRequiredFiles { root_dir} {
  set status true
  set files [list \
 "[file normalize "$root_dir/sources/system_top.v"]"\
 "[file normalize "$root_dir/constraints/XU6_custom.xdc"]"\
 "[file normalize "$root_dir/utils/Mercury_XU6_PE3.dcp"]"\
 "[file normalize "$root_dir/sources/Mercury_XU6_PE3.vhd"]"\
 "[file normalize "$root_dir/tcl_files/Mercury_XU6_PE3.tcl"]"\
 "[file normalize "$root_dir/constraints/Mercury_XU6_LED_timing.xdc"]"\
 "[file normalize "$root_dir/tcl_files/settings.tcl"]"\
 "[file normalize "$root_dir/sources/Mercury_XU6_wrapper.vhd"]"\ # This is optional you can create your own. 
  ]
  foreach ifile $files {
    if { ![file isfile $ifile] } {
      puts " Could not find file $ifile "
      set status false
    }
  }

  set paths [list \
 "[file normalize "$root_dir/[file normalize "$root_dir/IP_Lib"]"]"\
  ]
  foreach ipath $paths {
    if { ![file isdirectory $ipath] } {
      puts " Could not access $ipath "
      set status false
    }
  }

  return $status
}
  
variable script_file
set script_file "project.tcl"

#Set The project name 
set _xil_proj_name_ "XU6_MIPI_Project" 

set orig_proj_dir "[file normalize "$root_dir/XU6_MIPI_Project"]" 
#./ refers that a subfolder relative to root_dir will be created and project will be located there. 
create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xczu4cg-sfvc784-1-e -force

set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [current_project]
set_property -name "default_lib" -value "xil_defaultlib" -objects $obj
set_property -name "enable_resource_estimation" -value "0" -objects $obj
set_property -name "enable_vhdl_2008" -value "1" -objects $obj
set_property -name "ip_cache_permissions" -value "read write" -objects $obj
set_property -name "ip_output_repo" -value "$proj_dir/${_xil_proj_name_}.cache/ip" -objects $obj
set_property -name "mem.enable_memory_map_generation" -value "1" -objects $obj
set_property -name "part" -value "xczu4cg-sfvc784-1-e" -objects $obj
set_property -name "revised_directory_structure" -value "1" -objects $obj
set_property -name "sim.central_dir" -value "$proj_dir/${_xil_proj_name_}.ip_user_files" -objects $obj
set_property -name "sim.ip.auto_export_scripts" -value "1" -objects $obj
set_property -name "simulator_language" -value "Mixed" -objects $obj
set_property -name "target_language" -value "VHDL" -objects $obj
set_property -name "webtalk.activehdl_export_sim" -value "1" -objects $obj
set_property -name "webtalk.modelsim_export_sim" -value "1" -objects $obj
set_property -name "webtalk.questa_export_sim" -value "1" -objects $obj
set_property -name "webtalk.riviera_export_sim" -value "1" -objects $obj
set_property -name "webtalk.vcs_export_sim" -value "1" -objects $obj
set_property -name "webtalk.xsim_export_sim" -value "1" -objects $obj
set_property -name "xpm_libraries" -value "XPM_CDC XPM_FIFO XPM_MEMORY" -objects $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
if { $obj != {} } {
   set_property "ip_repo_paths" "[file normalize "$root_dir/IP_Lib"]" $obj

   # Rebuild user ip_repo's index before adding any source files
   update_ip_catalog -rebuild
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 [file normalize "${root_dir}/sources/Mercury_XU6_PE3.vhd"] \
 [file normalize "${root_dir}/sources/system_top.v"]\
 [file normalize "${root_dir}/sources/Mercury_XU6_wrapper.vhd"]\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property -name "top" -value "system_top" -objects $obj
set_property -name "top_auto_set" -value "0" -objects $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$root_dir/tcl_files/Mercury_XU6_PE3.tcl"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "$root_dir/tcl_files/Mercury_XU6_PE3.tcl"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "TCL" -objects $file_obj
set_property -name "is_enabled" -value "0" -objects $file_obj
set_property -name "used_in" -value "" -objects $file_obj
set_property -name "used_in_implementation" -value "0" -objects $file_obj
set_property -name "used_in_simulation" -value "0" -objects $file_obj
set_property -name "used_in_synthesis" -value "0" -objects $file_obj

# Add constrs file and set constrs file properties
set file "[file normalize "$root_dir/constraints/Mercury_XU6_LED_timing.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "$root_dir/constraints/Mercury_XU6_LED_timing.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj
set_property -name "used_in" -value "" -objects $file_obj
set_property -name "used_in_implementation" -value "0" -objects $file_obj
set_property -name "used_in_synthesis" -value "0" -objects $file_obj


# Add constrs file and set constrs file properties
set file "[file normalize "$root_dir/constraints/XU6_custom.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "$root_dir/constraints/XU6_custom.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj
set_property -name "used_in" -value "" -objects $file_obj
set_property -name "used_in_implementation" -value "1" -objects $file_obj
set_property -name "used_in_synthesis" -value "1" -objects $file_obj


# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property -name "target_constrs_file" -value "$root_dir/constraints/XU6_custom.xdc" -objects $obj
set_property -name "target_part" -value "xczu4cg-sfvc784-1-e" -objects $obj
set_property -name "target_ucf" -value "$root_dir/constraints/XU6_custom.xdc" -objects $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property -name "top" -value "Mercury_XU6_PE3" -objects $obj
set_property -name "top_auto_set" -value "0" -objects $obj
set_property -name "top_lib" -value "xil_defaultlib" -objects $obj

# Set 'utils_1' fileset object
set obj [get_filesets utils_1]
set files [list \
 [file normalize "${root_dir}/tcl_files/settings.tcl"] \
]
add_files -norecurse -fileset $obj $files
set obj [get_filesets utils_1]

source ./create_bd.tcl
cr_bd_Mercury_XU6 ""











































