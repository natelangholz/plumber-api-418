#load json library
library(jsonlite)


#####################

#* Health check - Returns the API status and the current server time
#* @get /health_check
function() {
    list(
	status = "the API is running :) ",
	time = Sys.time()
    )
}


####################
# load the model
model <- readRDS("model_2.RDS")

get_predict_length <- function(json_input){
    
   vars <- fromJSON(json_input)
  
  # convert the input to a number
  petal_width <- as.numeric(vars$petal_width)
  
  # convert the input to a number
  sepal_length <- as.numeric(vars$sepal_length)
  
  #create the prediction data frame
  prediction_data <- data.frame(cbind(Petal.Width=petal_width,Sepal.Length = sepal_length))
  #print(prediction_data)
  #create the prediction
  predictions <- predict(model,prediction_data)
  list(predicted_petal_length = predictions)
}


#* @post /predict_petal_length
function(req) {
    #print(req$postBody)
    get_predict_length(req$postBody)
}
