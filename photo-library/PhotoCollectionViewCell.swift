//
//  PhotoCollectionViewCell.swift
//  photo-library
//
//  Created by shimada shun on 2022/09/04.
//

import UIKit
import Foundation

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var image : String! {
        didSet {
            showImage(imageView: imageView, url_str: image)
        }
    }
    
    private func showImage(imageView: UIImageView, url_str: String) {
        let url = URL(string: url_str)
        do {
            let data = try Data(contentsOf: url!)
            let image = UIImage(data: data)
            imageView.image = image
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
}
