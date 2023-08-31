//
//  ContentView.swift
//  RampCodingChallenge
//
//  Created by Arnold Lee on 2023/6/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Circle()
                        .frame(width: 30, height: 30)
                    Spacer()
                    Circle()
                        .frame(width: 30, height: 30)
                    Spacer()
                }
                .padding([.leading, .trailing], 100)
                .padding([.bottom], 70)
            }
            Smile()
            Circle()
                .inset(by: 8)
                .stroke(.teal, lineWidth: 16)
                .frame(width: 300, height: 300)
        }
    }
}

struct Smile : Shape {
    func path(in rect: CGRect) -> Path {
        var p = Path()
        
        p.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: 100, startAngle: .degrees(0), endAngle: .degrees(180), clockwise: false)

        return p.strokedPath(.init(lineWidth: 16))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
