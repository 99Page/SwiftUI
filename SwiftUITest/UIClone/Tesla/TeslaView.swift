//
//  TeslaView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/09.
//  Cloning from : https://www.youtube.com/watch?v=QG4fdzAh3Mo&t=949s

import SwiftUI

struct TeslaView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    fileprivate func TeslaDivider() -> some View {
        return Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray)
            .padding(.bottom, 7)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    TeslaDivider()
                    TeslaVehicleDrivingInfo()
                    
                    Image("TeslaCar")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(0.6, contentMode: .fit)
                    
                    TeslaDivider()
                    
                    VStack {
                        HStack {
                            Text("Quick Shortcuts")
                                .font(.system(size: 20, weight: .bold))
                            Spacer()
                            Text("Edit")
                                .font(.system(size: 15, weight: .medium))
                                .foregroundColor(.gray)
                        }
                    }
                    
                }
                .padding()
                .foregroundColor(.white)
                .frame(width: MAX_WIDTH)
            }
            .background(Color.TeslaBlack)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) { TeslaNavigationBarLeading()}
                ToolbarItemGroup(placement: .navigationBarTrailing) { TeslaNavigationBarTrailiing }
            }
        }
        .overlay { TeslaMicView() }
        .navigationBarHidden(true)
    }
    
    var TeslaNavigationBarTrailiing: some View {
        HStack {
            Image(systemName: "lock.fill")
                .padding(6)
                .background(Color.gray)
                .clipShape(Circle())
            
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "gear")
                    .padding(6)
                    .background(Color.gray)
                    .clipShape(Circle())
            }
        }
        .padding(.top, 20)
        .foregroundColor(.white)
    }
}

struct TeslaVehicleDrivingInfo: View {
    var body: some View {
        HStack {
            Image(systemName: "battery.75")
                .foregroundColor(.TeslaGreen)
            Text("237 MILES")
                .font(.system(size: 16))
                .foregroundColor(.TeslaGreen)
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("Parked")
                    .font(.system(size: 19, weight: .semibold))
                Text("Last updated 5min ago")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
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
                    .background(Color.TeslaGreen)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

struct TeslaView_Previews: PreviewProvider {
    static var previews: some View {
        TeslaView()
    }
}
