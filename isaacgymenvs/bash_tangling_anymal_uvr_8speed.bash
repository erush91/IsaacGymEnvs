#!/bin/bash

python train.py task=bash_AnymalTerrain_NeuroRL_exp_generate_pca \
  train=AnymalTerrain_PPO_LSTM_NeuroRL \
  capture_video=False \
  capture_video_len=1000 \
  force_render=True \
  headless=False \
  test=True \
  checkpoint=runs/AnymalTerrain_2023-08-24_15-24-12/nn/last_AnymalTerrain_ep_3200_rew_20.145746.pth \
  num_envs=360 \
  task.env.specifiedCommandVelocityRanges.linear_x='[-1.0, 1.0]' \
  task.env.specifiedCommandVelocityRanges.linear_y='[-1.0, 1.0]' \
  task.env.specifiedCommandVelocityRanges.yaw_rate='[-1.0, 1.0]' \
  task.env.specifiedCommandVelocityN.linear_x=2 \
  task.env.specifiedCommandVelocityN.linear_y=2 \
  task.env.specifiedCommandVelocityN.yaw_rate=2 \
  task.env.specifiedCommandVelocityN.n_copies=45 \
  task.env.output.export_data=True \
  +output_path='../../neuro-rl/neuro_rl/data/anymal_uvr_8speed'