//
//  ContentView.swift
//  AlertsWithSwiftUI
//
//  Created by Kinney Kare on 3/25/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAlert = false
    
    var answers = ["No","Yes","Not Likely","I wouldn't bet on it","Absolutely","Certainly","100%", "Never", "Don't count on it"]
    
    var body: some View {
        ZStack {
            
            RadialGradient(gradient: Gradient(colors: [.pink, .black, .blue, .green, .gray, .orange, .purple, .pink, .black]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 10, endRadius: 450)
                .ignoresSafeArea()
            VStack {
            Text("Ask Question!")
                .foregroundColor(.white)
                .font(.largeTitle)
                
                Spacer()
                
                Button(action: {
                    isAlert.toggle()
                    print(isAlert)
                }, label: {
                    Text("Press For Answer")
                })
                .padding(.bottom, 180)
                .font(.largeTitle)
                .foregroundColor(.white)
                .alert(isPresented: $isAlert, content: {
                    
                    let alertButton = Alert.Button.default(Text("Ask Another Question"))
                    
                    return Alert(title: Text("\(answers.randomElement()!)"), message: Text("Press the Ask Another Question Button and ask another question."), dismissButton: alertButton)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
