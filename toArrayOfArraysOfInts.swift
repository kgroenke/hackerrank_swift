public func getLine() -> [[Int]] {
    var input = String()
    var c = getchar()
    // 10 is ascii code for newline
    while c != EOF {
        input.append(UnicodeScalar(UInt32(c)))
        c = getchar()
    }
    let array = input.componentsSeparatedByString("\n")
    var newArray = [[Int]]()
    for idx in array {
        let temp = idx.componentsSeparatedByString(" ")
        var intTemp = [Int]()
        for idx in temp {
            intTemp.append(Int(idx)!)
        }
        newArray.append(intTemp)

    }
    return newArray
}
