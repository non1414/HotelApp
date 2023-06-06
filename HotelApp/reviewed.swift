
//  Reviewed.swift
//  HotelApp
//
//  Created by Afnan on 05/06/2023.
//

import SwiftUI

struct reviewed: View {
    
    @State private var isPresented = false
    
    @State private var fullName = "Afnan Mohammed Alhabi"
    @State private var phoneNumber = "0582656994"
    @State private var reservationCode = "11xcrk4"
    @State private var idNumber = "11058456935"
    @State private var expDate = Date()
    @State private var date = "20-04-2023"
    
    @State private var showingCredits = false
    var body: some View {
        Button("Show Sheet") {
            isPresented = true
        }
        .sheet(isPresented: $isPresented, onDismiss: {
            // Cells
        }) {
            VStack {
                VStack{
                    VStack{
                        ZStack(alignment: .top) {
                            VStack{
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        isPresented = false
                                    }) {
                                        Image(systemName: "xmark.circle")
                                            .font(.title)
                                            .foregroundColor(.gray)
                                        // .padding(.top, 100)
                                    }
                                }
                                .padding()
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(maxWidth: 358, maxHeight: 545)
                                    .border(Color("gryStroke"))
                                    .cornerRadius(12)
                                //.stroke(Color.gray, lineWidth: 1)
                                
                            }.padding(.top, 130)
                                .border(Color("gryStroke"))
                            // for the icon in the top of the rectangle
                            VStack{
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 60, height: 60)
                                            .cornerRadius(6)
                                            .foregroundColor(Color("brownBackground"))
                                        Image(systemName: "doc.text")
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                    }
                                }.padding(.top,170)
                            }
                            
                            VStack{
                                Text("Guess Information")
                                    .font(.system(size: 17, weight: .medium))
                            }.padding(.top,280)
                            
                            VStack{
                                List {
                                    HStack{
                                        ZStack{
                                            Rectangle().frame(width: 34, height: 34)
                                                .cornerRadius(6)
                                                .foregroundColor(Color("greyBackground"))
                                            Image(systemName: "person")
                                                .font(.system(size: 18))
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                        Text(fullName)
                                            .font(.system(size: 17, weight: .regular))
                                    }
                                    HStack{
                                        ZStack{
                                            Rectangle().frame(width: 34, height: 34)
                                                .cornerRadius(6)
                                                .foregroundColor(Color("greyBackground"))
                                            Image(systemName: "phone")
                                                .font(.system(size: 18))
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                        Text(phoneNumber)
                                            .font(.system(size: 17, weight: .regular))
                                    }
                                    HStack{
                                        ZStack{
                                            Rectangle().frame(width: 34, height: 34)
                                                .cornerRadius(6)
                                                .foregroundColor(Color("greyBackground"))
                                            Image(systemName: "barcode.viewfinder")
                                                .font(.system(size: 18))
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                        Text(reservationCode)
                                            .font(.system(size: 17, weight: .regular))
                                    }
                                    HStack{
                                        ZStack{
                                            Rectangle().frame(width: 34, height: 34)
                                                .cornerRadius(6)
                                                .foregroundColor(Color("greyBackground"))
                                            Image(systemName: "folder.badge.person.crop")
                                                .font(.system(size: 18))
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                        Text(idNumber)
                                            .font(.system(size: 17, weight: .regular))
                                    }
                                    HStack{
                                        ZStack{
                                            Rectangle().frame(width: 34, height: 34)
                                                .cornerRadius(6)
                                                .foregroundColor(Color("greyBackground"))
                                            Image(systemName: "calendar")
                                                .font(.system(size: 18))
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                        Text(date)
                                            .font(.system(size: 17, weight: .regular))
                                    }
                                    HStack{
                                        ZStack{
                                            Rectangle().frame(width: 34, height: 34)
                                                .cornerRadius(6)
                                                .foregroundColor(Color("greyBackground"))
                                            Image(systemName: "camera")
                                                .font(.system(size: 18))
                                                .foregroundColor(.white)
                                        }.padding(.bottom, 120)
                                        
                                        VStack{
                                            
                                        }.frame(width: 267, height: 120.11)
                                            .background(Color("imageContainerBackground"))
                                            .cornerRadius(8.64)
                                        
                                    }
                                }  .frame(height: 600, alignment: .bottom)
                                    .padding(.top, 190)
                                    .scrollContentBackground(.hidden)
                                
                            }.padding(.top,120)
                            // .frame(width: 358, height: 600)
                                .padding(.bottom, 23)
                        }
                    }
                    
                }
            }
        }
    }
}

struct reviewed_Previews: PreviewProvider {
    static var previews: some View {
        reviewed()
    }
}
