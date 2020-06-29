//
//  GameData.swift
//  ella
//
//  Created by Daniel McManus on 6/29/20.
//  Copyright © 2020 Daniel McManus. All rights reserved.
//

import SwiftUI

final class GameData: ObservableObject {
    @Published var inputValue = ""
    @Published var numberValue = String.randomNumber(length: 4)
    @Published var score = 0
    @Published var timer: Timer?
    @Published var seconds = 60
    
    func reset() {
        self.inputValue = ""
        self.numberValue = String.randomNumber(length: 4)
        self.score = 0
        self.timer?.invalidate()
        self.timer = nil
        self.seconds = 60
    }
    
}
