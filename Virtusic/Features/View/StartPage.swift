//
//  Onboarding Page.swift
//  Virtusic
//
//  Created by Abiyyu Firmansyah on 23/05/23.
//

import SwiftUI

struct StartPage: View {
    @State private var showingSecondView = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("VirtusicLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 200)
                Text("Bringing music to life through Augmented Reality!")
                    .font(.body)
                    .foregroundColor(Color("SloganColor"))
                    .italic()
                    .multilineTextAlignment(.center)
                    .frame(maxWidth : .infinity, alignment: .center)
                    .padding(20)
                HStack {
                    Image(systemName: "arkit")
                        .font(.title)
                    Text("AR")
                        .font(.title)
                }
                .padding(.vertical, 70)
//                Spacer()
                Button(action: {showingSecondView = true}) {
                    Text("Continue")
                        .foregroundColor(.white)
//                        .bold()
                        .font(.title2)
                        .padding(.vertical, 6)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)
                .background(Color("AppColor"))
                .cornerRadius(10)
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 60)
        }
        .fullScreenCover(isPresented: $showingSecondView) {
            ContentView()
        }
    }
}


struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
