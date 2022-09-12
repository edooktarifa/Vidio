//
//  VideoUseCase.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import Foundation
import RxSwift

class VideoUseCase {
    let videoRepo: VideoRepo
    
    init (videoRepo: VideoRepo){
        self.videoRepo = videoRepo
    }
    
    func getVideoList() -> Observable<[VideoModel]> {
        videoRepo.getVideoList()
    }
}
