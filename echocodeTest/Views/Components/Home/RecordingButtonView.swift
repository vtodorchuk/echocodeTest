//
//  RecordingButtonView.swift
//  echocodeTest
//
//  Created by Vlady Todorchuk on 30.05.2025.
//

import SwiftUI

struct RecordingButtonView: View {
    @Binding var viewModel: HomeViewModel
    
    var body: some View {
        GroupBoxBase(width: 178, height: 178, cornerRadius: 16, color: .white) {
            Button {
                viewModel.stopRecordingVoice()
            } label: {
                VStack(alignment: .center, spacing: 60) {
                    HStack(alignment: .bottom) {
                        HStack(spacing: 3) {
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 10)
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 4)
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 12)
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 3)
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 4)
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 15)
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 32)
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 23)
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 12)
                            RoundedRectangle(cornerRadius: 1, style: RoundedCornerStyle.continuous)
                                .fill(.settingsLink)
                                .frame(width: 2, height: 5)
                        }
                    }
                    
                    Text("Recording..")
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var viewModel = HomeViewModel()
    RecordingButtonView(viewModel: $viewModel)
}
