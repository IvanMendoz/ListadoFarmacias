//
//  ContentView.swift
//  ProyectoFinal
//
//  Created by Gaby on 11/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var username:String = ""
    @State var password:String = ""
    
    var body: some View {
        VStack{
            VStack {
                Image("InicioSesion")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.top, 20)
            Spacer()
            VStack{
                VStack(alignment: .leading) {
                    Text("Usuario")
                        .foregroundColor(colorBlanco)
                        .font(.system(size: 16, weight: .bold))
                    VStack {
                        TextField(
                                "User name (email address)",
                                text: $username
                        )
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    }
                    .overlay(Rectangle().stroke(colorBlanco, lineWidth: 1))
                }
                VStack(alignment: .leading) {
                    Text("Contraseña")
                        .foregroundColor(colorBlanco)
                        .font(.system(size: 16, weight: .bold))
                    VStack {
                        SecureField(
                                "***********",
                                text: $password
                        )
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    }
                    
                    .overlay(Rectangle().stroke(colorBlanco, lineWidth: 1))
                }
                Button(action: {}, label: {
                    Text("Iniciar Sesion")
                        .bold()
                })
                .padding(.vertical, 10)
                .padding(.horizontal, 90)
                .background(colorBotonPrincipal)
                .foregroundColor(colorBlanco)
                .cornerRadius(5)
                
                Text("¿Olvidas tu contraseña?")
                    .foregroundColor(colorBlanco)
                    .font(.system(size: 14, weight: .semibold))

                Spacer()
                
                Text("¿Aún no posees una cuenta?")
                    .foregroundColor(colorBlanco)
                    .font(.system(size: 14, weight: .semibold))
                Button(action: {}, label: {
                    Text("Registrate")
                        .bold()
                })
                
                .padding(.vertical, 10)
                .padding(.horizontal, 99)
                .background(colorBotonSecundario)
                .foregroundColor(colorBotonPrincipal)
                .cornerRadius(5)
                
                Spacer()
            }
            .frame(maxWidth: (UIScreen.main.bounds.width / 1.1))
            
            Spacer()
            
        }
        .ignoresSafeArea()
        .frame(minWidth:
                (UIScreen.main.bounds.width))
        .background(colorFondoPrincipal)
        .padding(.top, 0)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
