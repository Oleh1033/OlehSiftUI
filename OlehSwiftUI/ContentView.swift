//
//  ContentView.swift
//  OlehSwiftUI
//
//  Created by Oleh Boburchak on 13/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .yellow]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Katowice")
                    .font(.system(size: 24, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 20) {
                    Image(systemName: "sun.dust.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .bottom)
                    Text("76")
                        .font(.system(size: 60, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack(spacing: 10) {
                    WeatherDayView(dayOfWeek: "Mon", imageName: "sun.dust.fill", temperature: 23)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "sun.dust.fill", temperature: 13)
                    WeatherDayView(dayOfWeek: "Wen", imageName: "sun.dust.fill", temperature: 24)
                    WeatherDayView(dayOfWeek: "Thu", imageName: "sun.dust.fill", temperature: 15)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "sun.dust.fill", temperature: 13)
                    WeatherDayView(dayOfWeek: "Sat", imageName: "sun.dust.fill", temperature: 24)
                    WeatherDayView(dayOfWeek: "Sun", imageName: "sun.dust.fill", temperature: 15)
                }
                Spacer()
                
                Button {
                   print("1")
                } label: {
                    Text("Change day")
                        .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .bottom)
            Text("\(temperature)")
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
