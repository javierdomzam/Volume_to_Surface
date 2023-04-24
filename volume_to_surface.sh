#!/bin/bash

# Print start timestamp
echo "----JOB START [`date`]"

# Set paths for left and right hemisphere brain surface files
brain_right=S1200.R.inflated_MSMAll.32k_fs_LR.surf.gii
brain_left=S1200.L.inflated_MSMAll.32k_fs_LR.surf.gii

# Set path for ROI directory
ROI=/your_ROI_direcotry

ROI_save=/your_ROI_direcotry

# Loop through a set of IDs
for ID in 1 2 3; do # number of ROIs 

	# Set ROI file names and paths for right and left hemispheres
	ROI_name_right="roi${ID}_rh.nii.gz"
    ROI_name_left="roi${ID}_lh.nii.gz"
    ROI_save_right="ROI_${ID}_R.shape.gii"
    ROI_save_left="ROI_${ID}_L.shape.gii"

	# Map the ROI to the right hemisphere brain surface and save as a shape file
	wb_command -volume-to-surface-mapping ${ROI}/${ROI_name_right} ${brain_right} ${ROI_save}/${ROI_save_right} -trilinear

	# Map the ROI to the left hemisphere brain surface and save as a shape file
	wb_command -volume-to-surface-mapping ${ROI}/${ROI_name_left} ${brain_left} ${ROI_save}/${ROI_save_left} -trilinear
done

# Print end timestamp
echo "----JOB END [`date`]"