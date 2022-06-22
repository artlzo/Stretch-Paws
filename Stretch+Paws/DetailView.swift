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
            ScrollView(showsIndicators: false){
                VStack(spacing:20) {
                    Image(pose.icon)
                        .resizable()
                        .frame(width: 200, height: 200)
                    Text(pose.name)
                        .foregroundColor(Color("Highlight"))
                        .font(.system(size: 36, weight: .bold))
                
                    Text(pose.asana)
                        .font(.system(size: 22, weight: .medium))
                        .italic()
                    
                    
                    VStack (alignment: .leading, spacing: 20) {
                    Text(pose.description)
                        
                    Text("How to")
                            .font(.system(size: 22, weight: .medium))
                            .foregroundColor(Color("Highlight"))

                    ForEach(pose.steps,id: \.self) { step in
                        Text(step)

                    }
                    
                        
                    Text("Tool tip:")
                            .font(.system(size: 22, weight: .medium))
                            .foregroundColor(Color("Highlight"))
                    Text(pose.topTip)
                            
                    }
                    
                }.padding(.horizontal, 20)
            }
            TimerPanelView()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(pose: Pose(
            name: "Downward-Facing Dog", asana: "Adho Mukha Shvanasana", icon: "Cat-1", description: "Did someone say dog, Can't we call this a downward-facing cat instead? It's OK - This is a friendly  dog, its not intereseted in chasing cats. In fact Downward-Facing Dog is the lynchpin of a yoga asana practice: if you're going to befriend with any of these poses, make sure it's this canine classic.", steps: ["From a kneeling position, place your hands shoulde-distance apart and spread your finders", "Tuck your toes and lift your hips up towards the celining so you can create an inverted V shape.", "Balance the weight between hands and feet and think about tilting your tailbone up towards the ceiling.", "Send your gaze towards your feet and breath!"], topTip: "Bend your knees in order to create more length through the spine") )
    }
}

struct TimerPanelView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("try it out")
            .padding(40)
            .foregroundColor(Color("Secondary"))
            .frame(maxWidth: .infinity, maxHeight: 80)
            .background(Color("Highlight"))
            .cornerRadius(6)
            
        } .ignoresSafeArea()
    }
}


struct TimerOpenView: View {
    var body: some View {
        Text("hold that pose ")
    }
}
