from fastapi import FastAPI
import joblib
import pandas as pd 

app=FastAPI()  # here FastApi is class and app is object,,,object is other than variable it stores class,array in it.FastAPI
model=joblib.load('mymodel.pkl')

@app.get('/')
def testing():
    return {'test' :'all ok'}

@app.post('/prediction')
def myprediction(hours:float):
    newdata=pd.DataFrame({
        'StudyHours':[hours]
    })
    mynewdara=model.predict(newdata)
    return {
        'prediction':float(mynewdara[0])
    }
