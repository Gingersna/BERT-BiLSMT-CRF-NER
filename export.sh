export BERT_BASE_DIR='chinese_L-12_H-768_A-12'
python3 bert_lstm_ner.py \
		--data_dir=NERdata \
		--task_name="ner" \
		--vocab_file=$BERT_BASE_DIR/vocab.txt \
		--bert_config_file=$BERT_BASE_DIR/bert_config.json \
		--init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
		--max_seq_length=128 \
		--train_batch_size=32 \
		--learning_rate=2e-5 \
		--num_train_epochs=3.0 \
		--output_dir=./output/server_result_dir \
		--do_train=True \
		--do_predict=True \
		--do_export=True \
		--export_dir=./server_exported