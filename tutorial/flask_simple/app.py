from flask import Flask
app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello World!"

if __name__ == "__main__":
    # bind to 0.0.0.0 because we don't know which IP teh container will have
    # debug=True, so we can live edit the code \o/
    app.run(port=5000, host="0.0.0.0", debug=True)
