from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    print("hello from server2")
    return 'This is the HTML for /\n'

@app.route("/2")
def index():
    print("hello from server2")
    return 'This is the HTML for /2\n'

app.run(host='0.0.0.0', debug=True)
