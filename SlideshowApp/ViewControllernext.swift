//
//  ViewControllernext.swift
//  SlideshowApp
//
//  Created by 高橋怜杏 on 2020/03/04.
//  Copyright © 2020 saifa.libra. All rights reserved.
//

import UIKit

class ViewControllernext: UIViewController {
    
    var nowpicture: UIImage!
    
    
    
    @IBOutlet weak var pictureBig: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pictureBig.image = nowpicture
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
