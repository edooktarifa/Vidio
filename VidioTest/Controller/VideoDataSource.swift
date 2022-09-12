//
//  VideoDataSource.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import Foundation
import UIKit

class VideoDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    weak var collectionView: UICollectionView?
    weak var vm: VideoViewModel?
    
    init(collectionView: UICollectionView, vm: VideoViewModel){
        self.collectionView = collectionView
        self.vm = vm
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return vm?.listVideo.value?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vm?.listVideo.value?[section].items?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VideoCellCollectionViewCell.cellId, for: indexPath) as? VideoCellCollectionViewCell else { return UICollectionViewCell() }
        
        if let section = vm?.listVideo.value?[indexPath.section], let details = section.items?[indexPath.row] {
            cell.setContent(title: section, detailItems: details)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2 - 10, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
}
