//
//  VideoInjection.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import Foundation
import UIKit
import Swinject

class VideoInjection {
    static let shared = VideoInjection()
    
    let container = Container() {
        container in
        
        container.register(Network.self) { _ in
            Network<[VideoModel]>.init()
        }
        
        container.register(VideoRepo.self) { resolver in
            VideoImpI(apiServices: resolver.resolve(Network<[VideoModel]>.self)!)
        }
        
        container.register(VideoUseCase.self) { resolver in
            VideoUseCase(videoRepo: resolver.resolve(VideoRepo.self)!)
        }
        
        container.register(VideoViewModel.self) { resolver in
            VideoViewModel(videoUseCase: resolver.resolve(VideoUseCase.self)!)
        }
    }
}
