#!/bin/bash

python train.py task=bash_A1Terrain_NeuroRL_exp_generate_pca \
  train=A1TerrainPPO_LSTM_NeuroRL \
  capture_video=False \
  capture_video_len=1000 \
  force_render=True \
  headless=False \
  test=True \
  checkpoint=runs/2024-01-31-23-57_A1Terrain/nn/last_A1Terrain_ep_10100_rew_17.263123.pth \
  num_envs=280 \
  task.env.specifiedCommandVelocityRanges.linear_x='[0.4, 1.0]' \
  task.env.specifiedCommandVelocityRanges.linear_y='[0., 0.]' \
  task.env.specifiedCommandVelocityRanges.yaw_rate='[0., 0.]' \
  task.env.specifiedCommandVelocityN.linear_x=7 \
  task.env.specifiedCommandVelocityN.linear_y=1 \
  task.env.specifiedCommandVelocityN.yaw_rate=1 \
  task.env.specifiedCommandVelocityN.n_copies=40 \
  task.env.output.export_data=True \
  +output_path='../../neuro-rl/neuro_rl/data/a1_7speeds'
 
# # Define an array of terrainType values
# terrainTypes=("plane" "plane")

# # Loop through the terrainTypes array
# for terrainType in "${terrainTypes[@]}"; do
#   python train.py task=bash_AnymalTerrain_NeuroRL_exp_generate_pca \
#     train=AnymalTerrain_PPO_LSTM_NeuroRL \
#     capture_video=False \
#     capture_video_len=1000 \
#     force_render=True \
#     headless=False \
#     test=True \
#     checkpoint=runs/AnymalTerrain_2023-08-24_15-24-12/nn/last_AnymalTerrain_ep_3200_rew_20.145746.pth \
#     num_envs=400 \
#     task.env.terrain.terrainType="$terrainType"
# done