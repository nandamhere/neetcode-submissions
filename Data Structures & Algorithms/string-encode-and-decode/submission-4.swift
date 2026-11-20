class Solution {

    func encode(_ strs: [String]) -> String {

        var res: String = ""
        for str in strs {
            res += "\(str)❤️"
        }

        return res

    }

    func decode(_ str: String) -> [String] {

        let charArray = Array(str)

        var res = [String]()

        var element = ""

        for char in charArray {

            if char == "❤️" {
                res.append(element)
                element = ""
            } else {
                element += String(char)
            }
            
        }

        return res
    }
}
