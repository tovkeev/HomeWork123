import UIKit

var str = "Hello, playground"

var s = clear(s:"asd#")
var t = clear(s:"asd#")

func clear(s:String) -> String{
    var result:String = ""
    let n: Int = s.count
    var count: Int = 0
        for i in (0..<n).reversed() {
            let entry = s[s.index(s.startIndex, offsetBy: i)]
            if(entry == "#") {
                count += 1
            }
            else {
                if(count > 0) {
                count -= 1
            }
            else {
                result.append(entry)
            }
        }
    }
    return result
}

print("S is -> "+s)
print("T is -> "+t)

if(s == t){
    print(true)
}else{
    print(false)
}
