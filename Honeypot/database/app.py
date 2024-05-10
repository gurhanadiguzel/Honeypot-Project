import requests

from flask import Flask, request


app = Flask(__name__)

attackList = [False, False, False, False, False, False]


@app.route("/")
def getNextPort():
    currentContainer = int(request.args.get("currentContainer"))
    if attackList[currentContainer]:
        return str(9001 + currentContainer)
    else:
        return str(8001 + currentContainer)


@app.route("/attack")
def attack():
    container = int(request.args.get("container"))
    attackList[container] = not attackList[container]

    return "Success"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=10000, debug=True)
