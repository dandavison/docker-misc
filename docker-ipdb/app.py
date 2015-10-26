from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    print("hello")
    import ipdb ; ipdb.set_trace()
    print("bye")

app.run(host='0.0.0.0', debug=True)
