//
//  ViewController.swift
//
//  Created by 김종현 on 2018. 4. 23..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "카메라", message: "사진을 촬영합니다", preferredStyle: .actionSheet)
        
//        let camAction = UIAlertAction(title: "카메라 열기", style: .default) {
//            (action: UIAlertAction) -> Void in
//            //self.view.backgroundColor = UIColor.blue
//            self.outLabel.text = "카메라 열기 실행됨"
//        }

        // 후행 클로저
        let camAction = UIAlertAction(title: "카메라 열기", style: .default, handler: {
             (action: UIAlertAction) -> Void in
            //self.view.backgroundColor = UIColor.blue
            self.outLabel.text = "카메라 열기 실행됨"
        })
        
        let libAction = UIAlertAction(title: "사진 폴더 열기", style: .default) {
            (action: UIAlertAction) -> Void in
            //self.view.backgroundColor = UIColor.yellow
            self.outLabel.text = "사진 폴더 열기 실행됨"
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel) {
            (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
            self.outLabel.text = "취소 실행됨"
        }
        
        // 클로져
//        let deleteAction = UIAlertAction(title: "삭제", style: .destructive, handler: {
//            (action: UIAlertAction) -> Void in
//            self.outLabel.text = "삭제가 선택됨!"
//        })
        
        // 후행 클로저 표현
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive) {
            (action: UIAlertAction) -> Void in
            self.outLabel.text = "삭제가 선택됨!"
        }
        
        let picViewAction = UIAlertAction(title: "사진보기", style: .default, handler: nil)
        
        alertController.addAction(camAction)
        alertController.addAction(libAction)
        alertController.addAction(cancelAction)
        alertController.addAction(picViewAction)
        alertController.addAction(deleteAction)
        
        present(alertController, animated: true, completion: nil)
    }
}

