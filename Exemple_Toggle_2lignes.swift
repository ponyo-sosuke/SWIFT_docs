Exemple_Toggle_2lignes

//
//  ToggleView.swift
//  MyApplication
//
//  Created by dorothee on 26/10/2021.
//

import SwiftUI

struct ToggleView: View {
    var body: some View {
            Form {
                Section {
                    ForEach(allKeys, id: \.self) {
                        key in
                        Toggle(isOn: binding(for: key)) {
                            Text(key)
                        }
                    }
                }
            }
        }

    
        
        @State
        private var myToggleValues: [String: Bool] = [
            "Carte": false,
            "Liste": true
        ]
        
        private var allKeys: [String] {
            return myToggleValues.keys.sorted().map { String($0) }
        }
        
        private func binding(for key: String) -> Binding<Bool> {
            return Binding(get: {
                return self.myToggleValues[key] ?? false
            }, set: {
                self.myToggleValues[key] = $0
            })
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
}
