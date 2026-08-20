from fastapi import FastAPI
from fastapi.responses import FileResponse
import joblib

app = FastAPI()

# Load trained model
model = joblib.load("iphone_model.pkl")


# Show website
@app.get("/")
def home():
    return FileResponse("index.html")


# Predict price
@app.get("/predict")
def predict(model_no: int, variant: str, year: int):

    basic = 0
    basic_plus = 0
    plus = 0
    pro = 0
    pro_max = 0

    variant = variant.lower().strip()

    if variant == "basic":
        basic = 1

    elif variant == "basic_plus":
        basic_plus = 1

    elif variant == "plus":
        plus = 1

    elif variant == "pro":
        pro = 1

    elif variant == "pro_max":
        pro_max = 1

    input_data = [[
        model_no,
        basic,
        basic_plus,
        plus,
        pro,
        pro_max,
        year
    ]]

    prediction = model.predict(input_data)

    return {
        "price": float(prediction[0])
    }