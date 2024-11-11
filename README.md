# XU6_MIPI_project

This Project contains the latest HDL version for HDR Project on MIPI Data. Seckin's master thesis. 

To ease of use, this project is contained in a certain folder structure. 

# How to use

1- Clone this project
2- enter into directory.
3- vivado has to be added as system variable, if not, on your bash execute this: source ./<directory to vivado>settings64.sh 
4- run make
5- Project should be created as a subfolder to your cloned repo. Open it in vivado. 

# Warning maybe? 
If you run make more than once then you will lose your project because it creates a new one and deletes the existing each time. So once the project is there you shouldn't make. 

# TODOs; 
- When any developer adds a new source file or constraint it needs to be added to tcl script so an automation must be found. But if already existing ones are modified it's fine.
- When block design is modified new changes must be reflected on the tcl script.
- I need to divide zynq config and block desing tcl files so that zynq config can be updated without being have to generate the design. 
