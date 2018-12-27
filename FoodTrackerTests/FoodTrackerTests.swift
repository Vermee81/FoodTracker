//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Hiroo Kusaba on 2018/12/26.
//  Copyright © 2018 Hiroo Kusaba. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    // MARK: Meal Class Tests

    // Confirm that the Meal initializer return a Meal object when passed valid parameters.
    func testMealの初期化に成功するか(){
        // レーティングがゼロ
        let zeroRatingMeal  = Meal(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // 一番高い評価のご飯
        let highestRatingMeal = Meal(name: "最高", photo: nil, rating: 5)
        XCTAssertNotNil(highestRatingMeal)
    }
    
    // Confirm that the Meal initializer returns nil when passed a negative rating or an empty name.
    func testMealの初期化に失敗するか(){
        // ご飯の名前がない
        let noNameMeal = Meal(name: "", photo: nil, rating: 5)
        XCTAssertNil(noNameMeal)
        
        // レーティングがマイナス
        let negativeRatingMeal = Meal(name: "マイナス", photo: nil, rating: -5)
        XCTAssertNil(negativeRatingMeal)
        
        // レーティングが最高値を超える
        let exceedRatingMeal = Meal(name: "超える", photo: nil, rating: 6)
        XCTAssertNil(exceedRatingMeal)
        
    }
    

}
