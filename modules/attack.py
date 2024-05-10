import time
import requests
import sys
import random


def attack():
    while 1:
        containerIndex = random.randint(0, 5)
        if len(sys.argv) >= 1:
            address = (
                "http://localhost:"
                + sys.argv[1]
                + "/attack?container="
                + str(containerIndex)
            )
            requests.get(address).content.decode("utf-8")
            print("Attacked: " + str(containerIndex + 1))
        else:
            print("No command-line arguments provided.")
        time.sleep(5)


attack()
