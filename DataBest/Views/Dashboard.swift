//
//  Dashboard.swift
//  DataBest
//
//  Created by Danjuma Nasiru on 31/05/2023.
//

import SwiftUI

struct Dashboard: View {
    let employees : [Employee] = [
        .init(name: "Robert Fox", title: "CMO", designation: "Borer", image: "userProfilePic", openRate: 0.634),
        .init(name: "Marta Padberg", title: "COO", designation: "Boehm", image: "userProfilePic", openRate: 0.729)
    ]
    var dateFormatter : String{
        let format = DateFormatter()
        format.dateFormat = "dd.MM.YYYY"
        let date = format.string(from: Date.now)
        return date
    }
    
    var body: some View {
        NavigationStack {
            HStack{
                Image("userProfilePic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .clipShape(Circle())
                    .padding(.horizontal, 5)
                Text("BRYAN SIMONIS")
                    .font(Font.custom(Const.playFairBold, size: 20))
                Spacer()
                VStack(alignment: .trailing){
                    Spacer()
                    Line()
                        .stroke(.black, lineWidth: 2)
                        .frame(width: 40)
                    Line()
                        .stroke(.black, lineWidth: 2)
                        .frame(width: 25)
                    Spacer()
                }
                .frame(height: 30)
            }
            .padding(.horizontal)
            
            ScrollView{
                VStack(alignment: .leading){
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text("Lecture")
                                .padding(10)
                                .background(Color("darkBlue"))
                                .foregroundColor(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                            Text("B2B SALES TECHNIQUES")
                                .multilineTextAlignment(.leading)
                                .font(Font.custom(Const.playFairExtraBold, size: 20))
                                .padding(.bottom)
                            
                            Text(dateFormatter)
                                .multilineTextAlignment(.leading)
                                .font(Font.custom(Const.playfairRegular, size: 15))
                        }
                        Spacer()
                        Image("suitMan-removebg-preview")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                        
                    }
                    .padding()
                    .background(.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    ZStack(alignment: .top){
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray, lineWidth: 2)
                            .frame(height: 150)
                        
                        HStack(alignment: .bottom){
                            Text("DATA ACTIONS")
                                .font(Font.custom(Const.playFairBold, size: 20))
                            Spacer()
                            Text("...")
                                .font(.title)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        
                        HStack{
                            Spacer()
                            Image(systemName: "house")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                                .foregroundColor(Color("darkBlue"))
                            Spacer()
                            
                            Image(systemName: "chart.bar.xaxis")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                                .foregroundColor(Color("darkBlue"))
                            Spacer()
                            
                            Image(systemName: "pencil.slash")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                                .foregroundColor(Color("darkBlue"))
                            Spacer()
                            
                            Image(systemName: "list.bullet")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                                .foregroundColor(Color("darkBlue"))
                            Spacer()
                            
                        }
                        .offset(x: 0, y: 120)
                    }
                    .padding(.vertical)
                    
                    Text("EMAIL OPEN RATE")
                        .font(Font.custom(Const.playFairHeavy, size: 20))
                        .padding(.vertical, 35)
                    
                    VStack{
                        ForEach(employees){employee in
                            HStack{
                                Image(employee.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading){
                                    Text(employee.name)
                                        .font(Font.custom(Const.playFairBold, size: 20))
                                    
                                    HStack{
                                        Text(employee.title)
                                        Text("|")
                                            .opacity(0.5)
                                        Text(employee.designation)
                                    }
                                }
                                .padding(.horizontal, 10)
                                Spacer()
                                Text(employee.openRate, format: .percent)
                                    .font(Font.custom(Const.playFairBold, size: 20))
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
