# How to use: type 'sh train.sh' on your CLI
python train.py \
--load_data_filename load_data_junejae \
--load_data_func_load load_data \
--load_data_func_tokenized tokenized_dataset \
--load_data_class RE_Dataset \
--metric_for_best_model 'eval_micro f1 score' \
--gradient_accumulation_steps 1 \
--fp16 True \
--usingAugmentation True \
--aug_data ../dataset/train/augmented_vowelNoise.csv \
--seed 42 \
--model klue/bert-base \
--train_data ../dataset/train/train_finalCorrection.csv \
--num_labels 30 \
--output_dir ./results \
--save_total_limit 10 \
--save_steps 100 \
--num_train_epochs 10 \
--learning_rate 5e-5 \
--per_device_train_batch_size 64 \
--per_device_eval_batch_size 64 \
--warmup_steps 500 \
--weight_decay 0.01 \
--logging_dir ./logs \
--logging_steps 100 \
--evaluation_strategy steps \
--eval_steps  100 \
--load_best_model_at_end True \
--save_pretrained ./best_model \
--tokenize punct \
--n_splits 1 \
--test_size 0.2 \
--report_to wandb \
--project_name [junejae]aug_test \
--entity_name growing_sesame \
--run_name bert_batch64_epoch10_vowelNoise

# --train_data ../dataset/train/train.csv \
# --train_data ../dataset/train/train_finalCorrection.csv \