//
//  TakeABreakView.swift
//  CorporateWellness
//
//  Created by Danjuma Nasiru on 29/05/2023.
//

import SwiftUI

struct TakeABreakView: View {

    @Binding var tired : Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Image(systemName: "xmark.app.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .background(.clear)
                    .foregroundColor(.gray)
                    .onTapGesture {
                        tired.toggle()
                    }
            }
            Image("teaBreak-noBg 1")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 30)
            
            Text("Oh you need some rest")
                .font(.title)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
                .padding( .horizontal, 30)
            
            Text("Coffee machine can make a cappuccino especially for you in 5 minutes. Do you want some coffee")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.vertical, 10)
                .padding(.horizontal, 30)
            
            HStack{
                Button{
                    
                }label: {
                    Text("No later")
                        .padding()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 3))
                }
                Spacer()
                Button{
                    
                }label: {
                    Text("Yes, thanks!")
                        .foregroundColor(.black)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.yellow)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(20)
    }
}

struct TakeABreakView_Previews: PreviewProvider {
    @State static var x = true
    static var previews: some View {
        TakeABreakView(tired: $x)
    }
}
