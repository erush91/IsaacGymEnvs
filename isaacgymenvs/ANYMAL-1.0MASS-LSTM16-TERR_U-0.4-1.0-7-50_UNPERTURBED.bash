#!/bin/bash

# Extract the base name of the script
script_name=$(basename "$0")

# Optionally remove the .sh extension from the script name
# If your script file doesn't have an extension or you want to keep it, you can skip this step
script_name="${script_name%.*}"

python train.py task=bash_AnymalTerrain_NeuroRL_exp \
  train=AnymalTerrainPPO_LSTM_NeuroRL \
  capture_video=False \
  capture_video_len=1000 \
  force_render=True \
  headless=False \
  test=True \
  checkpoint=runs/2023-08-27-17-23_AnymalTerrain/nn/last_AnymalTerrain_ep_2900_rew_20.2482.pth \
  num_envs=350 \
  task.env.specifiedCommandVelocityRanges.linear_x='[0.4, 1.0]' \
  task.env.specifiedCommandVelocityRanges.linear_y='[0., 0.]' \
  task.env.specifiedCommandVelocityRanges.yaw_rate='[0., 0.]' \
  task.env.specifiedCommandVelocityN.linear_x=7 \
  task.env.specifiedCommandVelocityN.linear_y=1 \
  task.env.specifiedCommandVelocityN.yaw_rate=1 \
  task.env.specifiedCommandVelocityN.n_copies=50 \
  task.env.output.export_data=True \
  +output_path="../../neuro-rl/neuro_rl/data/raw/${script_name}"
  
  # UPDATE CHECKPOINT ONCE MODEL IS TRAINED ../../neuro-rl/neuro_rl/models/ANYMAL-1.0MASS-LSTM16-DISTTERR/nn/last_AnymalTerrain_ep_986_rew_20.12886.pth