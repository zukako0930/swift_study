//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
var slider = UISlider()
//slider.value=0.8
slider.setValue(0.8, animated: true)

//クラスの作成
class Taiyaki{
    var nakami = "あんこ"
    func sayNakami(){
        print("中身は"+nakami+"です")
    }
}
var taiyaki = Taiyaki()
taiyaki.sayNakami()
taiyaki.nakami = "うんこ"
taiyaki.sayNakami()
