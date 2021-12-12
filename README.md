# SWIFT_docs
parts of code for an iOS mobile

# Exemple SegmentedControl

//  List1View.swift
//  MyApplication
//
//  Created by dorothee on 26/10/2021.
//

import SwiftUI

struct SegmentedButtonsView: View {
    @State private var favoriteChoice = 0

    var body: some View {
        VStack {
            Picker("", selection: $favoriteChoice) {
                Text("Carte").tag(0)
                Text("Liste").tag(1)
            }
            .pickerStyle(.segmented)

            Spacer()
            
        }
        .frame(width: 180)
    }
}

struct SegmentedButtonsList_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedButtonsView()
    }
}
