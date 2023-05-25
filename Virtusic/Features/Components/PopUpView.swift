//
//  PopUpView.swift
//  Virtusic
//
//  Created by Abiyyu Firmansyah on 23/05/23.
//

import SwiftUI

struct PopUpView: View {
    @Binding var isHelpButtonTapped: Bool

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.black.opacity(0.4)
                    .onTapGesture {
                        isHelpButtonTapped = false
                    }
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Content")
                        .padding()
                }
                .frame(width: geometry.size.width * 0.8,
                       height: geometry.size.height * 0.7)
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 20)
            }
        }
    }
}

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView(isHelpButtonTapped: .constant(false))
    }
}
