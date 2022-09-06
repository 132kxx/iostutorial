//
//  ComposeDelegate.swift
//  HelloWorld
//
//  Created by kxx: on 2022/09/07.
//

import UIKit

protocol ComposeDelegate {
    func composer(_ vc: UIViewController, didInput value: String?)
    func composerDidcancel(_ vc: UIViewController)
}


