//
//  GTTabBarViewController.swift
//  iosapp
//
//  Created by lee on 2017. 9. 17..
//  Copyright © 2017년 lee. All rights reserved.
//

import UIKit

class GTTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ddd()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    func ddd() {
        /*let recentsItem = self.tabBar.items![0] as UITabBarItem
        let recentsItemImage = UIImage(named:"pic2")!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let recentsItemImageSelected = UIImage(named: "pic2.jpeg")!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        recentsItem.image = recentsItemImage
            
            //imageWithImage(image:recentsItemImage, scaledToSize:CGSize(width:self.tabBar.frame.size.width/3 , height: self.tabBar.frame.size.height))
//        recentsItem.selectedImage = recentsItemImageSelected
        recentsItem.title = "apple"
//        recentsItem.imageInsets = UIEdgeInsetsMake(50, 50, 50, 50);
        */
        self.viewControllers?[0].tabBarItem = UITabBarItem(title: "apple", image: UIImage(named: "pic1"), selectedImage: UIImage(named: "pic2"))

        
    }
    
    func imageWithImage(image:UIImage, scaledToSize:CGSize) -> UIImage{
        UIGraphicsBeginImageContextWithOptions(scaledToSize, false, 0.0);
        image.draw(in: CGRect(origin: CGPoint.zero, size: CGSize(width: scaledToSize.width, height: scaledToSize.height)))
        let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return newImage
    }
}
