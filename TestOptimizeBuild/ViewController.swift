//
//  ViewController.swift
//  TestOptimizeBuild
//
//  Created by Ilya Biltuev on 27.04.2023.
//

import UIKit
import Kingfisher
import Starscream
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Kingfisher
        let imageView = UIImageView(frame: .init(origin: .zero, size: CGSize(width: 200, height: 200)))
        let url = URL(string: "https://example.com/image.png")
        imageView.kf.setImage(with: url)

        // Starscream
        var request = URLRequest(url: URL(string: "http://localhost:8080")!)
        request.timeoutInterval = 5
        let socket = WebSocket(request: request)
        socket.connect()
    }

    // TODO:

    /*
     The iOS builds on King 2 are taking about 50 mins to complete. This is very long. We need to optimize the build to be faster.


     At this moment we are using 50+ dependencies via SPM. All of them are source-code-based. Every fresh project build triggers all those dependencies compilation. It is very time-consuming.

     It would be nice trying as a spike to do the following:

     Create an empty project similar to OneApp regarding SPM and dependency list. For full POC is nice to have  50+ popular iOS dependencies, but as a starter we could use public dependencies from OneApp.

     abseil
     AnyCodable
     BoringSSL-GRPC
     BSImagePicker
     CryptoSwift
     Firebase
     FittedSheets
     GiphyUISDK
     GoogleAppMeasurement
     GoogleDataTransport
     GoogleUtilities
     gRPC
     GTMSessionFetcher
     Kingfisher
     leveldb
     libwebp
     Lottie
     MarqueeLabel
     nanopb
     Promises
     PryntTrimmerView
     Reachability

     (other dependencies could be found in awesome-lists-like https://github.com/vsouza/awesome-ios)

     Consider we have a Project with SPM and massive list of dependencies.

     The task is to investigate how painful it will be to change source-code-dependency to binary dependency.

     For that, it also would be nice to fork all those libraries to your own GitHub account and manage binary framework by your own

     link:
     https://www.avanderlee.com/swift/binary-targets-swift-package-manager/
     */



}

