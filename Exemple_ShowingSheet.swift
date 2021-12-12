Exemple Swift

//
//  mainView.swift
//  test
//
//  Created by dorothee on 25/10/2021.
//

import SwiftUI

struct mainView: View {
    @State var showingSheet: Bool = false
    var body: some View {

        Button(action:{
            self.showingSheet.toggle() })
               {
            Text("appeler la sheetView")
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)}

        .sheet(isPresented: $showingSheet){
            modalView()
        }
    }

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
}
//
//  modalView.swift
//  test
//
//  Created by dorothee on 25/10/2021.
//

import SwiftUI

struct modalView: View {

    @Environment(.presentationMode) var presentationMode

    var body: some View {
        VStack{
            Text("Sheet view")

            Button(action: {
                presentationMode.wrappedValue.dismiss()},
                   label: {
                Text("Quitter")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)

            })
        }
    }
}

struct modalView_Previews: PreviewProvider {
    static var previews: some View {
        modalView()
    }
}
