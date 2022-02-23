//
//  DetailView.swift
//  Stretch+Paws
//
//  Created by Arturo Liranzo on 2/21/22.
//

import SwiftUI

struct DetailView: View {
    
    var body: some View {
        ZStack {
            Color("Secondary")
                .ignoresSafeArea()
            Text("Purrrrfect!")
                .font(.title)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
