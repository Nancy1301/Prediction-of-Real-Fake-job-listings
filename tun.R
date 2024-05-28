flags= flags(
  flag_numeric("learning_rate", 0.001),
  flag_numeric("nodes", 32),
  flag_numeric("batch_size", 16), 
  flag_string("activation", "sigmoid")
)
library(keras)
model = keras_model_sequential() %>% 
  #hidden layer
  layer_dense(units=flags$nodes, activation=flags$activation, input_shape =dim(train_data_df[,-3331])[2]) %>%
  layer_dropout(rate = 0.2) %>%
  layer_dense(units=flags$nodes, activation=flags$activation) %>%
  layer_dropout(rate = 0.2) %>%
  #output layer
  layer_dense(units=1 , activation="sigmoid")

callbacks= list(callback_early_stopping(monitor="val_loss",patience=10, restore_best_weights = TRUE))
opt= optimizer_adam(learning_rate= flags$learning_rate)
model %>% compile(loss="binary_crossentropy", optimizer=opt , metrics = c('accuracy'))

model %>% fit (x = as.matrix(train_data_df[,-3331]), y = as.matrix(train_data_df$fraudulent), batch_size=flags$batch_size, epochs=200, 
               validation_data = list(as.matrix(val_data_df[,-3331]), as.matrix(val_data_df$fraudulent)), callbacks=callbacks)