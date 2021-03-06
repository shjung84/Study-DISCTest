//
//  ViewController.swift
//  Study-DISCTest
//
//  Created by SH.Jung on 2022/01/16.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var nameField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	// MARK: - Methods
	// MARK: Life Cycle
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		self.nameField.text = nil
	}

	@IBAction func touchUpStartButton(_ sender: UIButton) {
		
		guard let name: String = self.nameField.text, name.isEmpty == false else {
			let alert: UIAlertController
			alert = UIAlertController(title: "알림", message: "이름을 입력해주세요", preferredStyle: .alert)
			
			let okAction: UIAlertAction
			okAction = UIAlertAction(title: "확인", style: .cancel, handler: nil)
			
			alert.addAction(okAction)
			self.present(alert, animated: true, completion: nil)
			return
		}
		
		UserInfo.shared.name = self.nameField.text
		self.performSegue(withIdentifier: "PresentTest", sender: nil)
	}
	
}

