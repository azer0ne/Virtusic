//
//  Tutorial.swift
//  Virtusic
//
//  Created by Abiyyu Firmansyah on 23/05/23.
//

import SwiftUI

struct Tutorial: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Point iPhone to Flashcard")
                .font(.title2)
                .padding(.top, 80)
            
//            Image("Badge - ARKit")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: 80)
//                .padding(.vertical, 30)
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
            .padding(.vertical, 70)
            
            Spacer()
//            Button(action: {}) {
//                Text("Continue")
//                    .foregroundColor(.white)
//                    .bold()
//                    .padding(.vertical, 8)
//                    .frame(maxWidth: .infinity)
//            }
//            .buttonStyle(.bordered)
//            .background(Color("AppColor"))
//            .cornerRadius(10)
//            .padding(.vertical, 10)
            
        }
        .padding(20)
    }
}

struct Tutorial_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial()
    }
}
