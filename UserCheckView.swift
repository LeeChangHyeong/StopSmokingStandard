//
//  UserCheckView.swift
//  StopSmokingStandard
//
//  Created by 이창형 on 2022/05/05.
//

import SwiftUI


#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct UserCheckView: View {
    @AppStorage("cigCount") var cigCount: Int?
    @AppStorage("cigPrice") var cigPrice: Int?
    
    
    var body: some View {
        
        Text("하루 흡연 개비")
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding(.horizontal)
        
        TextField("하루 흡연 개비", value: $cigCount, format:.number)
            .keyboardType(.numberPad)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 1))
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.bottom, 10)
        
        
        
        Text("피우는 담배 가격(원)")
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top, 10)
        
        TextField("피우는 담배 가격(원)", value: $cigPrice, format:.number)
            .keyboardType(.numberPad)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 1))
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding(.horizontal)
        
        
        
        Button("확인"){
            
        }
        .foregroundColor(.white)
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(.blue)
        .cornerRadius(20)
        .padding(.top, 30)
        
        
        
    }
}

