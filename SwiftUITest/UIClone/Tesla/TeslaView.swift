//
//  TeslaView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/09.
//

import SwiftUI

struct TeslaView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                    TeslaVehicleDrivingInfo()
                }
                .padding()
                .foregroundColor(.white)
                .frame(width: MAX_WIDTH)
            }
            .background(.black)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) { TeslaNavigationBarLeading()}
                ToolbarItemGroup(placement: .navigationBarTrailing) { TeslaNavigationBarTrailing()}
            }
        }
        .overlay { TeslaMicView() }
    }
}

struct TeslaVehicleDrivingInfo: View {
    var body: some View {
        HStack {
            Image(systemName: "battery.75")
            Text("237 MILES")
                .font(.system(size: 16))
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("Parked")
                    .font(.system(size: 19, weight: .semibold))
                Text("Last updated 5min ago")
                    .font(.system(size: 14))
            }
        }
    }
}
struct TeslaNavigationBarLeading: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text("Model 3")
                .padding(.horizontal, 10)
                .padding(.vertical, 3)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Capsule())
            Text("March Five")
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .bold))
        }
        .padding(.top, 20)
    }
}
struct TeslaNavigationBarTrailing: View {
    var body: some View {
        HStack {
            Image(systemName: "lock")
                .padding(6)
                .background(Color.gray)
                .clipShape(Circle())
            Image(systemName: "gear")
                .padding(6)
                .background(Color.gray)
                .clipShape(Circle())
        }
        .padding(.top, 20)
        .foregroundColor(.white)
    }
}

struct TeslaMicView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Image(systemName: "mic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: MAX_WIDTH * 0.1, height: MAX_WIDTH * 0.1)
                    .padding()
                    .background(Color.green)
                    .clipShape(Circle())
            }
        }
    }
}

struct TeslaView_Previews: PreviewProvider {
    static var previews: some View {
        TeslaView()
    }
}
