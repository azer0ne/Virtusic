//
//  OnboardingPage.swift
//  Virtusic
//
//  Created by Abiyyu Firmansyah on 24/05/23.
//

import SwiftUI

struct OnboardingPage: View {
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        TabView{
            Tutorial()
            TutorialSecond(shouldShowOnboarding: $shouldShowOnboarding)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage(shouldShowOnboarding: .constant(false))
    }
}
