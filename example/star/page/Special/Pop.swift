//
//  Pop.swift
//  star
//
//  Created by 张复星 on 2020/2/10.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct Pop: View {
    @State var showingProfile = false
    
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
    
    var body: some View {
        ScrollView {
            HStack {
                Text("pop up a view by a Image")
                
                Spacer()
                
                Image("Setting")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .onTapGesture {
                        print("tapped")
                        self.showingProfile = true
                }
            }
            
            Divider()
            
            HStack {
                Text("pop up a view by a Button")
                
                Spacer()
                
                Button(action: { self.showingProfile.toggle() }) {
                    Image("Setting")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }
        }
        .padding(40)
        .navigationBarItems(trailing: profileButton)
        .sheet(isPresented: $showingProfile) {
            HelloWorld()
        }
        
    }
}

struct Pop_Previews: PreviewProvider {
    static var previews: some View {
        Pop()
    }
}
