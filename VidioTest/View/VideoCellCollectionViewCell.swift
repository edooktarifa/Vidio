//
//  VideoCellCollectionViewCell.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import UIKit
import Kingfisher

class VideoCellCollectionViewCell: UICollectionViewCell {

    static let cellId = "VideoCellCollectionViewCell"
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var videoImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setContent(title: VideoModel, detailItems: VideoItems){
        if title.id == 1 {
            titleLbl.text = "\(detailItems.title ?? "") \nportrait"
        } else {
            titleLbl.text = "\(detailItems.title ?? "") \nlandscape"
        }
        
        videoImg.kf.setImage(with: URL(string: detailItems.image_url ?? ""), placeholder: UIImage(named: "empty"))
    }

}
