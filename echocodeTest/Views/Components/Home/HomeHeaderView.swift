//
//  HomeHeader.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Translator")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            HStack(alignment: .center) {
                Spacer()
                Text("HUMAN")
                    .fontWeight(.semibold)
                Spacer()
                Image("arrow.swap.horizontal")
                    .resizable()
                    .frame(width: 24, height: 24)
                Spacer()
                Text("PET")
                    .fontWeight(.semibold)
                Spacer()
            }
        }
    }
}

#Preview {
    HomeHeaderView()
}
