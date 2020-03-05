//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 高橋怜杏 on 2020/03/03.
//  Copyright © 2020 saifa.libra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var number = 0
    let img: [UIImage] = [UIImage(named: "pet1")!,
                               UIImage(named: "pet2")!,
                               UIImage(named: "pet3")!]
      
    func showpicture(){
    picture.image = img[number]
    }
    
   
   
    @IBOutlet weak var picture: UIImageView!
    @IBAction func next(_ sender: Any) {
        
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
        }
        
        nextrule()
        
    }
    
    var timer :Timer!
    
    
    @IBAction func start_stop(_ sender: Any) {
        
        if self.timer  == nil {
        self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(startOrstop(_:)), userInfo: nil, repeats: true)
        }
        else {
                   self.timer.invalidate()
                   self.timer = nil
               }
    }
    
    @objc func startOrstop(_ timer: Timer){
            nextrule()
    }
    
    @IBAction func back(_ sender: Any) {
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
        }
        
        if img[number] == img.first {
                   number = 2
               }
               else {
               number -= 1
               }
               showpicture()
       
    }
    
    @IBAction func backpage(_ segue: UIStoryboardSegue){
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showpicture()
        
   
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
               if self.timer != nil {
                   self.timer.invalidate()
                   self.timer = nil
               }
           
        let viewcontrollernext:ViewControllernext = segue.destination as! ViewControllernext
        
        viewcontrollernext.nowpicture = img[number]
       
           
    }
    
    func nextrule(){
        if img[number] == img.last {
                   number = 0
               }
               else {
               number += 1
               }
               showpicture()
    }
    
}
