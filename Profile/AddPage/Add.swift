//
//  Add.swift
//  Try It
//
//  Created by ashwaq almuzaini on 03/11/1444 AH.
//

import SwiftUI

struct Add: View {
    @State var value = ""
    var placeholder = "city"
    var dropDownList = ["Riyadh", "Jeddah", "Dammam", "Al Madinah"]
    @State var value2 = ""
    var placeholder2 = "Activities category"
    var dropDownList2 = ["Food", "Arts", "Adventures"]
    @State private var username: String = ""
    @State private var username1: String = ""
    @State private var username2: String = ""
    @State private var number3: String = ""
    @State private var number4: String = ""
    @State private var number5: String = ""
    @State private var gender = 0
    
    var body: some View {
        ZStack{
            ScrollView([.vertical], showsIndicators: true){
                VStack(spacing:20) {
                    
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.gray)
                                .frame(width: 120, height: 100)
                            Image(systemName: "photo")
                                .resizable()
                                .frame(width: 30,height: 30)
                        }
                        VStack(spacing:1){
                            Text("Activity Name")
                                .padding(.leading, -130.0)
                            
                            TextField("Type the activity name", text: $username)
                               
                        }
                        
                    }
                    .padding(.leading, 40)
                    
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 4.0)
                                .stroke(Color.gray)
                                .frame(width: 350, height: 100)
                            TextField("Add Description", text: $username1, axis: .vertical)
//                                .padding(.top, -40.0)
                                .frame(width: 339,height: 100)
                                
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 4.0)
                            .stroke(Color.gray)
                            .frame(width: 350, height: 50)
                        
                        VStack{
                            
                            
                            Menu {
                                ForEach(dropDownList, id: \.self){ client in
                                    Button(client) {
                                        self.value = client
                                    }
                                }
                            } label: {
                                VStack{
                                    HStack(spacing:260){
                                      
                                        
                                        Text(value.isEmpty ? placeholder : value)
                                            .foregroundColor(value.isEmpty ? .gray : .black)
                                        
                                      
                                        Image(systemName: "chevron.down")
                                            .foregroundColor(Color.gray)
                                            .font(Font.system(size: 20, weight: .bold))
                                        
                                    }
                                   
                                    
                                }
                            }
                        }
                    }
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 4.0)
                            .stroke(Color.gray)
                            .frame(width: 350, height: 50)
                        
                        HStack(spacing:205){
                            Text("Select date")
                                .foregroundColor(Color.gray)
                            Image(systemName: "calendar")
                            
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 4.0)
                            .stroke(Color.gray)
                            .frame(width: 350, height: 50)
                        
                        VStack{
                            
                            
                            Menu {
                                ForEach(dropDownList2, id: \.self){ client in
                                    Button(client) {
                                        self.value2 = client
                                    }
                                }
                            } label: {
                                VStack(spacing: 5){
                                    HStack(spacing:150){
                                        //                                Image(systemName:"")
                                        
                                        Text(value.isEmpty ? placeholder2 : value2)
                                            .foregroundColor(value2.isEmpty ? .gray : .black)
                                        //
                                        //                                Spacer()
                                        Image(systemName: "chevron.down")
                                            .foregroundColor(Color.gray)
                                            .font(Font.system(size: 20, weight: .bold))
                                    }
                                    
                                    
                                }
                            }
                        }
                    }
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 4.0)
                            .stroke(Color.gray)
                            .frame(width: 350, height: 50)
                        HStack{
                            Image(systemName: "clock")
                                .padding(.leading, 50.0)
                            TextField("Activity duration", text: $username2)
                            
                                .frame(width: 339, height: 50)
                            
                            
                        }
                    }
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 4.0)
                            .stroke(Color.gray)
                            .frame(width: 350, height: 50)
                        HStack{
                            Image(systemName: "person.3")
                                .padding(.leading, 50.0)
                            TextField("Number of people", text: $number3)
                            
                                .frame(width: 339, height: 50)
                            
                            
                        }
                    }
                    VStack {
                        Picker("", selection: $gender) {
                            Text("Male").tag(0)
                            Text("Female").tag(1)
                            Text("Both").tag(2)
                            
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 358)
                        
                    }
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 4.0)
                            .stroke(Color.gray)
                            .frame(width: 350, height: 50)
                        HStack{
                            Image(systemName: "dollarsign")
                                .padding(.leading, 50.0)
                            TextField("Activity price", text: $number4)
                            
                                .frame(width: 339, height: 50)
                            
                            
                        }
                    }
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 4.0)
                            .stroke(Color.gray)
                            .frame(width: 350, height: 50)
                        HStack{
                            Image(systemName: "location")
                                .padding(.leading, 50.0)
                            TextField("Activity location", text: $number5)
                            
                                .frame(width: 339, height: 50)
                            
                            
                        }
                    }
                }
                    
                
                    VStack{
                        Button{
                            
                        }label: {
                            Text("Add")
                                .foregroundColor(Color.white)
                                .frame(width: 358,height: 50)
                                .background(Color("Color3"))
                                .cornerRadius(4.0)
                        }
                        .padding(.top, 30.0)
                    }
                }
            }
        }
    }
    


struct Add_Previews: PreviewProvider {
    static var previews: some View {
        Add()
    }
}
