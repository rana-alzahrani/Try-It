//
//  Home.swift
//  Try It
//
//  Created by Ruba Abuhatlah on 5/23/23.
//

import SwiftUI

struct DiscoverView: View{
    
    @State var Food: Bool = false
    @State var Arts: Bool = false
    @State var Adventures: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "plus")
                    .padding(.leading,300)
                
                Spacer()
                    .frame(height: 80)
                
                ScrollView(.horizontal){
                HStack{
                Button(action :{
                                                    //
                        Food.toggle()
                        Arts = false
                        Adventures = false
                                           }
                , label: {
                ZStack{
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                .frame(width: 134,height: 42)
                .cornerRadius(15)
                                                      
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Food ? Color("Color2") : Color("Color1"))
                    
                .overlay{
                Text("Food")
                    .font(.body)
                    .fontWeight(Food ? .bold :.regular)
                    .foregroundColor(Food ? .white :.black)
                    .multilineTextAlignment(.center)
                                                            }
                                                           
                .frame(width: 134,height: 42)
                                                    }
                                                })
                                                ///
                    Button(action :{
                        
                        Arts.toggle()
                        Food = false
                        Adventures = false
                        
                        } , label: {
                 ZStack{
                                                        
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                .frame(width: 134,height: 42)
                .cornerRadius(15)
                     
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                         .fill(Arts ? Color("Color2") : Color("Color1"))
                     
                .overlay{
                Text("Arts")
                .fontWeight(Arts ? .bold :.regular)
                .foregroundColor(Arts ? .white :.black)
                .multilineTextAlignment(.center)
                                                            }
                .frame(width: 134,height: 42)
                                                    }
                                                })
                                                
                Button(action :{
                                                    
                    Adventures.toggle()
                    Food = false
                    Arts = false
                                                 
                } , label: {
                ZStack{
                                                        
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color(.gray))
                .frame(width: 134,height: 42)
                .cornerRadius(15)
                                                       
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .fill(Adventures ? Color("Color2") : Color("Color1"))
                                                           
                .overlay{
                                                                
                Text("Adventures")
                .font(.body)
                .fontWeight(Adventures ? .bold :.regular)
                .foregroundColor(Adventures ? .white :.black)
                .multilineTextAlignment(.center)
                                                            }
                                                        
                .frame(width: 134,height: 42)
                                                    }
                                                })
                                                //
                                                
                                            }.padding()
                                        }
                
            }
            .navigationTitle("Discover")
        }
        
    }
    
}


struct Home: View {
    var body: some View {
        
        TabView{
            DiscoverView()
                .tabItem{
                Image(systemName: "house")
                    Text("Discover")
                    
            }
            
            My_Activities()
                .tabItem{
                    Image(systemName: "globe.europe.africa")
                    Text("Activities")
                }
            
            Profile()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
