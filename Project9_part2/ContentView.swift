//
//  ContentView.swift
//  Project9_part2
//
//  Created by K.Takahama on R 4/12/07.
//

import SwiftUI


struct ContentView: View {
    //Project9_part2 やっていきやしょう(๑>◡<๑)！！
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("orizuru"),sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.3),scale: 0.4), lineWidth: 20)//手を加えていきます Cupsuleに変更
            .frame(width: 300,height: 200)

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
