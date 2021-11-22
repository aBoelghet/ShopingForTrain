//
//  ViewController.swift
//  ShopingForTrainApp
//
//  Created by aBoelghet  on 21/11/2021.
//

import UIKit
import ImageSlideshow

class HomeViewController: UIViewController {

    @IBOutlet weak var imageSliderView: ImageSlideshow!
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    
    let categoriesImgArr:[UIImage] = [UIImage(imageLiteralResourceName: "1"),UIImage(imageLiteralResourceName: "2"),UIImage(imageLiteralResourceName: "3"),UIImage(imageLiteralResourceName: "4")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        imageSliderView.setImageInputs([
//            ImageSource(image: UIImage(imageLiteralResourceName: "HomeBackgroundImg")),
//            ImageSource(image: UIImage(imageLiteralResourceName: "Bgimg2"))
//        ])
    
        self.homeCollectionView.register(UINib(nibName: "HomeCVCell", bundle: nil), forCellWithReuseIdentifier: "HomeCVCell")
    }
}

extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoriesImgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: HomeCVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCVCell", for: indexPath) as! HomeCVCell
        cell.imageView.image = categoriesImgArr[indexPath.row]
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = self.view.frame.width
           return CGSize(width: (screenWidth/2) , height: 186)
       }
    
}
