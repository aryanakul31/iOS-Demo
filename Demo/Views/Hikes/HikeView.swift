/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view displaying information about a hike, including an elevation graph.
*/

import SwiftUI


extension AnyTransition {
    static var moveAndFade: AnyTransition {
            .asymmetric(
                       insertion: .move(edge: .trailing).combined(with: .opacity),
                       removal: .scale.combined(with: .opacity)
                   )
//        AnyTransition.move(edge: .trailing)
    }
}

struct HikeView: View {
    var hike: Hike
    @State private var showDetail = false

    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)

                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }

                Spacer()

                Button {
                    withAnimation(.bouncy(duration: 1)){
                        showDetail.toggle()
                    }
                } label: {
                    Label("Graph", systemImage: "chevron.right.circle")
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .animation(nil,value: showDetail)
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                }
            }

            if showDetail {
                HikeDetail(hike: hike)
                    .transition(.moveAndFade)
            }
        }
    }
}

#Preview {
    Group{
        let hikes = ModelData().hikes
        HikeView(hike: hikes[0])
            .padding()
//        HikeView(hike: hikes[1])
//            .padding()
//        HikeView(hike: hikes[2])
//            .padding()
    }
}
