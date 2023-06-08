# add --individual for DLinear-I
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/F_fin" ]; then
    mkdir ./logs/F_fin
fi
seq_len=700
model_name=FITS

for H_order in 12 10
do
for seq_len in 90 180 360 720
do
for m in 1 2
do

python -u run_longExp_F.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTm2.csv \
  --model_id ETTm2_$seq_len'_'96 \
  --model $model_name \
  --data ETTm2 \
  --features M \
  --seq_len $seq_len \
  --pred_len 96 \
  --enc_in 7 \
  --des 'Exp' \
  --train_mode $m \
  --H_order $H_order \
  --base_T 96 \
  --itr 1 --batch_size 32 --learning_rate 0.0005 >logs/F_fin/$m'_'$model_name'_'Ettm2_$seq_len'_'96'_H'$H_order.log

python -u run_longExp_F.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTm2.csv \
  --model_id ETTm2_$seq_len'_'192 \
  --model $model_name \
  --data ETTm2 \
  --features M \
  --seq_len $seq_len \
  --pred_len 192 \
  --enc_in 7 \
  --des 'Exp' \
  --train_mode $m \
  --H_order $H_order \
  --base_T 96 \
  --itr 1 --batch_size 32 --learning_rate 0.0005 >logs/F_fin/$m'_'$model_name'_'Ettm2_$seq_len'_'192'_H'$H_order.log

python -u run_longExp_F.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTm2.csv \
  --model_id ETTm2_$seq_len'_'336 \
  --model $model_name \
  --data ETTm2 \
  --features M \
  --seq_len $seq_len \
  --pred_len 336 \
  --enc_in 7 \
  --des 'Exp' \
  --train_mode $m \
  --H_order $H_order \
  --base_T 96 \
  --itr 1 --batch_size 32 --learning_rate 0.0005 >logs/F_fin/$m'_'$model_name'_'Ettm2_$seq_len'_'336'_H'$H_order.log

python -u run_longExp_F.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTm2.csv \
  --model_id ETTm2_$seq_len'_'720 \
  --model $model_name \
  --data ETTm2 \
  --features M \
  --seq_len $seq_len \
  --pred_len 720 \
  --enc_in 7 \
  --des 'Exp' \
  --train_mode $m \
  --H_order $H_order \
  --base_T 96 \
  --itr 1 --batch_size 32 --learning_rate 0.0005 >logs/F_fin/$m'_'$model_name'_'Ettm2_$seq_len'_'720'_H'$H_order.log


done
done
done