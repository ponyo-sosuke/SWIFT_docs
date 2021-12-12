//
//  SlideScrollView.swift
//  Ecolande
//
//  Created by dorothee on 02/11/2021.
//

import SwiftUI

struct SlideScrollView: View {
    var body: some View {
        ScrollView() {
            VStack(alignment: .center) {
                
                }
                // inserer ici
                VStack{
                    AnnonceProduit()
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: UIScreen.main.bounds.size.height / 4)
                    
                    Spacer()
                    VStack(alignment: .center){
                    SlideCircleView()
        //                .offset(x: 0, y: -30)
                        
                    
                    VStack(alignment: .center) {
                        HStack() {
                            SlideInfo2View()
                        }
                        
                        Spacer()
                        }
                        creeralerte()
                        }
                    // fin insertion
                    }.padding()
                    
            }
        }
        
    
}



struct SlideScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SlideScrollView()
    }
}
