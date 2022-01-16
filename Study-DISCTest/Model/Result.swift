//
//  Result.swift
//  Study-DISCTest
//
//  Created by SH.Jung on 2022/01/16.
//

import UIKit

struct Result: Codable {
	/// for Signlaton design pattern
	static let shared: Result? = Result()
	
	// Instance Priperties
	let d: Info
	let i: Info
	let s: Info
	let c: Info
	
	/// Custiom Failable Initializer
	private init?() {
		guard let dataAsset: NSDataAsset = NSDataAsset(name: "Result") else {
			return nil
		}
		
		do {
			let result: Result = try JSONDecoder().decode(Result.self, from: dataAsset.data)
			self = result
		} catch {
			return nil
		}
	}
	
}

extension Result { // Result 안에 Info 타입을 중첩
	struct Info: Codable {
		let title: String
		let typeDescription: String
	}
}
