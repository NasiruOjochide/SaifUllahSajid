//
//  ContentView.swift
//  CorporateWellness
//
//  Created by Danjuma Nasiru on 29/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tag : tabs = .dashboard
    
    var body: some View {
        
        VStack{
            Spacer()
            
            switch tag
            {
            case .dashboard:
                Dashboard()
            case .notes:
                NotesView()
            case .calendar:
                CalenderView()
            case .messages:
                MessagesView()
            case .settings:
                SettingsView()
            }
            
            Spacer()
            
            ZStack{
                RoundedCorner(radius: 120, corners: [.topLeft, .topRight])
                    .foregroundColor(Color(hex: "10062e"))
                    .frame(height: 100)
                HStack{
                    Group{
                        Spacer()
                        Image(systemName: "square.grid.2x2.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .foregroundColor(tag == tabs.dashboard ? .white : .gray)
                            .onTapGesture {
                                tag = .dashboard
                            }
                        Spacer()
                        Image(systemName: "square.topthird.inset.filled")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .foregroundColor(tag == tabs.notes ? .white : .gray)
                            .onTapGesture {
                                tag = .notes
                            }
                        Spacer()
                    }
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .foregroundColor(tag == tabs.calendar ? .white : .gray)
                            .onTapGesture {
                                tag = .calendar
                            }
                        Spacer()
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .foregroundColor(tag == tabs.messages ? .white : .gray)
                            .onTapGesture {
                                tag = .messages
                            }
                        Spacer()
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .foregroundColor(tag == tabs.settings ? .white : .gray)
                            .onTapGesture {
                                tag = .settings
                            }
                        Spacer()
                    
                }
            }
        }
        .background(.gray.opacity(0.5))
        .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
