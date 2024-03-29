
//  sign in.swift
//  Try It
//
//  Created by Atheer on 04/11/1444 AH.


import SwiftUI
import Firebase

struct sign_in: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var checked1 = false
    @State var visible = false
    func login()
    {
        Auth.auth().signIn(withEmail: email, password: password){
            result , error in
            if error != nil {
                print(error!.localizedDescription)
            }else {
                print("Login scsuufly")
            }
        }
    }
    var body: some View {
        VStack{
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
            VStack {
                HStack(){
                    CheckBoxView(checked: $checked1)
                    Text("Remember me")
                        .foregroundColor(.black)
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                }
            }
            Button {
            }label: {
                Text("Sign in")
                    .frame(width: 358, height: 50)
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(Color("Color3"))
                    .cornerRadius(10)
                    .padding(.top,100.0)
            }
            HStack{
                Text("Don’t have an account ?")
                    .foregroundColor(.black)
                    .offset(y:30)
                    .font(.system(size: 12))
                Button{
                }label: {
                    Text("Sign up")
                        .foregroundColor(.black)
                        .underline()
                        .offset(y:-1)
                        .font(.system(size: 12))
                }
                .offset(y:30)
            }
        }
    }
    
    struct sign_in_Previews: PreviewProvider {
        static var previews: some View {
            NavigationStack {
                sign_in()
            }.navigationDestination(for: Route.self) { route in
                switch route {
                case .login:
                    Text("login screen")
                }
            }
        }
    }
}
