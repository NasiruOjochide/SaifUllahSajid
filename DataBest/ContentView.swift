//
//  ContentView.swift
//  DataBest
//
//  Created by Danjuma Nasiru on 31/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack (alignment: .leading){
                    HStack{
                        Image("DataBestIcon-noBg")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                        Text("DATABEST")
                            .font(Font.custom("PlayfairDisplay-Bold", size: 25))
                    }
                    
                    Text("YOUR BEST MARKETING AND DATA ANALYSER")
                        .font(Font.custom("PlayfairDisplay-Bold", size: 35))
                        .padding(.vertical)
                    
                    Group{
                        Text("Get a ") + Text("clear vision ").bold() + Text("of business")
                    }
                    .font(Font.custom("PlayfairDisplay-Regular", size: 17))
                    .padding(.vertical)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            VStack(alignment: .leading){
                                Text("Best New Solutions")
                                    .multilineTextAlignment(.center)
                                    .font(Font.custom("PlayfairDisplay-Bold", size: 20))
                                Spacer()
                                Text("+")
                                    .padding(12)
                                    .foregroundColor(.white)
                                    .background(.black)
                                    .clipShape(Circle())
                                    .padding(20)
                                    .overlay(
                                        Circle()
                                            .trim(from: 0, to: 0.7)
                                            .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                                            .foregroundColor(.red)
                                            .rotationEffect(.degrees(-150))
                                    )
                                    .padding(30)
                                    .overlay(
                                        Circle()
                                            .trim(from: 0, to: 0.6)
                                            .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                            .foregroundColor(.blue)
                                            .rotationEffect(.degrees(50))
                                    )
                                    .padding()
                            }
                            .padding()
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .frame(width: 200, height: 300)
                            
                            VStack(alignment: .leading){
                                ZStack{
                                    Text("500")
                                        .font(Font.custom("PlayfairDisplay-Bold", size: 40))
                                    Text("+")
                                        .font(Font.custom("PlayfairDisplay-Bold", size: 25))
                                        .offset(x: 40, y: -10)
                                }.padding(.bottom)
                                
                                Text("Businesses already joined us!")
                                    .multilineTextAlignment(.leading)
                                    .font(Font.custom("PlayfairDisplay-Regular", size: 17))
                                Spacer()
                                ZStack{
                                    Image("memberPic")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .clipShape(Circle())
                                        .padding(4)
                                        .zIndex(2)
                                    Image("userProfilePic")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .clipShape(Circle())
                                        .padding(4)
                                        .offset(x: CGFloat(30), y: 0)
                                        .zIndex(1)
                                    Image("memberPic")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .clipShape(Circle())
                                        .padding(4)
                                        .offset(x: CGFloat(60), y: 0)
                                }
                                
                            }
                            .padding()
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .frame(width: 200, height: 300)
                            
                        }
                        .padding(.bottom, 30)
                    }
                    
                    ZStack(alignment: .bottom){
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [6]))
                        
                        NavigationLink(destination: HomeView()){
                            HStack{
                                Text("Get Started")
                                Image(systemName: "arrow.up")
                            }
                            .padding()
                            .frame(height: 50)
                            .foregroundColor(.white)
                            .background(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        
                        
                    }
                    
                }
                .padding(15)
            }
            .background(.gray.opacity(0.7))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//PlayfairDisplay-Regular
//== PlayfairDisplay-Bold
//== PlayfairDisplay-ExtraBold
//== PlayfairDisplay-Black
