python -m torch.distributed.launch  examples/run_docvqa.py \
        --model_name_or_path microsoft/layoutlm-base-uncased \
        --output_dir results_docvqa \
        --do_train \
        --do_eval \
        --do_predict \
        --max_steps 50000 \
        --warmup_ratio 0.1 \
        --evaluation_strategy "steps" \
        --logging_strategy "steps" \
        --save_strategy "steps" \
        --eval_steps 5000 \
        --save_steps 10000 \
        --logging_steps 1 \
        --per_device_train_batch_size=8 \
        --per_device_eval_batch_size=8 \
        --num_train_epochs 5 \
        --config_name layoutlm_config.json \
        --report_to tensorboard \
        --return_entity_level_metrics
