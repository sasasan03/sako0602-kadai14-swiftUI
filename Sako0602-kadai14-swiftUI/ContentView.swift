//
//  ContentView.swift
//  Sako0602-kadai14-swiftUI
//
//  Created by sako0602 on 2023/01/19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented = false
    @State private var fruits = [
    FruitsPropaty(name: "りんご", isChecked: false),
    FruitsPropaty(name: "みかん", isChecked: true),
    FruitsPropaty(name: "バナナ", isChecked: false),
    FruitsPropaty(name: "パイナップル", isChecked: true),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.id){ fruit in
                    HStack{
                        Image(systemName: fruit.isChecked
                              ? "checkmark"
                              : ""
                        )
                        .foregroundColor(Color.red)
                        .frame(width: 30, height: 30)
                        Text(fruit.name)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isPresented = true
                    }, label: {
                        Text("+")
                            .font(.title)
                    })
                    .padding()
                }
            }
        }
        .sheet(isPresented: $isPresented) {
            FruitsAddView(isPresented: $isPresented, fruits: $fruits)
        }
    }
}

struct FruitsPropaty {
    var id = UUID()
    var name: String
    var isChecked: Bool
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
