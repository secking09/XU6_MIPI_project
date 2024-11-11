# XU6_MIPI_project

This project contains the latest HDL version for the HDR project on MIPI Data, as part of Seckin's master thesis.

To make it easier to use, this project follows a specific folder structure.

---

## How to Use

Follow these steps to get started with the project:

1. **Clone this project**  
   Clone the repository to your local machine.

2. **Navigate into the project directory**  
   Change into the project directory with:
   ```bash
   cd XU6_MIPI_project
3. **Ensure Vivado is in your system path**
    Vivado should be added to your system’s environment variables. If not, run the following command in your bash terminal:
   ```bash
   source <path_to_vivado>/settings64.sh
4. **Run the make Command**
    ```bash
    make
5. **Open the generated project in vivado**
   

## Warning maybe? 
If you run make more than once then you will lose your project because it creates a new one and deletes the existing each time. So once the project is there you shouldn't make. 

## TODOs; 
- When any developer adds a new source file or constraint it needs to be added to tcl script so an automation must be found. But if already existing ones are modified it's fine.
- When block design is modified new changes must be reflected on the tcl script.
- I need to divide zynq config and block desing tcl files so that zynq config can be updated without being have to generate the design. 






   
