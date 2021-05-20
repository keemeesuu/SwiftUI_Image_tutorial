//
//  CircleImageView.swift
//  Image_tutorial
//
//  Created by hogy on 2021/05/20.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        /*
        Image(systemName: "flame.fill")
            .font(.system(size: 200))
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .shadow(color: .red, radius: 0, x: 10, y: 10.0)
         */
        Image("myImage")
        .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
            .overlay(
                Circle().foregroundColor(.black)
                    .opacity(0.6)
            )
            .overlay(Circle().stroke(
                        Color.red,
                        lineWidth: 10)
                .padding()
            )
            .overlay(Circle().stroke(
                        Color.yellow,
                        lineWidth: 10)
                .padding(30)
            )
            .overlay(Circle().stroke(
                        Color.blue,
                        lineWidth: 10)
            )
            .overlay(
                Text("우왕ㅋ이미지다ㅋ")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            )
        
        
    }
}


struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
