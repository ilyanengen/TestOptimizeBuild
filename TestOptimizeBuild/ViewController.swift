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
}

