import UIKit
var str = "helileh"
var strr = str.uppercased()
var arr : [Character] = []

    func isSpecial (_ word: String) -> Bool {
        // code here
        // slove 1
//        if strr.isEmpty == true{
//            return false
//        }
//        while strr.count >= 2 {
//            if strr.first == strr.last{
//                let str1 = strr.dropFirst()
//                let str2 = str1.dropLast()
//                strr = String(str2)
//            }else{
//                return false
//            }
//
//        }
//        return true
        
        //slove 2
        for char in strr {
            arr.append(char)
        }
        while arr.count >= 2 {
            if arr[0] == arr[arr.count - 1]{
                arr.remove(at: 0)
                arr.remove(at: arr.count - 1)
            }else{
                return false
            }
        }
        return true
    }



    if isSpecial(str) {
        print("\(str)  is special")
    }else {
    print("not special")
    }
