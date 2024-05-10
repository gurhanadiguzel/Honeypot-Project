import requests

from flask import Flask


app = Flask(__name__)


@app.route("/")
def main():
    nextPort = requests.get("http://localhost:10000?currentContainer=5").content.decode(
        "utf-8"
    )
    address = "http://localhost:" + nextPort
    response = requests.get(address).content.decode("utf-8")
    return "Container 5 \n" + response


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8005, debug=True)
