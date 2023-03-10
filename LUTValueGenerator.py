fileName = "LUTValues.txt"
numberOfBits = 8  
LUTSize = 2 ** numberOfBits  # 256 = 2 ^ 8

func = lambda x: x**2 - x**3


def binaryToFractional(binaryStr):
    return int(binaryStr, 2) / 2 ** len(binaryStr)


def fractionalTobinary(number, size):
    fractionalPart = number - int(number)
    result = ""
    
    for i in range(size):
        fractionalPart *= 2
        
        if (int(fractionalPart) == 1):
            fractionalPart -= 1
            result += "1"
        else:
            result += "0"
    
    return result


if __name__ == "__main__":
    dataFile = open(fileName, 'w')

    for i in range(LUTSize):
        xBinaryStr = format(i, "08b")
        x = binaryToFractional(xBinaryStr)
        yBinaryStr = fractionalTobinary(func(x), numberOfBits)
        dataFile.write(yBinaryStr + "\n")

    dataFile.close()    
