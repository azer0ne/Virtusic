//
//  TutorialSecond.swift
//  Virtusic
//
//  Created by Abiyyu Firmansyah on 24/05/23.
//

import SwiftUI

struct TutorialSecond: View {
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        VStack(alignment: .center){
            Text("Tap object to play the sound")
                .font(.title2)
                .padding(.top, 80)
            
//            Image("Badge - ARKit")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: 80)
//                .padding(.top, 30)
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
                    .foregroundColor(.white)
                    .padding(.top, 50)
                
            }
            .padding(.top, 40)
            .padding(.bottom, -40)
            Image("cardExample")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 100)
            
            HStack {
                Image(systemName: "arkit")
                    .font(.title)
                Text("AR")
                    .font(.title)
            }
            .padding(.vertical, 70)
            Spacer()
            Button(action: {shouldShowOnboarding.toggle()}) {
                Text("Get Started")
                    .foregroundColor(.white)
                //                                .bold()
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
        .padding(.vertical, 60)

    }
}

struct TutorialSecond_Previews: PreviewProvider {
    static var previews: some View {
        TutorialSecond(shouldShowOnboarding: .constant(true))
    }
}
