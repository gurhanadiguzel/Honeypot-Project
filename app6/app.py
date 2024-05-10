import requests

from flask import Flask


app = Flask(__name__)


@app.route("/")
def main():
    return "Container 6 \n"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8006, debug=True)
