//
//  ViewModel.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import Foundation
import UIKit
import Alamofire
import RxSwift
import RxCocoa

class VideoViewModel {
    
    var videoUseCase: VideoUseCase
    let disposeBag = DisposeBag()
    
    var listVideo = BehaviorRelay<[VideoModel]?>(value: [])
    
    var getListVidio: Driver<[VideoModel]?> {
        return listVideo.asDriver()
    }
    
    init(videoUseCase: VideoUseCase){
        self.videoUseCase = videoUseCase
        fetchApi()
    }
    
    func fetchApi(){
        videoUseCase.getVideoList().observeOn(MainScheduler.instance).subscribe(onNext: {
            [weak self] vidioList in
            
            self?.listVideo.accept(vidioList)
            
        }, onError: {
            error in
            
        }).disposed(by: disposeBag)
    }
    
    
}
