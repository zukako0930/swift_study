////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//print(1+1)
//// 変数の宣言はvar
//var x = 4
//print(x*x)
////定数の宣言はlet
//let tax = 1.08
////tax = 1 //書き換えようとするとエラー
//// for文の書き方が少し特殊 python風
//// for文内で宣言した変数のスコープはfor文内だけ
//for n in 1...10{
////    var num1 = 1
////    var num2 = 2
//    print(n)
////    print(num2)
//}
////いくらvarとはいえ型をまたいで代入することはできない
//var int_num = 0
////int_num = 10.0 //doubleで代入しようとするとエラー
//var double_num = 0.0
//double_num = 1 //doubleにintは代入できる。
//
////if文
//if x > 10{
//    print("充電が10%以下になっています。") //文字列は""で囲みシングルはダメ。
//}else if x > 3{
//    print("充電は10%から4％の間")//
//}else{
//    print("充電切れそう")
//}

//辞書型
var dict = ["バイク":2,"船":0,"車":4]
print(dict)
dict["船"]=nil
print(dict)

func print_num(a:Double){
    print(a*2)
}
var x = 5.0
print_num(a:x) //今度はxがdoubleじゃないとエラー

func square(withBase base:Int, height height:Int)->Int{
   return base * height
}
var area = square(withBase: 3, height: 3)
print(area)
