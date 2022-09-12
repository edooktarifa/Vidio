//
//  VideoImpI.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import Foundation
import RxSwift
import RxCocoa
import Alamofire

final class VideoImpI: VideoRepo {
    
    var apiServices: Network<[VideoModel]>
    
    init(apiServices: Network<[VideoModel]>){
        self.apiServices = apiServices
    }
    
    
    func getVideoList() -> Observable<[VideoModel]> {
        apiServices.request(url: "77141151-42f0-444a-9e8d-3080efdb27d1", method: .get, parameters: [:], encoding: URLEncoding.default, headers: [:])
    }
}
