import SwiftUI

struct LoadingView: View {
    
    @ObservedObject var viewModel: LoadingVCViewModel
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Image("Logo_Image")
                .resizable()
                .frame(width: 300, height: 300)
                .padding()
                .scaleEffect(isAnimating ? 1.3 : 1.0)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 0.7).repeatForever()) {
                        self.isAnimating = true
                }
            }
        }
    }
}

#Preview {
    LoadingView(viewModel: LoadingVCViewModel()).onAppear {
        withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
        }
    }
}
