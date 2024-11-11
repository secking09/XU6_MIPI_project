
VIVADO = vivado

PROJECT_DIR = ./XU6_MIPI_Project



PROJECT_NAME = XU6_MIPI_Project

PROJECT_PARENT_DIR = $(shell pwd)

BD_TCL = $(PROJECT_PARENT_DIR)/project.tcl

export_bd = PROJECT_DIR/Mercury_XU6.tcl

.PHONY: all
all : build 

.PHONY: build
build: 
	@echo " project will be built. "	
	$(VIVADO) -mode batch -source $(BD_TCL) 
	
.PHONY: clean
clean:
	@echo "Cleaning up..."
	rm -rf ./$(PROJECT_NAME)
    
