# app.py

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "This is a sample python flask app, running on gunicorn"

if __name__ == "__main__":
    app.run(host='0.0.0.0')