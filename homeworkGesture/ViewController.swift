//
//  ViewController.swift
//  homeworkGesture
//
//  Created by 今川博司 on 2018/01/22.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImageView.image = UIImage(named: "default.png")
    }
    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}

    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        alertmsg(msg: "右より目")
        imgchg(filename: "swipeRight")
    }
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        alertmsg(msg: "左より目")
        imgchg(filename: "swipeLeft")
    }
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        alertmsg(msg: "上より目")
        imgchg(filename: "swipeUp")
    }
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        alertmsg(msg: "下より目")
        imgchg(filename: "swipeDown")
    }
    @IBAction func rotation(_ sender: UIRotationGestureRecognizer) {
        alertmsg(msg: "まわり目")
        imgchg(filename: "rotation")
    }
    @IBAction func pinch(_ sender: UIPinchGestureRecognizer) {
        alertmsg(msg: "ひき目")
        imgchg(filename: "pinch")
    }
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer) {
        alertmsg(msg: "中より目")
        imgchg(filename: "longpress")
    }
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        alertmsg(msg: "痛い目")
        imgchg(filename: "tap")
    }
    
    func alertmsg(msg:String) {
        let ASheet = UIAlertController (title: "目の動き", message: msg, preferredStyle: .actionSheet)
        ASheet.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        ASheet.addAction(UIAlertAction(title: "CANCEL", style: .default, handler: {action in
            self.imgchg(filename: "default.png")
        }))
        present(ASheet, animated: true, completion: nil)
    }

    func imgchg(filename:String) {
        myImageView.image = UIImage(named:"\(filename)")
    }
    
}

