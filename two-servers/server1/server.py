from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    print("hello from server1")
    return 'server1: /\n'

@app.route("/one/")
def one():
    return 'server1: /1/\n'

app.run(host='0.0.0.0', debug=True)
