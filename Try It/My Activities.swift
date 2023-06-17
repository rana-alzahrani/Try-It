
//  My Activities.swift
//  Try It
//
//  Created by Rana on 03/11/1444 AH.


import SwiftUI

struct My_Activities: View {
    @State private var activities = 0
    var body: some View {
        VStack {
            Picker("", selection: $activities) {
                Text("My Activities").tag(0)
                Text("To Do").tag(1)
            }
            .pickerStyle(.segmented)
            .frame(width: 358, height: 32)
        }
        .padding(.bottom, 600)
        
    }
}

struct My_Activities_Previews: PreviewProvider {
    static var previews: some View {
        My_Activities()
    }
}
