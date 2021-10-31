import Foundation

func solutionRectangle(_ w:Int, _ h:Int) -> Int64{
    var euclideanCount: Int = 0
    
    euclideanCount = GCD(a: w, b: h)
    
    return (Int64(w) * Int64(h)) - Int64(w + h - euclideanCount)
}


// 유클리드로 최대 공약수 구하기
func GCD(a: Int, b: Int) -> Int {
    if b == 0 {
        return a
    }
    
    return GCD(a: b, b: a % b)
}
