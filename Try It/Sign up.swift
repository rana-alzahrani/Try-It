//
//  Sign up.swift
//  Try It
//
//  Created by Atheer on 04/11/1444 AH.
//

import SwiftUI

struct Sign_up: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @StateObject private var vm = SignUpViewModel()
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        VStack{
            Text("Name")
                .frame(width: 360,alignment: .leading)
                .foregroundColor(.black)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .padding(.vertical,0)
                .offset(x:-4,y:10)
            HStack {
                TextField("Enter your name", text:
                            $name)
                .foregroundColor(.black)
                .frame(width:320, height:27)
                
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
                .foregroundColor(Color("color g"))
                .frame(width:358, height:44))
            
            Text("Email")
                .frame(width: 360,alignment: .leading)
                .foregroundColor(.black)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .padding(.vertical,0)
                .offset(x:-4,y:10)
            HStack {
                TextField("Enter your email", text:
                            $email)
                .foregroundColor(.black)
                .frame(width:320, height:27)
                
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
                .foregroundColor(Color("color g"))
                .frame(width:358, height:44))
            
            Text("Password")
                .frame(width: 360,alignment: .leading)
                .foregroundColor(.black)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .padding(.vertical,0)
                .offset(x:-4,y:10)
            HStack {
                TextField("N346455_4", text:
                            $password)
                .padding(.leading, 34.0)
                .foregroundColor(.black)
                .frame(width:320, height:27)
                Image(systemName: "eye.slash")
                //                    .offset(x:-17,y:2)
                    .padding()
                    .foregroundColor(Color("color line"))
                
            }
            
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 11).stroke(lineWidth: 1)
                .foregroundColor(Color("color g"))
                .frame(width:358, height:44))
            
            Button("Sign Up") {
                
                
                vm.signUp(email: email, password: password) { result in
                    switch result {
                    case .success(_):
                        coordinator.path.append(.login)
                    case .failure(let error):
                        vm.errorMessage = error.errorMessage
                    }
                }
                
                
            }
            
            if let errorMessage = vm.errorMessage {
                Text(errorMessage)
            }
            
        label: do {
//                Text("Sign up")
//
//                    .frame(width: 358, height: 50)
//                    .fontWeight(.semibold)
//                    .font(.system(size: 20))
//                    .foregroundColor(.white)
//                    .background(Color("color p"))
//                    .cornerRadius(10)
                
                
                
            }
            HStack{
                Text("Already have an account?")
                    .foregroundColor(.black)
                    .offset(y:30)
                    .font(.system(size: 12))
                
                
                Button{
                    
                }label: {
                    Text("Sign in")
                        .foregroundColor(.black)
                        .underline()
                        .offset(y:-1)
                        .font(.system(size: 12))
                }
                .offset(y:30)
            }
            
        }
    }
    
    struct Sign_up_Previews: PreviewProvider {
        static var previews: some View {
            Sign_up()
        }
    }
}

