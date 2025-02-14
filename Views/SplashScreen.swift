import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var opacity = 0.0
    
    var body: some View {
        if isActive {
            MainTabView()
        } else {
            ZStack {
                Color(hex: "333333")
                    .ignoresSafeArea()
                
                Text("RONCLOUD")
                    .font(.system(size: 48, weight: .bold))
                    .foregroundColor(.white)
                    .opacity(opacity)
            }
            .onAppear {
                withAnimation(.easeIn(duration: 1.5)) {
                    opacity = 1.0
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}
