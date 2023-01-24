func = lambda x: x**2 - x**3

def binaryToFractional(binaryStr):
    return int(binaryStr, 2) / 2 ** len(binaryStr)


if __name__ == "__main__":
    xBinary = input("x (binary): ")
    yBinary = input("y (binary): ")

    x = binaryToFractional(xBinary)
    y = binaryToFractional(yBinary)
    yReal = func(x)

    print("x: ", x)
    print("y: ", y)
    print("f(x): ", yReal)

    print("Accuracy: ", (y / yReal) * 100)