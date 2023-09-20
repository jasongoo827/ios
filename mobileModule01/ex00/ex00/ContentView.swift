//
//  ContentView.swift
//  ex00
//
//  Created by 구재우 on 2023/09/15.
//

import SwiftUI


struct ContentView: View {
    @State var showMenu = false
    @StateObject var locationDataManager = LocationDataManger()
    var body: some View {
        ZStack{
            switch locationDataManager.locationManager.authorizationStatus{
            case .authorizedWhenInUse:
                GeometryReader { geometry in
                    let width = geometry.size.width
                    let height = geometry.size.height
                    NavView(showMenu: self.$showMenu)
                        .frame(width: width, height: height)
                        .offset(x: self.showMenu ? width / 1.5 : 0)
                }
                .background(Color.white)
                .edgesIgnoringSafeArea(.all)
                Text("Current location")
            case .restricted, .denied:
                Text("Current location data was restricted or denied.")
            case .notDetermined:
                Text("Finding your location")
            default:
                Text("yeah")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
