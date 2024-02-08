#!/bin/bash

# Define an array of terrainType values
terrainTypes=("plane" "plane")

# Loop through the terrainTypes array
for terrainType in "${terrainTypes[@]}"; do
  python train.py task=AnymalTerrain_NeuroRL_exp \
    train=AnymalTerrain_PPO_LSTM_NeuroRL \
    capture_video=False \
    capture_video_len=1000 \
    force_render=True \
    headless=False \
    test=True \
    checkpoint=runs/AnymalTerrain_2023-08-24_15-24-12/nn/last_AnymalTerrain_ep_3200_rew_20.145746.pth \
    num_envs=11 \
    task.env.terrain.terrainType="$terrainType" \
    task.env.specifiedCommandVelocityRanges.linear_x='[-1.0, 1.0]' \
    task.env.specifiedCommandVelocityN.linear_x=11 \
    task.env.specifiedCommandVelocityN.n_copies=1
done
