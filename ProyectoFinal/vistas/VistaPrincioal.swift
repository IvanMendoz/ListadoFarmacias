//
//  VistaPrincioal.swift
//  ProyectoFinal
//
//  Created by Gaby on 11/11/23.
//

import SwiftUI

struct VistaPrincioal: View {
    
    @State var buscar:String = ""
    
    var body: some View {
        // CONTENEDOR PRINCIPAL
        VStack{
            // SCROLL
            ScrollView(.vertical, showsIndicators: false){
                // CONTENEDOR 2
                VStack (alignment: .leading) {
                    // HEADER
                    VStack(alignment: .leading) {
                        // LOGO
                        HStack{
                            Image("LogoFarmacia")
                        }
                        
                        // USUARIO
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        
                        // USUARIO ACTIVO
                        Text("Bienvenido: @Landaverde")
                            .font(.system(size: 13, weight: .semibold))
                        
                    }
                    .frame(minWidth:
                            (UIScreen.main.bounds.width))
                    .background(colorEncabezado)
                    
                    VStack {
                        TextField(
                                "Buscar...",
                                text: $buscar
                        )
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .keyboardType(.emailAddress)
                        .background(colorImput)
                        .foregroundColor(colorNegro)
                    }
                    
                    Text("dfvdfvdf")
                }
                .padding(.top, 20)
                .frame(minWidth:
                        (UIScreen.main.bounds.width))
                
            }
            .frame(minWidth:
                        (UIScreen.main.bounds.width))
            
        }
        .ignoresSafeArea()
        .frame(minWidth:
                (UIScreen.main.bounds.width))
        .background(colorImput)
        .padding(.top, 0)
    }
}

struct VistaPrincioal_Previews: PreviewProvider {
    static var previews: some View {
        VistaPrincioal()
    }
}
