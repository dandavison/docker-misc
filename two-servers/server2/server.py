from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    print("hello from server2")
    return 'server2: /\n'

@app.route("/two/")
def two():
    return 'server2: /2/\n'

app.run(host='0.0.0.0', debug=True)
