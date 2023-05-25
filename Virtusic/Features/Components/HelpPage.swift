//
//  HelpPage.swift
//  Virtusic
//
//  Created by Abiyyu Firmansyah on 24/05/23.
//

import SwiftUI

struct HelpPage: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        TabView{
            VStack(alignment: .center){
                Text("Point iPhone to Flashcard")
                    .font(.title2)
                    .padding(.top, 80)
                Spacer()
                ZStack{
                    
                    Image("cardExample")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 125)
                    
                    Image(systemName: "iphone.gen2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 175)
                        .font(Font.title.weight(.ultraLight))
                        .symbolRenderingMode(.monochrome)
                }
                HStack {
                    Image(systemName: "arkit")
                        .font(.title)
                    Text("AR")
                        .font(.title)
                }
                .padding(.vertical, 60)
                Spacer()
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 30)
            
            VStack(alignment: .center){
                Text("Tap object to play the sound")
                    .font(.title2)
                    .padding(.vertical, 80)

                Spacer()
                ZStack(alignment: .trailing){
                    Image("ObjectExample")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 250)
                    Image(systemName: "hand.tap.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 100)
                        .foregroundColor(colorScheme == .dark ? .white:.black)
                        .padding(.top, 50)

                }
                .padding(.top, 40)
                .padding(.bottom, -40) 
                Image("cardExample")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100)
                    .padding(.vertical, 20)
                HStack {
                    Image(systemName: "arkit")
                        .font(.title)
                    Text("AR")
                        .font(.title)
                }
                .padding(.top, 40)
                .padding(.bottom, 40)

                Spacer()
                Button(action: {dismiss()}) {
                    Text("Close")
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding(.vertical, 6)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)
                .background(Color("AppColor"))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)

            }
            .padding(.horizontal, 20)
            .padding(.vertical, 30)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

//struct HelpPage_Previews: PreviewProvider {
//    static var previews: some View {
//        HelpPage(shouldShowOnboarding: .constant(true))
//    }
//}
