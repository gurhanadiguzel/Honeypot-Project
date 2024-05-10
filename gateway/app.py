import requests

from flask import Flask


app = Flask(__name__)


@app.route("/")
def main():
    nextPort = requests.get("http://localhost:10000?currentContainer=0").content.decode(
        "utf-8"
    )
    address = "http://localhost:" + nextPort
    response = requests.get(address).content.decode("utf-8")
    return response


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080, debug=True)
