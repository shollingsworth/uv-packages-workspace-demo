"""Package b."""

from package_a import hello as hello_a


def hello():
    hello_a()
    print("Hello from package-b!")
