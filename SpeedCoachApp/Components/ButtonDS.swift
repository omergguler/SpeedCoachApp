//
//  ButtonDS.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 9/1/2024.
//

import SwiftUI

struct ButtonDS: View {
    private let text: String

    init(text: String) {
        self.text = text
    }

    var body: some View {
        HStack(spacing: .zero, content: {
            Text("See in map \(self.text)")
        })
    }
}

#Preview {
    ButtonDS(text: "Test")
}
