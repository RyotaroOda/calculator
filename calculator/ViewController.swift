//
//  ViewController.swift
//  calculator
//
//  Created by 小田　竜太郎 on 2015/03/23.
//  Copyright (c) 2015年 小田　竜太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var Label:UILabel!
    
    var number:Float = 0
    var number2:Float = 0
    var operation:Float = 0
    var count:Float = 0
    var pointF = false
    //var pointA = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func select1(){
        if(pointF){
            count++
            number=number+1/pow(10.0,count)
        }else{
        number=number*10+1
        }/*
        if(pointA){
            count++
            number=number+1/pow(10.0,count)
        }*/
        var str=NSString(format: "%g",number)
        //if(pointA){
            //Label.text = "-\(str)"
        //}else{
            Label.text = "\(str)"
        //}
    }
    @IBAction func select2(){
        if(pointF){
            count++
            number=number+2/pow(10.0,count)
        }else{
        number=number*10+2
        }
        /*if(pointA){
            count++
            number=number-2/pow(10.0,count)
    }*/

        var str=NSString(format: "%g",number)
        //if(pointA){
            //Label.text = "-\(str)"
        //}else{
        Label.text = "\(str)"
       // }
    }
    @IBAction func select3(){
        if(pointF){
            count++
            number=number+3/pow(10.0,count)
        }else{
        number=number*10+3
        }
        /*if(pointA){
            count++
            number=number+3/pow(10.0,count)
        }*/
        var str=NSString(format: "%g",number)
       // if(pointA){
              //Label.text = "-\(str)"
       // }else{
        Label.text = "\(str)"
        //}
    }
    @IBAction func select4(){
        if(pointF){
            count++
            number=number+4/pow(10.0,count)
        }else{
        number=number*10+4
        }
        /*if(pointA){
            count++
            number=number-4/pow(10.0,count)
        }*/
        var str=NSString(format: "%g",number)
        //if(pointA){
           // Label.text = "-\(str)"
        //}else{
        Label.text = "\(str)"
        //}
    }
    @IBAction func select5(){
        if(pointF){
            count++
            number=number+5/pow(10.0,count)
        }else{
        number=number*10+5
        }
        /*if(pointA){
            count++
            number=number-5/pow(10.0,count)
        }*/
        var str=NSString(format: "%g",number)
        //if(pointA){
           // Label.text = "-\(str)"
        //}else{
        Label.text = "\(str)"
        //}
    }
    @IBAction func select6(){
        if(pointF){
            count++
            number=number+6/pow(10.0,count)
        }else{
        number=number*10+6
        }/*
        if(pointA){
            count++
            number=number-6/pow(10.0,count)
        }*/
        var str=NSString(format: "%g",number)
        //if(pointA){
           // Label.text = "-\(str)"
        //}else{
        Label.text = "\(str)"
       //}
    }
    @IBAction func select7(){
        if(pointF){
            count++
            number=number+7/pow(10.0,count)
        }else{
        number=number*10+7
        }
        /*if(pointA){
            count++
            number=number-7/pow(10.0,count)
        }*/
        var str=NSString(format: "%g",number)
        //if(pointA){
            //Label.text = "-\(str)"
        //}else{
        Label.text = "\(str)"
        //}
    }
    @IBAction func select8(){
        if(pointF){
            count++
            number=number+8/pow(10.0,count)
        }else{
        number=number*10+8
        }
        /*if(pointA){
            count++
            number=number-8/pow(10.0,count)
        }*/
        var str=NSString(format: "%g",number)
        //if(pointA){
           // Label.text = "-\(str)"
        //}else{
        Label.text = "\(str)"
        //}
    }
    @IBAction func select9(){
        if(pointF){
            count++
            number=number+9/pow(10.0,count)
        }else{
        number=number*10+9
        }
        /*if(pointA){
            count++
            number=number-9/pow(10.0,count)
        }*/
        var str=NSString(format: "%g",number)
        //if(pointA){
           // Label.text = "-\(str)"
        //}else{
        Label.text = "\(str)"
        //}
    }
    @IBAction func select0(){
        if(pointF){
            count++
            number=number+0/pow(10.0,count)
        }else{
        number=number*10
        var str=NSString(format: "%g",number)
        Label.text = "\(str)"
        }
    }
    @IBAction func point(){
        pointF=true
        var str=NSString(format: "%g",number)
        Label.text = "\(str)."
    }
    @IBAction func plus(){
        //plusボタンを押したとき、lavelには０が表示される
        
        operation = 0
        //if(pointA){
           // number2 = -number
        //}else{
        number2 = number
        //}
    
        //pointA=false
        number = 0
        pointF=false
        count=0
        Label.text = "\(0)"
    }
    
    @IBAction func minus(){
        
        operation = 1
        //if(pointA){
           // number2 = -number
        //}else{
        number2 = number
        //}
        number = 0
        pointF=false
        //pointA=false
        count=0
        Label.text = "\(0)"

    }
    @IBAction func times(){
       
        
        operation = 2
        //if(pointA){
            //number2 = -number
       // }else{
        number2 = number
       // }
        number = 0
        pointF=false
       // pointA=false
        count=0
        Label.text = "\(0)"
    }
    @IBAction func devided(){
        operation = 3
        //if(pointA){
            //number2 = -number
        //}else{
        number2 = number
        //}
        number = 0
        count=0
        pointF=false
        //pointA=false
        Label.text = "\(0)"
        

    }
    @IBAction func eqal(){
        switch (operation){
        
        case 0 :
            var number3 = number2 + number
            var str=NSString(format: "%g",number3)
            Label.text = "\(str)"
            number = number3
        
        case 1 :
            var number3 = number2 - number
            var str=NSString(format: "%g",number3)
            Label.text = "\(str)"
            number = number3
            
        case 2 :
            var number3 = number2 * number
            var str=NSString(format: "%g",number3)
            Label.text = "\(str)"
            number = number3
        
        case 3 :
            var number3 = number2 / number
            var str=NSString(format: "%g",number3)
            Label.text = "\(str)"
            number = number3
            
        default :
            break
            
        }
    }
    @IBAction func select＋ー(){
        //pointA=true
        number=number-number-number
        var str=NSString(format: "%g",number)
        Label.text = "\(str)"
        }
    @IBAction func slectepercent(){
        number=number/100
        var str=NSString(format: "%g",number)
        Label.text = "\(str)"
    }
    @IBAction func root(){
        number = sqrt(number)
        var str=NSString(format: "%g",number)
        Label.text = "\(str)"
    }

    @IBAction func clear(){
       // pointA=false
        pointF=false
        count=0
        number = 0
        var str=NSString(format: "%g",number)
        Label.text = "\(str)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

