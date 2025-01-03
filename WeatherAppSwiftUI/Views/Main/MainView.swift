//
//  MainView.swift
//  WeatherAppSwiftUI
//
//  Created by Evren Yaşar on 3.01.2020.
//  Copyright © 2020 Evren Yaşar. All rights reserved.
//

import SwiftUI
import VWO_Insights

struct MainView: View {
    
    private var viewModel = MainViewVM()
    @State var inputText: String = ""
    @State var showingDayList = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.topColor,.centerColor,.bottomColor]),
                               startPoint: .topLeading,
                               endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 140){
                    Text("Weather App")
                        .foregroundColor(Color.white)
                        .font(Font.system(size: 50))
                        .VWOhideView()
                    
                    HStack {
                        TextField("What is weather in Istanbul?", text: $inputText)
                            .frame(width: 360, height: 40, alignment:.center)
                            .fixedSize()
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        NavigationLink(destination: DayList()) {
                                                   Image(systemName: "magnifyingglass")
                                                       .font(.largeTitle)
                                                       .foregroundColor(.white)
                                               }
//                        Button(action: {
//                            self.showingDayList.toggle()
//                        }) {
//                            Image(systemName: "magnifyingglass")
//                                .font(.largeTitle)
//                                .foregroundColor(.white)
//                        }
                    }
                    
                    
                    Spacer()
                }
                
                .padding(.top, 150.0)
                .vwoTagScreenName(screenName : "main View")
                
            } .navigationBarHidden(true)
//            .sheet(isPresented: $showingDayList) {
//                DayList()
//            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
