//
//  ChartsView.swift
//  DataBest
//
//  Created by Danjuma Nasiru on 31/05/2023.
//

import SwiftUI
import Charts

struct ChartsView: View {
    
    let viewMonths : [ViewMonth] = [
        .init(date: Date.fromComp(year: 2023, month: 1, day: 1), viewCount: 27000),
        .init(date: Date.fromComp(year: 2023, month: 2, day: 1), viewCount: 110000),
        .init(date: Date.fromComp(year: 2023, month: 3, day: 1), viewCount: 75000),
        .init(date: Date.fromComp(year: 2023, month: 4, day: 1), viewCount: 40000),
        .init(date: Date.fromComp(year: 2023, month: 5, day: 1), viewCount: 50000),
        .init(date: Date.fromComp(year: 2023, month: 6, day: 1), viewCount: 100000)
    ]
    
    var current : Int{
        let date = Date.now
        return Calendar.current.component(.month, from: date)
    }
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "lessthan")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .clipShape(Circle())
                    .padding(5)
                Spacer()
                Text("ANALYTICS")
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
            }.padding(.horizontal)
            ScrollView{
                VStack{
                    
                    HStack{
                        Text("KPI STATISTICS[%]")
                            .font(Font.custom(Const.playFairExtraBold, size: 20))
                        Spacer()
                        Text("See More")
                            .font(Font.custom(Const.playfairRegular, size: 14)).opacity(0.5)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                    }
                    .padding(.vertical)
                    
                    HStack{
                        ZStack{
                            Text("0.49")
                                .padding(30)
                                .background(.blue)
                                .clipShape(Circle())
                                .zIndex(2)
                                .offset(x: 40, y: -50)
                            Text("63")
                                .padding(40)
                                .background(.red)
                                .clipShape(Circle())
                                .zIndex(1)
                                .offset(x: -20, y: 0)
                            Text("84")
                                .padding(50)
                                .background(.orange)
                                .clipShape(Circle())
                                .offset(x: 50, y: 30)
                        }
                        Spacer()
                        VStack(alignment: .leading){
                            HStack(alignment: .center){
                                Circle()
                                    .frame(width: 7)
                                    .foregroundColor(.yellow)
                                
                                Text("Gross Margin")
                                    .font(Font.custom(Const.playfairRegular, size: 17))
                            }
                            HStack(alignment: .center){
                                Circle()
                                    .frame(width: 7)
                                    .foregroundColor(.red)
                                
                                Text("CLR (Retention)")
                                    .font(Font.custom(Const.playfairRegular, size: 17))
                            }
                            HStack(alignment: .center){
                                Circle()
                                    .frame(width: 7)
                                    .foregroundColor(.blue)
                                
                                Text("Churn Rate")
                                    .font(Font.custom(Const.playfairRegular, size: 17))
                            }
                        }
                        
                    }
                    .padding(.leading)
                    .padding(.vertical)
                    
                    HStack{
                        Text("SALES REVENUE")
                            .font(Font.custom(Const.playFairExtraBold, size: 20))
                        Spacer()
                        Text("Monthly")
                            .font(Font.custom(Const.playfairRegular, size: 14)).opacity(0.5)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                    }
                    .padding(.vertical, 30)
                    
                    Chart{
                        ForEach(viewMonths){viewmonth in
                            BarMark(
                                x: .value("Month", viewmonth.date, unit: .month),
                                y: .value("viewCount", viewmonth.viewCount)
                            )
                            .foregroundStyle(Calendar.current.component(.month, from: viewmonth.date) == current ? LinearGradient(colors: [.red.opacity(0.5), .red.opacity(0.8)], startPoint: .bottom, endPoint: .top) : LinearGradient(colors: [.gray.opacity(0.7)], startPoint: .bottom, endPoint: .top))
                            .clipShape(RoundedRectangle(cornerRadius: 7))
                        }
                    }
                    .frame(height: 300)
                    .chartXAxis{
                        AxisMarks(values: viewMonths.map{$0.date}){value in
                            AxisValueLabel(format: .dateTime.month(.abbreviated),  orientation: .horizontal)
                        }
                    }
                    .chartYAxis(){
                        
                    }
                    
                    HStack{
                        Text("18k")
                            .font(Font.custom(Const.playFairExtraBold, size: 40))
                        Spacer()
                        Text("Monthly Revenue")
                            .font(Font.custom(Const.playFairHeavy, size: 20))
                        Spacer()
                        Text("|")
                            .font(Font.custom(Const.playFairBold, size: 40))
                            .opacity(0.2)
                        Spacer()
                        Text("2%")
                            .font(Font.custom(Const.playFairExtraBold, size: 40))
                        Spacer()
                        Text("Revenue Growth")
                            .font(Font.custom(Const.playFairHeavy, size: 20))
                    }
                    .padding(.vertical)
                }
                .padding(.horizontal)
            }
            
        }
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ChartsView()
        }
    }
}

struct ViewMonth : Identifiable{
    let id = UUID()
    let date : Date
    let viewCount : Int
}


