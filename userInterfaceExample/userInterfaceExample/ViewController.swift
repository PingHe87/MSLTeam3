//
//  ViewController.swift
//  userInterfaceExample
//
//  Created by p h on 9/12/24.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    
    lazy var imageModel = {
        return ImageModel.sharedInstance()
    }()
    
    lazy private var imageView: UIImageView? = {
        return UIImageView.init(image: self.imageModel.getImageWithName(displayImageName))
    }()
    @IBOutlet weak var scrollView: UIScrollView!
    
    var displayImageName = "frog"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // self.imageView.image = UIImage.init(named: "dog")
        
        if let size = self.imageView?.image?.size{
            self.scrollView.addSubview(self.imageView!)
            self.scrollView.contentSize = size
            self.scrollView.minimumZoomScale = 0.1
            self.scrollView.delegate = self
        }
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
}
