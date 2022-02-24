//
//  DetailView.swift
//  Stretch+Paws
//
//  Created by Arturo Liranzo on 2/21/22.
//

import SwiftUI

struct DetailView: View {
    
    let pose: Pose
    
    var body: some View {
        ZStack {
            Color("Secondary")
                .ignoresSafeArea()
            VStack {
                Image(pose.icon)
                    .resizable()
                    .frame(width: 200, height: 200)
                Text(pose.name)
                    .font(.title)
                Text(pose.asana)
                    .padding(20)
                Text(pose.description)
                Text("How to")
                Text("Tool tip")
                Text(pose.topTip)
                
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(pose: Pose(
            name: "Downward-Facing Dog", asana: "Adho Mukha Shvanasana", icon: "Cat-1", description: "Did someone say dog, Can't we call this a downward-facing cat instead? It's OK - This is a friendly  dog, its not intereseted in chasing cats. In fact Downward-Facing Dog is the lynchpin of a yoga asana practice: if you're going to befriend with any of these poses, make sure it's this canine classic.", steps: ["From a kneeling position, place your hands shoulde-distance apart and spread your finders", "Tuck your toes and lift your hips up towards the celining so you can create an inverted V shape.", "Balance the weight between hands and feet and think about tilting your tailbone up towards the ceiling.", "Send your gaze towards your feet and breath!"], topTip: "Bend your knees in order to create more length through the spine") )
    }
}
