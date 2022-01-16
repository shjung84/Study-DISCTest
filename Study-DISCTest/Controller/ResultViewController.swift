//
//  ResultViewController.swift
//  Study-DISCTest
//
//  Created by SH.Jung on 2022/01/16.
//

import UIKit

class ResultViewController: UIViewController {

	@IBOutlet weak var nameLabel: UILabel!
	
	@IBOutlet weak var percentageLabel: UILabel!
	
	@IBOutlet weak var titleLabel: UILabel!
	
	@IBOutlet weak var descriptionTextView: UITextView!
	
	
	// MARK: - Methods
	// MARK: Life Cycle
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		self.nameLabel.text = UserInfo.shared.name
		self.percentageLabel.text = UserInfo.shared.scorePersentageText
		
		guard let result: Result.Info = UserInfo.shared.hightestScoreResult else { return }
		
		self.titleLabel.text = result.title
		self.descriptionTextView.text = result.typeDescription
	}
	
	// MARK: IBActions
	@IBAction func touchUpDismissButton(_ sender: UIButton) {
		self.navigationController?.presentingViewController?.dismiss(animated: true, completion: nil)
	}


}
