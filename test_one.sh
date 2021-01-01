#!/bin/bash
source activate pytorch_031
cd custom_data
./make_dataset_test.sh
cd ..

python test.py --dataroot ./custom_data/ \
    --name notext_PATB_3 \
    --model PATN \
    --phase test \
    --dataset_mode keypoint \
    --norm instance \
    --batchSize 1 \
    --resize_or_crop no \
    --gpu_ids 0 \
    --BP_input_nc 18 \
    --no_flip \
    --which_model_netG PATN \
    --checkpoints_dir ./checkpoints \
    --pairLst ./custom_data/fasion-resize-pairs-test.csv \
    --which_epoch latest \
    --results_dir ./results \
    --display_id 0 \
