//
//  CreacionCuenta.swift
//  ProyectoFinal
//
//  Created by Gaby on 11/7/23.
//

import SwiftUI

struct CreacionCuenta: View {
    
    @State var nombres:String = ""
    @State var apellidos:String = ""
    @State var edad:String = ""
    @State var correo:String = ""
    @State var pass:String = ""
    @State var confirmacionPass:String = ""
    
    var body: some View {
        VStack {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                VStack {
                    Image("CreacionCuenta")
                        .resizable()
                        .scaledToFit()
                }
                .padding(.top, 20)
                Spacer()
                VStack {
                    VStack{
                        
                        // NOMBRES
                        VStack(alignment: .leading) {
                            Text("Nombres")
                                .foregroundColor(colorNegro)
                                .font(.system(size: 16, weight: .bold))
                            VStack {
                                TextField(
                                        "Nombres",
                                        text: $nombres
                                )
                                .padding(.horizontal, 10)
                                .padding(.vertical, 10)
                                .background(colorImput)
                                .foregroundColor(colorNegro)
                            }
                            .overlay(Rectangle().stroke(colorBlanco, lineWidth: 1))
                        }
                        .padding(.bottom, 10)
                        
                        // APELLIDOS
                        VStack(alignment: .leading) {
                            Text("Apellidos")
                                .foregroundColor(colorNegro)
                                .font(.system(size: 16, weight: .bold))
                            VStack {
                                SecureField(
                                        "Apellidos",
                                        text: $apellidos
                                )
                                .padding(.horizontal, 10)
                                .padding(.vertical, 10)
                                .background(colorImput)
                                .foregroundColor(colorNegro)
                            }
                            
                            .overlay(Rectangle().stroke(colorBlanco, lineWidth: 1))
                        }
                        .padding(.bottom, 10)
                        
                        // EDAD
                        VStack(alignment: .leading) {
                            Text("Edad")
                                .foregroundColor(colorNegro)
                                .font(.system(size: 16, weight: .bold))
                            VStack {
                                TextField(
                                        "25",
                                        text: $edad
                                )
                                .padding(.horizontal, 10)
                                .padding(.vertical, 10)
                                .background(colorImput)
                                .foregroundColor(colorNegro)
                            }
                            .overlay(Rectangle().stroke(colorBlanco, lineWidth: 1))
                        }
                        .padding(.bottom, 10)
                        
                        // CORREO
                        VStack(alignment: .leading) {
                            Text("Correo")
                                .foregroundColor(colorNegro)
                                .font(.system(size: 16, weight: .bold))
                            VStack {
                                TextField(
                                        "ejemplo@gmail.com",
                                        text: $correo
                                )
                                .padding(.horizontal, 10)
                                .padding(.vertical, 10)
                                .keyboardType(.emailAddress)
                                .background(colorImput)
                                .foregroundColor(colorNegro)
                            }
                            .overlay(Rectangle().stroke(colorBlanco, lineWidth: 1))
                        }
                        .padding(.bottom, 10)
                        
                        // CONTRASEÑA
                        VStack(alignment: .leading) {
                            Text("Contraseña")
                                .foregroundColor(colorNegro)
                                .font(.system(size: 16, weight: .bold))
                            VStack {
                                TextField(
                                        "******",
                                        text: $pass
                                )
                                .padding(.horizontal, 10)
                                .padding(.vertical, 10)
                                .background(colorImput)
                                .foregroundColor(colorNegro)
                            }
                            .overlay(Rectangle().stroke(colorBlanco, lineWidth: 1))
                        }
                        .padding(.bottom, 10)
                        
                        // CONFIRMACION CONTRASEÑA
                        VStack(alignment: .leading) {
                            Text("Confirmación contraseña")
                                .foregroundColor(colorNegro)
                                .font(.system(size: 16, weight: .bold))
                            VStack {
                                TextField(
                                        "******",
                                        text: $confirmacionPass
                                )
                                .padding(.horizontal, 10)
                                .padding(.vertical, 10)
                                .background(colorImput)
                                .foregroundColor(colorNegro)
                            }
                            .overlay(Rectangle().stroke(colorBlanco, lineWidth: 1))
                        }
                        .padding(.bottom, 10)
                        
                        
                        Button(action: {}, label: {
                            Text("Registrarse")
                                .bold()
                        })
                        .padding(.vertical, 10)
                        .padding(.horizontal, 90)
                        .background(colorFondoPrincipal)
                        .foregroundColor(colorBlanco)
                        .cornerRadius(5)
                        
                        Spacer()
                    }
                    .frame(maxWidth: (UIScreen.main.bounds.width / 1.11))
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                    
                }
                .frame(maxWidth: (UIScreen.main.bounds.width / 1))
                .background(colorGris)
                .cornerRadius(20)
                .padding(.top, 15)

                
                Spacer()
            }
            .ignoresSafeArea()
            .frame(minWidth:
                    (UIScreen.main.bounds.width))
            .background(colorFondoPrincipal)
            .padding(.vertical, 0)
        }
        .padding(.bottom, 0)
    }
}

struct CreacionCuenta_Previews: PreviewProvider {
    static var previews: some View {
        CreacionCuenta()
    }
}
