//
//  ContentView.swift
//  Virtusic
//
//  Created by Abiyyu Firmansyah on 22/05/23.
//

import SwiftUI
import RealityKit

var arView: ARView!

struct ContentView : View {
    @State private var isHelpButtonTapped = false
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding:Bool = true
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                ARViewContainer().edgesIgnoringSafeArea(.all)
                VStack{
                    HStack {
                        Spacer()
                        Button(action: {
                            isHelpButtonTapped = true
                        }) {
                            Image(systemName: "questionmark.circle")
                                .font(.system(size: 28))
                                .foregroundColor(.white)
                                .padding()
                        }
                        .padding(10)
                        .offset(x: -12, y: -12)
                        .sheet(isPresented: $isHelpButtonTapped) {
                            HelpPage()
                            
                        }
                    }
                    Spacer()
                    Button(action: { self.TakeSnapshot()}) {
                        Image(systemName: "circle.inset.filled")
                            .font(.system(size: 80))
                            .foregroundColor(.white
                            )
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingPage(shouldShowOnboarding: $shouldShowOnboarding)
            
        })
    }
    
    func TakeSnapshot() {
        arView.snapshot(saveToHDR: false) { (image) in
        // 2
        let compressedlmage = UIImage(
            data: (image?.pngData())!)
        // 3
        UIImageWriteToSavedPhotosAlbum(compressedlmage!, nil, nil, nil)
        }
        
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
