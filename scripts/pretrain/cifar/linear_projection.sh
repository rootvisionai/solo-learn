python3 main_pretrain.py \
    --dataset cifar10 \
    --backbone resnet18 \
    --train_data_path ./datasets \
    --val_data_path ./datasets \
    --max_epochs 1500 \
    --devices 0 \
    --num_workers 1 \
    --accelerator gpu \
    --precision 16 \
    --optimizer adamw \
    --grad_clip_lars \
    --scheduler warmup_cosine \
    --lr 0.001 \
    --weight_decay 1e-4 \
    --batch_size 1024 \
    --brightness 0.4 \
    --contrast 0.4 \
    --saturation 0.2 \
    --hue 0.1 \
    --gaussian_prob 0.0 0.0 \
    --solarization_prob 0.0 0.2 \
    --crop_size 32 \
    --num_crops_per_aug 1 1 \
    --name linear_projection_shallow_proj_1 \
    --project acc-data-ai \
    --entity evrimozmermer \
    --wandb \
    --save_checkpoint \
    --method linear_projection \
    --proj_hidden_dim 1024 \
    --proj_output_dim 128 \
    --auto_resume \
    --auto_resumer_max_hours 120
