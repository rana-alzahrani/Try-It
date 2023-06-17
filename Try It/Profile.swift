
//  Profile.swift
//  Try It
//
//  Created by Rana on 03/11/1444 AH.


import SwiftUI

struct Profile: View {
    @State var name: String = ""
    @State var fullName: String = ""
    @State var email: String = ""
    @State var dateOfbirth: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .trailing) {
            Button("Edit") {
            }
            .foregroundColor(.black)
            .underline()
            .offset(x: -15,y: -15)
            .padding()
            VStack {
                Circle()
                    .frame(width: 157, height: 157)
                    .foregroundColor(.gray)
                Text("Name")
                    .padding()
                Text("About")
                    .offset(x: -144)
                VStack(spacing: 15) {
                    TextField("  full Name: ",text: $fullName)
                        .font(.headline)
                        .fontWeight(.medium)
                        .frame(width: 342, height: 48)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray)
                        )
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke()
                                .foregroundColor(.gray)
                        }
                    TextField("  Email: ",text: $email)
                        .font(.headline)
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                        .frame(width: 342, height: 48)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray)
                        )
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke()
                                .foregroundColor(.gray)
                        }
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray)
                            .frame(width: 342, height: 48)
                        HStack(spacing: -30) {
                            TextField("  Date of birth: ", text: $dateOfbirth)
                                .foregroundColor(.black)
                                .fontWeight(.medium)
                                .frame(width: 342, height: 48)
                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width:15 ,height: 19)
                                .foregroundColor(.black)
                        }
                    }
                    TextField("  Password: ", text: $password)
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                        .frame(width: 342,height: 48)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray)
                        )
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke()
                                .foregroundColor(.gray)
                        }
                }
                HStack {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .resizable()
                        .frame(width:22 ,height: 22)
                        .imageScale(.medium)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Color2"))
                    Button("Logout") {
                    }
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color("Color2"))
                    .cornerRadius(22)
                }.offset(x: -120,y: 40)
            }
            Spacer()
        }.padding(.vertical)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
