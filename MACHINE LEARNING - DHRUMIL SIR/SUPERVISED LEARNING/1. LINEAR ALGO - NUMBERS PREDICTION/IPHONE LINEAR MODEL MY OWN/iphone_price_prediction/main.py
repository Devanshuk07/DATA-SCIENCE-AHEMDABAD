from fastapi import FastAPI
from fastapi.responses import FileResponse
import joblib
import mysql.connector
db=mysql.connector.connect(                      # mysql.connector.connect = connection between Python and MySQL
    host='devanshu-mysql-devukk7-1717.b.aivencloud.com',
    port='25459',
    user='avnadmin',
    password='AVNS_vWpPOxN-IVWYHZPIj08',
    database='defaultdb'
)
cursor=db.cursor()                 # cursor =the thing we use to execute SQL commands like inser/update /delete.
cursor.execute('''
CREATE TABLE IF NOT EXISTS predictions(
id int AUTO_INCREMENT PRIMARY KEY,
model_no INT,
variant varchar(50),
year int,
prediction float)
'''
)
#cursor.execute('select * from predictions')
#data=cursor.fetchall()
#print(data)                      this is just to check wheather mysql take and store data or not and this result will be seen in cmd when you again start serverapi.


app = FastAPI()                 # initialization of fast api class.app is object. to access the FastAPI class method like get post put we have to first initialize the FastAPI

# Load trained model
model = joblib.load("iphone_model.pkl")


# Show website
@app.get("/")      #@ is for annotation means a set of rules.app=FastAPI so app we are saying python to work like another way for api.'/' means in url till / we have home and after /predict is when user enter everything model,variant after that when it click predict then /predict is gone to server.
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

    cursor.execute(
    "insert into predictions (model_no,variant,year,prediction) values(%s,%s,%s,%s)",
    (model_no,variant,year,float(prediction[0]))
)
    db.commit()           # this tell mysql to permanently save this inserted row.

    return {
        "price": float(prediction[0])
    }
@app.get('/history')
def history():
    cursor.execute('select * from predictions')
    data=cursor.fetchall()
    return data