//
//  TitleCollectionViewCell.swift
//  clone-netflix
//
//  Created by Marcelo Amaral Alves on 2023-12-21.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitleCollectionViewCell"
    
    private let posterImageView: UIImageView = {
       
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String) {
        
        guard let url = URL(string: "https://api.themoviedb.org/3/collection/collection_id/images\(model)") else {
            return
        }
    
        posterImageView.sd_setImage(with: url, completed: nil)
    }
}
