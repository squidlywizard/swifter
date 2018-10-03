//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
class SampleClass
{
    

let fug : String = "fug"
let fugg : String = "ebin"
let fuggg : String = "XD"
var count : Int = 0

@objc
 func pickString () -> String{
    change()
    if (count == 0)
    {
        print(fug)
        return fug
    } else if(count == 1)
    {
        print (fugg)
        return fugg
    }
    else {
        print (fuggg)
        return fuggg
    }
}
public func change () -> Void
{
    count = Int(arc4random() % 3)
}
}
let sampleButton : UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 300, height: 50))

let guess = SampleClass()
let currentView = UIView(frame: CGRect(x: 0, y: 0, width: 800, height: 800))
sampleButton.setTitle("click here", for: .normal)
sampleButton.backgroundColor = .magenta
sampleButton.addTarget(guess, action: #selector(guess.pickString), for: .touchUpInside)
//no parensth wo talk to dinosuar languages
currentView.backgroundColor = .green
currentView.addSubview(sampleButton)

PlaygroundPage.current.liveView = currentView
PlaygroundPage.current.needsIndefiniteExecution = true
sampleButton.setTitle(guess.pickString(), for: .normal)
guess.pickString()
