//
//  TrainingListRow.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 11/1/2024.
//

import SwiftUI

struct TrainingListRow: View {
    private let id: Int

    init(id: Int) {
        self.id = id
    }

    var body: some View {
        HStack(spacing: .zero, content: {
            Text("Row Training \(self.id)")
        })
    }
}

#Preview {
    TrainingListRow(id: 1)
}
