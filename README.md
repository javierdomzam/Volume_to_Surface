# Simple Script for Volume to Surface Mapping 
This script maps a set of region of interest (ROI) files from volume space to the surface of the brain using the Connectome Workbench command-line tool wb_command. The resulting surface files are saved as shape files in the specified directory.

## Usage
1. Set the paths to the right and left hemisphere brain surface files (brain_right and brain_left variables).
2. Set the path to the directory containing your ROI files (ROI variable).
3. Set the path to the directory where you want to save the resulting shape files (ROI_save variable).
4. Specify the number of ROIs to be mapped in the for loop (for ID in 1 2 3; do).

## Run the script.
```bash
./volume-to-surface.sh
```

## Requirements
Connectome Workbench (https://www.humanconnectome.org/software/connectome-workbench)

Bash shell
