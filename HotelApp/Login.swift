//
//  Login.swift
//  HotelApp
//
//  Created by Sumaya Alzahrani on 16/11/1444 AH.
//

import SwiftUI

struct Login: View {
    var body: some View {
       
        ScrollView{
            VStack{
                HStack{
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color 1"))
                        .padding(.top,30)
                        .padding(.bottom, 10)
                        .padding(.leading, 20)
                    
                    Spacer()
                    
                }
                Spacer()
                
                ZStack{
                    
                    Image("image 28")
                        .resizable()
                        .frame(width: 184, height:184)
                    Image("HotelLogin")
                        .resizable()
                        .opacity(0.7 )
                        .frame(width:390 ,height: 290)
                }
                
                
                
                HStack{
                    Text("Email")
                        .padding(.leading, 20)
                    Spacer()
                    
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Color 2"), lineWidth: 1)
                    
                        .frame(width: 358, height: 52)
                    
                    TextField("Enter Your Email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 40)
                }.padding(.bottom, 16)
                
                Spacer()
                HStack{
                    Text("Password")
                        .padding(.leading, 20)
                    Spacer()
                    
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Color 2"), lineWidth: 1)
                    
                        .frame(width: 358, height: 52)
                    
                    TextField("Enter Your Passowrd", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        
                    
                        .padding(.leading, 40)
                }.padding(.bottom, 16)
                
                ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("Color"))
                    .frame(width: 191, height: 47)
                    .shadow(color: Color(red: 0.5647, green: 0.5647, blue: 0.5647).opacity(0.5), radius: 4, x: 0, y: 2)
                
                    Text("Login")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                    
                }.padding(.top, 40)
                
            }//bigvstack
        }
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
