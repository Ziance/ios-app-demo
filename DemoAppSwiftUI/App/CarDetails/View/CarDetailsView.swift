//
//  CarDetails.swift
//  Demo App UI
//
//  Created by ZT-9 on 03/12/24.
//

import SwiftUI

struct CarDetailsView: View {
    
    let detailModel: Car
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(16)
                .ignoresSafeArea()
            VStack() {
                CarHeader(image: Image(detailModel.image))
                HStack {
                    Text(detailModel.name)
                        .font(Font.custom("Inter-SemiBold", size: 24))
                        .foregroundColor(Color("clr_title_dark"))
                        .multilineTextAlignment(.leading)
                    Image("ic_badge", bundle: nil)
                    Spacer()
                    ZStack {
                        Color("clr_light_blue")
                            .frame(width: 80, height: 24)
                            .cornerRadius(12)
                        Text(detailModel.transmissionType)
                            .font(Font.custom("Inter-SemiBold", size: 12))
                            .foregroundColor(Color("clr_seconday_dark"))
                            .multilineTextAlignment(.leading)
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 40)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                Color("clr_border")
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                
                CarInfoView(details: detailModel)
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                PolicyInfoView(policyNo: detailModel.din, expDate: detailModel.expiryDate)
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                Spacer()
            }
        }
    }
}

#Preview {
    CarDetailsView(detailModel: Car(name: "Name", image: "Image", modelName: "Model", makeYear: "Year", transmissionType: "Automatic", fuelType: "Petrol", bodyType: "SUV", tuition: "1234 ABC", kilometers: "23000", din: "123654789", expiryDate: "01/01/2025"))
}


//MARK: - Car Header
struct CarHeader: View {
    let image: Image
    var body: some View {
        ZStack(alignment: .leading) {
            Color("clr_bg50")
                .cornerRadius(16)
            VStack {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                //TODO: - Add Carousel
                //
                Spacer()
            }
        }
        .frame(height: 265)
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 8, trailing: 16))
    }
}


//MARK: - Car Details
fileprivate struct CarInfoView: View {
    
    let details: Car
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Car Info")
                .font(Font.custom("Inter-Bold", size: 18))
                .foregroundColor(Color("clr_title_dark"))
                .multilineTextAlignment(.leading)
                .padding(.top, 16)
            HStack {
                HStack(alignment: .center) {
                    Image("ic_cal", bundle: nil)
                    VStack(alignment: .leading) {
                        Text("Year")
                            .font(Font.custom("Inter-Medium", size: 12))
                            .foregroundColor(Color("clr_title_light"))
                            .multilineTextAlignment(.leading)
                        Text(details.makeYear)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Color(.clear)
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                    }
                }
                Spacer(minLength: 16)
                HStack(alignment: .center) {
                    Image("ic_speedo", bundle: nil)
                    VStack(alignment: .leading) {
                        Text("Km")
                            .font(Font.custom("Inter-Medium", size: 12))
                            .foregroundColor(Color("clr_title_light"))
                            .multilineTextAlignment(.leading)
                        Text(details.kilometers)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Color(.clear)
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                    }
                }
            }
            
            //
            
            HStack {
                HStack(alignment: .center) {
                    Image("ic_fuel", bundle: nil)
                    VStack(alignment: .leading) {
                        Text("Fuel Type")
                            .font(Font.custom("Inter-Medium", size: 12))
                            .foregroundColor(Color("clr_title_light"))
                            .multilineTextAlignment(.leading)
                        Text(details.fuelType)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Color(.clear)
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                    }
                }
                Spacer(minLength: 16)
                HStack(alignment: .center) {
                    Image("ic_car", bundle: nil)
                    VStack(alignment: .leading) {
                        Text("Body Type")
                            .font(Font.custom("Inter-Medium", size: 12))
                            .foregroundColor(Color("clr_title_light"))
                            .multilineTextAlignment(.leading)
                        Text(details.bodyType)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Color(.clear)
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                    }
                }
            }
            
            //
            
            HStack {
                HStack(alignment: .center) {
                    Image("ic_gear", bundle: nil)
                    VStack(alignment: .leading) {
                        Text("Transmission")
                            .font(Font.custom("Inter-Medium", size: 12))
                            .foregroundColor(Color("clr_title_light"))
                            .multilineTextAlignment(.leading)
                        Text(details.transmissionType)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Color(.clear)
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                    }
                }
                Spacer(minLength: 16)
                HStack(alignment: .center) {
                    Image("ic_license", bundle: nil)
                    VStack(alignment: .leading) {
                        Text("Tuition")
                            .font(Font.custom("Inter-Medium", size: 12))
                            .foregroundColor(Color("clr_title_light"))
                            .multilineTextAlignment(.leading)
                        Text(details.tuition)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Color(.clear)
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                    }
                }
            }
            
        }
    }
}

//MARK: - Policy Details
fileprivate struct PolicyInfoView: View {
    
    let policyNo: String
    let expDate: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Policy Details")
                .font(Font.custom("Inter-Bold", size: 18))
                .foregroundColor(Color("clr_title_dark"))
                .multilineTextAlignment(.leading)
                .padding(.top, 16)
                .padding(.bottom, 10)
            HStack {
                VStack(alignment: .leading) {
                    Text("DNI No.")
                        .font(Font.custom("Inter-Medium", size: 12))
                        .foregroundColor(Color("clr_title_light"))
                        .multilineTextAlignment(.leading)
                    Text(policyNo)
                        .font(Font.custom("Inter-SemiBold", size: 15))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    Color(.clear)
                        .frame(maxWidth: .infinity)
                        .frame(height: 1)
                }
                Spacer(minLength: 16)
                VStack(alignment: .leading) {
                    Text("Expiry Date")
                        .font(Font.custom("Inter-Medium", size: 12))
                        .foregroundColor(Color("clr_title_light"))
                        .multilineTextAlignment(.leading)
                    Text(expDate)
                        .font(Font.custom("Inter-SemiBold", size: 15))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    Color(.clear)
                        .frame(maxWidth: .infinity)
                        .frame(height: 1)
                }
            }
        }
    }
}
