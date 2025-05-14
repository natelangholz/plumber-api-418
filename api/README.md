# Petal Length API

Test health with `curl -X GET "http://localhost:8080/health_check"`

Test locally with `curl -X POST -d '{"petal_width":"5","sepal_length":"5"}' "http://localhost:8080/predict_petal_length"`

Test status of API with  `curl -X GET "https://plumber-app-*******.us-central1.run.app/predict_petal_length"`

Call API with `curl -X POST -d '{"petal_width":"5","sepal_length":"5"}' "https://plumber-app-*******.us-central1.run.app/predict_petal_length"`
