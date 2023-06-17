
//  Discovering.swift
//  Try It
//
//  Created by Atheer on 03/11/1444 AH.


import SwiftUI

struct Discovering: View {
    var body: some View {
        ZStack {
            Image("starpic")
                .resizable()
                .frame(width: 400, height: 900)
            VStack{
                Text("Let’s start")
                    .fontWeight(.medium)
                    .font(.system(size: 32))
                    .foregroundColor(.white)
                Text("Discovering!!")
                    .fontWeight(.medium)
                    .font(.system(size: 32))
                    .foregroundColor(Color("Color2"))
            }
            .padding(.top, -253.0)
            VStack{
                Button {
                }label: {
                    Text("Sign up")
                        .padding()
                        .frame(width: 262, height: 60)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color("Color2"))
                        .cornerRadius(14)
                }
                .padding(.bottom, 21.0)
                Button {
                }label: {
                    Text("Sign in")
                        .frame(width: 262, height: 60)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(14)
                }
            }
            .padding(.top, 370.0)
        }
    }
}

struct Discovering_Previews: PreviewProvider {
    static var previews: some View {
        Discovering()
    }
}
