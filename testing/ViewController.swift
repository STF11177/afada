//
//  ViewController.swift
//  testing
//
//  Created by user on 2018/3/5.
//  Copyright © 2018年 newworld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let a = greet(person: "world")
        print(a)
        let b = sayHelloWorld()
        print(b)
        
        let c = greet(person: "tim", alreadyGreeted:true)
        print(c)
        
        let names = ["chirs","ewex","ewa","barry","daniella"]
        
        var reversedNamed = names.sorted(by:backward)
        print(reversedNamed)
        
        reversedNamed = names.sorted(by:{(s1:String,s2:String) ->Bool in return
            s1 > s2
        })
        print(reversedNamed)
    }
    
    func greet(person:String) -> String {
        
        let greeting = "hello" + person + "!"
        return greeting
    }
    
    func greetAgin(person:String) -> String {
        
        return "hello again," + person + "!"
    }
    
    func sayHelloWorld() -> String {
        
        return "hello, world"
    }
    
    func greet(person:String, alreadyGreeted:Bool) -> String {
        
        if alreadyGreeted {

            return greet(person:person )
        }else{
            
            return greetAgin(person: person)
        }
    }
    
    func backward(_ s1:String,_ s2: String) -> Bool {
        
        return s1 > s2
    }
}

class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}

