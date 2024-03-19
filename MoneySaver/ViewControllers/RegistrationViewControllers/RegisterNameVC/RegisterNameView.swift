import SwiftUI

struct RegisterNameView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Color(.green)
                        .frame(width: 80, height: 3)
                    Color(UIColor.lightGray)
                        .frame(width: 80, height: 3)
                    Color(UIColor.lightGray)
                        .frame(width: 80, height: 3)
                    Color(UIColor.lightGray)
                        .frame(width: 80, height: 3)
                }
                .padding(.top , 40)
                VStack {
                    Text("Add your photo")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Circle()
                                .foregroundColor(.clear)
                                .frame(width: 90, height: 90)
                                .overlay(
                                    Circle()
                                        .stroke(Color.green, lineWidth: 2))
                            Circle()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.green)
                            Image(systemName: "person.badge.plus")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.white)
                                .padding(.leading , 5)
                            
                        }
                    })
                }
                .padding(.top , 100)
                VStack {
                    Text("What is your name?")
                        .font(.title).bold()
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(UIColor.systemGray5))
                            .frame(height: 50)
                        
                        TextField("Enter your name...", text: $text)
                            .foregroundColor(.black)
                            .frame(height: 50)
                            .padding(.horizontal)
                    }
                    .padding()
                }
                .padding(.top , 100)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.green)
                            .frame(height: 50)
                            .padding(.horizontal)
                        Text("Next")
                            .foregroundStyle(.white)
                            .bold()
                    }
                })
                .padding(.top , 160)
            }
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    RegisterNameView()
}
