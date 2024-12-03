//
//  ProfileView.swift
//  Demo App UI
//
//  Created by ZT-9 on 03/12/24.
//

import SwiftUI

struct ProfileView: View {
    
    @Environment(\.presentationMode) var presendationMode
    
    var body: some View {
        ZStack {
            Color("clr_bg_theme", bundle: nil)
                .ignoresSafeArea()
            VStack() {
                //MARK: - Header View
                HStack {
                    Button {
                        presendationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Image("ic_back", bundle: nil)
                        }
                        .frame(width: 56, height: 56)
                    }

                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("My Profile")
                            .font(Font.custom("Inter-Bold", size: 20))
                            .foregroundColor(Color("clr_title_dark"))
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                    HStack {
                        Image("ic_edit", bundle: nil)
                    }
                    .frame(width: 56, height: 56)
                }
                .frame(maxWidth:.infinity)
                .frame(height: 56)
                UserNameView()
                ScrollView {
                    UserDetailsView()
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    PasswordView()
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    ButtonView()
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                }
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ProfileView()
}

//MARK: - User Name View
struct UserNameView: View {
    var body: some View {
        HStack(spacing: 10) {
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
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 3) {
                    Text("Juan")
                        .font(Font.custom("Inter-Bold", size: 26))
                        .foregroundColor(Color("clr_title_dark"))
                        .multilineTextAlignment(.leading)
                    Text("Deotogilotaux")
                        .font(Font.custom("Inter-Regular", size: 26))
                        .foregroundColor(Color("clr_title_dark"))
                        .multilineTextAlignment(.leading)
                }
                HStack {
                    Text("johndoe@gmail.com")
                        .font(Font.custom("Inter-Medium", size: 15))
                        .foregroundColor(Color("clr_primary_light"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }
        }
    }
}

//MARK: - User Details View
struct UserDetailsView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.white
                    .cornerRadius(16)
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Telephone")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("+34 125-6589")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                        Spacer(minLength: 16)
                        VStack(alignment: .leading) {
                            Text("Date of Birth")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("15/08/1991")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 51)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
                    
                    //Address
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Address")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("Alcon Molina 49 Puerto Lumbreras, Murcia 30890")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                            //                            .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 51)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
                    
                    //
                    HStack {
                        VStack(alignment: .leading) {
                            Text("DNI No.")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("8 Digit no.")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                        Spacer(minLength: 16)
                        VStack(alignment: .leading) {
                            Text("Expiry Date")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("dd/mm/yyyy")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 51)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
                    
                    //
                    HStack {
                        VStack(alignment: .leading) {
                            Text("License No.")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("8 Digit no.")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                        Spacer(minLength: 16)
                        VStack(alignment: .leading) {
                            Text("Expiry Date")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("dd/mm/yyyy")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 51)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
                    
                    //Billing Address
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Billing Address")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("Alcon Molina 49 Puerto Lumbreras, Murcia 30890")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 51)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Policy No.")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("no. of policy")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                        Spacer(minLength: 16)
                        VStack(alignment: .leading) {
                            Text("Expiry Date")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("dd/mm/yyyy")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 51)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
                    
                    //Address
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Type of Purchase")
                                .font(Font.custom("Inter-Medium", size: 12))
                                .foregroundColor(Color("clr_title_light"))
                                .multilineTextAlignment(.leading)
                            Text("Financing and entity")
                                .font(Font.custom("Inter-Medium", size: 15))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Color("clr_border")
                                .frame(maxWidth: .infinity)
                                .frame(height: 1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 51)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 16, trailing: 16))
                }
            }
        }
    }
}

//MARK: - Password View
struct PasswordView: View {
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(16)
            //Address
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text("Password")
                        .font(Font.custom("Inter-Medium", size: 12))
                        .foregroundColor(Color("clr_title_light"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Text("**********")
                        .font(Font.custom("Inter-Medium", size: 15))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
                Text("Change")
                    .font(Font.custom("Inter-Bold", size: 15))
                    .foregroundColor(Color("clr_primary_light"))
                    .multilineTextAlignment(.leading)
                
            }
            .frame(maxWidth: .infinity)
            .padding(16)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 75)
    }
}

//MARK: - Button View
struct ButtonView: View {
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(16)
            Text("Delete Account")
                .font(Font.custom("Inter-Medium", size: 15))
                .foregroundColor(Color("clr_red"))
                .multilineTextAlignment(.leading)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 56)
    }
}
