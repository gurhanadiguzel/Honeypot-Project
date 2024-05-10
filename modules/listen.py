import time
import requests
import sys
import random


def sendRequestForRefresh():
    while 1:
        if len(sys.argv) >= 1:
            address = "http://localhost:" + sys.argv[1]
            response = requests.get(address).content.decode("utf-8")
            print(response)

        else:
            print("No command-line arguments provided.")
        time.sleep(2)


# Start the task initially
sendRequestForRefresh()
