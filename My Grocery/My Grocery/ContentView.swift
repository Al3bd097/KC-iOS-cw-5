//
//  ContentView.swift
//  My Grocery
//
//  Created by Max will on 8/10/22.
//

import SwiftUI

struct ContentView: View {
  @State var grocery = ["pringles", "lays", "tomato", "pepsi"]
    @State var selected = ""
    @State var newItem = ""
        var body: some View {
            VStack{
            List(grocery, id:\.self){  i in
               
                HStack {
                    Image(i)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text(i)
                        .font(.system(size: 30, weight: .medium, design: .serif))
                        
            } // Hstack
                
            } // list
            
                
            
                HStack{
                Button {
                grocery.append(newItem)
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(10)
                    .background(Color.green)
                    .cornerRadius(24)


            }
                
                    TextField("New item", text: $newItem)
                        .autocapitalization(.none)
                        .padding()
                    Button {
                        grocery.remove(at: 0)
                    } label: {
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding(10)
                            .background(Color.red)
                            .cornerRadius(24)
                            
                    } // label
            } // Hstack
                .padding()
            } // Vstack
    } // Body view
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
