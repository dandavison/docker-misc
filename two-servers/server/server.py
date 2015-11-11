from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    print("hello")
    return 'This is the HTML for /'

app.run(host='0.0.0.0', debug=True)
