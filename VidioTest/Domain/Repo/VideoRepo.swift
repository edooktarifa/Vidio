//
//  VideoRepo.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import Foundation
import RxSwift

protocol VideoRepo {
    func getVideoList() -> Observable<[VideoModel]>
}
