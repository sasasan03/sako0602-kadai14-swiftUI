//
//  FruitsAddView.swift
//  Sako0602-kadai14-swiftUI
//
//  Created by sako0602 on 2023/01/19.
//

import SwiftUI

struct FruitsAddView: View {
    
    @State private var textNewItem = ""
//    @Binding var isPresented: Bool
//    @Binding var fruits: [FruitsPropaty]
    let save: (String) -> Void
    let cancel: () -> Void
    
    var body: some View {
        NavigationStack{
            HStack{
                Text("名前")
                TextField("", text: $textNewItem)
                    .frame(width: 210,height: 50)
                    .border(Color.black)
                    .padding()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
//                        isPresented = false
                        cancel()
                    }
                }
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("save"){
//                        fruits.append(FruitsPropaty(name: textNewItem, isChecked: false))
//                        isPresented = false
                         save(textNewItem)
                    }
                }
            }
            .padding()
        }
    }
}

struct FruitsAddView_Previews: PreviewProvider {
    
    static var previews: some View {
        FruitsAddView(save: { _ in }, cancel: {})
//        FruitsAddView(isPresented: Binding<Bool>.constant(false), fruits: Binding<[FruitsPropaty]>.constant([FruitsPropaty(name: "", isChecked: false)]))
    }
}
