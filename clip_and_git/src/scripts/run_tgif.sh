#!/bin/bash

gpu=$1

rm -rf ./saved_models/tgif_qa_001
CUDA_VISIBLE_DEVICES=$gpu python tasks/run_video_qa.py --task tgif_qa --config ./configs/tgif_qa_base.json --ans2label_path ../dataset/tgif_qa/annotations/train_ans2label.json 