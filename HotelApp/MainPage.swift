//
//  MainPage.swift
//  HotelApp
//
//  Created by Khulood Alhamed on 27/05/2023.
//

import SwiftUI

struct MainPage: View {
    @State var selected = 1
    //    init() {
    //        UISegmentedControl.appearance().selectedSegmentTintColor = .blue
    //    }
    var body: some View {
        NavigationView{
            
            
            VStack{
                Picker(selection: $selected, label: Text("Picker"), content:{
                    Text("Pending").tag(1)
                    Text("Reviewd").tag(2)
                }).pickerStyle(SegmentedPickerStyle()).foregroundColor(Color("SegColor"))
                    .frame(width: 340)
                
                
                //Pending Card
                if selected == 1 {
                    
                    NavigationLink {
                       reviewed()
                    } label: {
                        
                        HStack{
                            Text("Sara Ali")
                                .padding(.leading, 20)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .padding(.horizontal)
                            
                        }.frame(width: 358, height: 56)
                            .foregroundColor(.black)
                            .background(Color("NameBtn"))
                            .cornerRadius(10)
                            .padding(.top, 25)
                        
                    }
                }
                
                else {
                    
                    //Reviewd Card
                    
                    
                    ZStack(alignment: .leading){
                        
                        
                        
                        RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            .frame(width: 360, height: 175)
                        
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.2), lineWidth: 1)
                                    .frame(width: 105, height: 103)
                                Image("hotel1")
                                    .resizable()
                                    .frame(width: 95, height: 95)
                                
                            }.padding(.leading, 10)
                            
                            VStack(alignment: .leading){
                                
                                // Name
                                Text("Khiled Ahmed")
                                // Phone number
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 20, height: 20)
                                            .cornerRadius(4)
                                            .foregroundColor(Color("iconColor"))
                                        Image(systemName: "phone")
                                            .font(.system(size: 13))
                                            .foregroundColor(.white)
                                    }
                                    Text("+96600000000")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 15))
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.75)
                                    
                                }
                                // Reservation Code
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 20, height: 20)
                                            .cornerRadius(4)
                                            .foregroundColor(Color("iconColor"))
                                        Image(systemName: "barcode.viewfinder")
                                            .font(.system(size: 13))
                                            .foregroundColor(.white)
                                    }
                                    Text("xr006")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 15))
                                    
                                    
                                }
                                // Check-in date
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 20, height: 20)
                                            .cornerRadius(4)
                                            .foregroundColor(Color("iconColor"))
                                        Image(systemName: "calendar")
                                            .font(.system(size: 13))
                                            .foregroundColor(.white)
                                    }
                                    Text("10 May 2023")
                                        .font(.system(size: 15))
                                        .foregroundColor(.gray)
                                }
                                
                                
                            }.padding(.leading, 1)
                            ZStack{
                                Rectangle()
                                
                                    .frame(width: 70, height: 23)
                                    .cornerRadius(15)
                                    .foregroundColor(Color("RejectColor"))
                                Text("Rejected")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .semibold))
                            }.padding(.leading, 10)
                                .padding(.bottom, 120)
                               
                            
                        }
                        
                    }.padding(.top, 20)
                    
                }
                
                
                Spacer()
            }.navigationTitle("Explore")
        }
        
    }
    
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
