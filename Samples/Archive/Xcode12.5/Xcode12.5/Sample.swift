//
//  Sample.swift
//  mutation-test
//
//  Created by Toshiyuki Hirata on 2024/02/20.
//

import Foundation

class Sample {
    // ポイント計算
    func point(money: Int, user: User) -> Int {
        if (money == 0) {
            return 0
        }

        var point = money/100

        if (user.age >= 60) {
            point = point * 2
        }

        if (point > 200) {
            point = 200;
        }

        return point
    }
}

class User {
    final var age: Int = 0;
    
    init(age: Int) {
        self.age = age
    }
}


