# 1.07 it/s
#    --optimizer lars \
#    --grad_clip_lars \
#    --eta_lars 0.02 \
#    --exclude_bias_n_norm_lars \
#    --scheduler warmup_cosine \
#    --lr 0.3 \
#    --weight_decay 1e-5 \
python main_pretrain.py \
    --dataset custom \
    --backbone swin_tiny \
    --train_data_path ./datasets/universal_image_embeddings/train \
    --val_data_path ./datasets/universal_image_embeddings/eval \
    --max_epochs 100 \
    --devices 0 \
    --num_workers 0 \
    --accelerator gpu \
    --precision 16 \
    --optimizer adamw \
    --scheduler warmup_cosine \
    --min_lr 0.000012 \
    --lr 0.0001 \
    --weight_decay 1e-4 \
    --batch_size 128 \
    --brightness 0.2 \
    --contrast 0.2 \
    --saturation 0.2 \
    --hue 0.1 \
    --gaussian_prob 0.0 0.4 \
    --solarization_prob 0.0 0.0 \
    --num_crops_per_aug 1 1 \
    --crop_size 224 \
    --knn_eval \
    --name bt_uie_adamw \
    --project ssl-lp-whitepaper \
    --entity evrimozmermer \
    --save_checkpoint \
    --method barlow_twins \
    --proj_hidden_dim 512 \
    --proj_output_dim 16