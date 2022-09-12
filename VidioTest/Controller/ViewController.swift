//
//  ViewController.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var vm: VideoViewModel!
    var disposeBag = DisposeBag()
    private var dataSource: VideoDataSource?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.register(UINib(nibName: VideoCellCollectionViewCell.cellId, bundle: nil), forCellWithReuseIdentifier: VideoCellCollectionViewCell.cellId)
        vm = VideoInjection.shared.container.resolve(VideoViewModel.self)!
        dataSource = VideoDataSource(collectionView: collectionView, vm: vm)
        collectionView.dataSource = dataSource
        collectionView.delegate = dataSource
        
        title = "Video"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        vm.getListVidio.drive(onNext: {
            [weak self] listVideo in
            self?.collectionView.reloadData()
        }).disposed(by: disposeBag)
    }
}
