import Foundation

class Solution {
    func fib(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        return fib(n - 1) + fib(n - 2)
    }
}
