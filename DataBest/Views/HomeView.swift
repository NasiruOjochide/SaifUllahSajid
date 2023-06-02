//
//  HomeView.swift
//  DataBest
//
//  Created by Danjuma Nasiru on 31/05/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            Dashboard()
                .tabItem{
                    Image(systemName: "house")
                }
            
            ChartsView()
                .tabItem{
                    Image(systemName: "chart.bar.xaxis")
                }
            
            SettingsView()
                .tabItem{
                    Image(systemName: "gearshape.fill")
                }
        }.navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
