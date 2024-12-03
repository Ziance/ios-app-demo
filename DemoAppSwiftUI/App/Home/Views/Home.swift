//
//  Home.swift
//  Demo App UI
//
//  Created by ZT-9 on 03/12/24.
//

import SwiftUI

struct Home: View {
    @StateObject private var viewModel = CarsViewModel()
    @State var showCarDetails = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("clr_bg_theme", bundle: nil)
                    .ignoresSafeArea()
                VStack() {
                    //MARK: - Header View
                    HStack {
                        NavigationLink(destination: ProfileView()) {
                            HStack {
                                Spacer()
                                ZStack {
                                    Color("clr_primary_dark", bundle: nil)
                                        .cornerRadius(12)
                                    Image("ic_profile", bundle: nil)
                                }
                                .frame(width: 36, height: 36)
                            }
                            .frame(width: 56, height: 56)
                        }
                        Spacer()
                        VStack(alignment: .leading, spacing: 0) {
                            Text("John Doe")
                                .font(Font.custom("Inter-Bold", size: 18))
                                .foregroundColor(Color("clr_title_dark"))
                                .multilineTextAlignment(.leading)
                            HStack {
                                Text("Alcon Molina 49")
                                    .font(Font.custom("Inter-Medium", size: 12))
                                    .foregroundColor(Color("clr_title_light"))
                                    .multilineTextAlignment(.leading)
                                Image("ic_dp_down", bundle: nil)
                                Spacer()
                            }
                        }
                        Spacer()
                        HStack {
                            Image("ic_bell", bundle: nil)
                        }
                        .frame(width: 56, height: 56)
                    }
                    .frame(maxWidth:.infinity)
                    .frame(height: 56)
                    //
                    
                    EventView()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("My cars")
                            .font(Font.custom("Inter-Bold", size: 18))
                            .foregroundColor(Color("clr_title_dark"))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 16)
                            .padding(.top, 16)
                        List(viewModel.carDatasource) { car in
                            Button {
                                self.viewModel.selectedCar = car
                                self.showCarDetails = true
                            } label: {
                                CarListItemView(item: car)
                            }
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                        }
                        .listStyle(.plain)
                        .background(Color.clear)
                    }
                    Spacer()
                }
            }
        }
        .sheet(isPresented: $showCarDetails, onDismiss: {
            self.showCarDetails = false
        }, content: {
            CarDetailsView(detailModel: self.viewModel.selectedCar)
        })
        .navigationBarHidden(true)
    }
}

#Preview {
    Home()
}

//MARK: - Event View
struct EventView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image("ic_banner_bg", bundle: nil)
                .resizable()
            VStack(alignment: .leading) {
                Text("Upcoming Appointment")
                    .font(Font.custom("Inter-Bold", size: 13))
                    .foregroundColor(Color("clr_light_blue"))
                    .multilineTextAlignment(.leading)
                HStack {
                    ZStack {
                        Color("clr_light_blue", bundle: nil)
                            .cornerRadius(8)
                        VStack(alignment: .center) {
                            Text("30")
                                .font(Font.custom("Inter-Bold", size: 18))
                                .foregroundColor(Color("clr_seconday_dark"))
                            Text("SEPT")
                                .font(Font.custom("Inter-SemiBold", size: 10))
                                .foregroundColor(Color("clr_seconday_dark"))
                        }
                    }
                    .frame(width: 48, height: 48)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Regular Car wash")
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                        Text("Saturday | Peugeot 3008")
                            .font(Font.custom("Inter-Medium", size: 12))
                            .foregroundColor(Color("clr_bg200"))
                            .multilineTextAlignment(.leading)
                    }
                }
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        }
        .frame(maxWidth: .infinity)
        .frame(height: 95)
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}


//MARK: - Car List View
struct CarListItemView: View {
    
    let item: Car
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(16)
            VStack {
                ZStack(alignment: .leading) {
                    Color("clr_bg50")
                        .cornerRadius(16)
                    Image(item.image, bundle: nil)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                }
                .frame(height: 130)
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 8, trailing: 16))
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text(item.name)
                                .font(Font.custom("Inter-SemiBold", size: 15))
                                .foregroundColor(Color("clr_title_dark"))
                                .multilineTextAlignment(.leading)
                            Spacer()
                            ZStack {
                                Color("clr_light_blue")
                                    .frame(width: 80, height: 24)
                                    .cornerRadius(12)
                                Text(item.transmissionType)
                                    .font(Font.custom("Inter-SemiBold", size: 12))
                                    .foregroundColor(Color("clr_seconday_dark"))
                                    .multilineTextAlignment(.leading)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(item.modelName)
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color("clr_seconday_dark"))
                                .multilineTextAlignment(.leading)
                            Text("\(item.fuelType) | \(item.makeYear)")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_bg200"))
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 16, trailing: 16))
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 248)
//        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
    }
}
