//
//  Dashboard.swift
//  CorporateWellness
//
//  Created by Danjuma Nasiru on 29/05/2023.
//

import SwiftUI
import Charts

struct Dashboard: View {
    let events : [Event] = [
        .init(title: "Meeting with frontend developers", details: "Flose Real Estate Project", attendees: ["memberPic", "memberPic", "memberPic", "memberPic"], startTime: Date.fromComp(hour: 8, minute: 0), stopTime: Date.fromComp(hour: 8, minute: 50)),
        .init(title: "Internal Marketing session", details: "Marketing Depatment", attendees: ["memberPic", "memberPic", "memberPic", "memberPic"], startTime: Date.fromComp(hour: 9, minute: 0), stopTime: Date.fromComp(hour: 9, minute: 50)),
        .init(title: "Meeting with frontend developers", details: "Flose Real Estate Project", attendees: ["memberPic", "memberPic", "memberPic", "memberPic"], startTime: Date.fromComp(hour: 10, minute: 0), stopTime: Date.fromComp(hour: 12, minute: 50)),
        .init(title: "Meeting with frontend developers", details: "Flose Real Estate Project", attendees: ["memberPic", "memberPic", "memberPic", "memberPic"], startTime: Date.fromComp(hour: 13, minute: 0), stopTime: Date.fromComp(hour: 13, minute: 50)),
        .init(title: "Meeting with frontend developers", details: "Flose Real Estate Project", attendees: ["memberPic", "memberPic", "memberPic", "memberPic"], startTime: Date.fromComp(hour: 14, minute: 0), stopTime: Date.fromComp(hour: 15, minute: 50)),
        .init(title: "Meeting with frontend developers", details: "Flose Real Estate Project", attendees: ["memberPic", "memberPic", "memberPic", "memberPic"], startTime: Date.fromComp(hour: 16, minute: 0), stopTime: Date.fromComp(hour: 17, minute: 0))
    ]
    var formatter : DateFormatter{
        let formatter1 = DateFormatter()
        formatter1.dateFormat = "EEEE, MMM d"
        return formatter1
    }
    @State private var totalHours : CGFloat = 19
    @State private var selectedDate : Date = Date.now
    @State private var tired = false
    var trimValue : CGFloat {
        totalHours / 40
    }
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack(alignment: .center){
                        Text("Hello Villie!")
                            .font(Font.custom("PlayfairDisplay-BoldItalic", size: 40))
                        Spacer()
                        Image("userProfilePic")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(lineWidth: 5).foregroundColor(.gray))
                            .onTapGesture {
                                tired.toggle()
                            }
                    }
                    
                    Text("Your Progress")
                        .font(.title2)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            VStack(alignment: .leading){
                                Text("\(totalHours.formatted())/40")
                                    .padding(25)
                                    .overlay(Circle()
                                        .trim(from: 0, to: totalHours / 40)
                                        .stroke(style: StrokeStyle(lineWidth: 7, lineCap: .round, lineJoin: .round))
                                        .foregroundColor(.gray)
                                        .rotationEffect(Angle(degrees: -90)))
                                
                                Spacer()
                                
                                Text("Working Hours")
                                    .font(.title)
                                    .padding(.bottom, 5)
                                Text("Working hours exceeded by 3 hours")
                                    .font(.caption)
                                    .padding(.bottom, 5)
                            }
                            .padding(12)
                            .padding(.top, 10)
                            .frame(width: 150, height: 250)
                            .background(Color(hex: "fa675f"))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            
                            
                            VStack(alignment: .leading){
                                Text(82, format: .percent)
                                    .padding(25)
                                    .overlay(Circle()
                                        .trim(from: 0, to: 82 / 100)
                                        .stroke(style: StrokeStyle(lineWidth: 7, lineCap: .round, lineJoin: .round))
                                        .foregroundColor(.black.opacity(0.4))
                                        .rotationEffect(Angle(degrees: -90)))
                                
                                Spacer()
                                
                                Text("Your Efficiency")
                                    .font(.title)
                                    .padding(.bottom, 5)
                                Text("Excellent Result")
                                    .font(.caption)
                                    .padding(.bottom, 5)
                            }
                            .padding(12)
                            .padding(.top, 10)
                            .frame(width: 150, height: 250)
                            .background(Color(hex: "f5c54c"))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            
                            
                            VStack(alignment: .leading){
                                Text(82, format: .percent)
                                    .padding(25)
                                    .overlay(Circle()
                                        .trim(from: 0, to: 82/100)
                                        .stroke(style: StrokeStyle(lineWidth: 7, lineCap: .round, lineJoin: .round))
                                        .foregroundColor(.black.opacity(0.4))
                                        .rotationEffect(Angle(degrees: -90)))
                                
                                Spacer()
                                
                                Text("Working Hours")
                                    .font(.title)
                                    .padding(.bottom, 5)
                                Text("Working hours exceeded by 3 hours")
                                    .font(.caption)
                                    .padding(.bottom, 5)
                            }
                            .padding(12)
                            .padding(.top, 10)
                            .frame(width: 150, height: 250)
                            .background(Color(hex: "f5c54c"))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                    }
                    .padding(.vertical, 30)
                    
                    HStack{
                        
                        Text(formatter.string(from: selectedDate))
                        
                        Spacer()
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                    }
                    
                    ForEach(events.indices) { event in
                            HStack(alignment: .top){
                                Text(events[event].startTime.formatted(date: .omitted, time: .shortened))
                                    .padding(.trailing)
                                Spacer()
                                VStack(alignment: .leading){
                                    Text(events[event].title)
                                        .font(.footnote)
                                    Text(events[event].details)
                                        .font(.footnote)
                                    HStack{
                                        ZStack{
                                            ForEach(events[event].attendees.indices, id: \.self){x in
                                                Image("memberPic")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30)
                                                    .clipShape(Circle())
                                                    .offset(x: CGFloat(x*18), y: 0)
                                            }
                                        }
                                        Spacer()
                                        Text("\(events[event].startTime.formatted(date: .omitted, time: .shortened)) - \(events[event].stopTime.formatted(date: .omitted, time: .shortened))")
                                            .font(.caption)
                                    }
                                }
                                .padding()
                                .background(event % 2 == 0 ? Color(hex: "e8b782") : Color(hex: "afb6ba"))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            
                        }
                }
                .padding()
                .padding(.top, 40)
                
            }
            .opacity(tired ? 0.3 : 1)
            
            if tired{
                TakeABreakView(tired: $tired)
            }
        }
        
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
