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
    @State var visible = false
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
            HStack(spacing :15){
         
                VStack{
                    
                    if self.visible{
                        
                        TextField("Password", text:self.$password)
                        .foregroundColor(.black)
                        .padding(.leading,10)
                    }
                    else
                    {
                        SecureField("Password", text:self.$password)
                            .foregroundColor(.black)
                            .padding(.leading,10)
                    }
                }
                Button(action: {
                    
                    self.visible.toggle()
                }) {
                  
                    Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(.black)
                        .padding(.trailing,10)
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 11).stroke(self.password != "" ? Color("color g") : Color("color g"),lineWidth: 2)
            .frame(width:358, height:44))
            
            Spacer()
                .frame(height:60)
            
            Button() {
                
                
                vm.signUp(email: email, password: password) { result in
                    switch result {
                    case .success(_):
                        coordinator.path.append(.login)
                    case .failure(let error):
                        vm.errorMessage = error.errorMessage
                    }
                }
            }label: {
                Text("Sign up")
                    .foregroundColor(Color.white)
                    .frame(width: 350,height: 45)
                    .background(Color("Color3"))
                    .cornerRadius(10)
            }
            
            if let errorMessage = vm.errorMessage {
                Text(errorMessage)
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

