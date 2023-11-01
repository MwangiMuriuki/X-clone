//
//  DarkModeSheetView.swift
//  X-clone
//
//  Created by Ernest Mwangi on 24/10/2023.
//

import SwiftUI

struct DarkModeSheetView: View {
    @State var selectedTheme = 1
    @State var isModeSelected = false
    @AppStorage("darkModeSelected") private var darkModeSelected = false
    @AppStorage("deviceThemeSelected") private var deviceThemeSelected = false

    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            Text("Dark mode")
                .fontWeight(.bold)
                .font(.headline)
                .foregroundStyle(.labelColorPrimary)

            VStack(spacing: 10, content: {
                Toggle("Dark mode", isOn: $darkModeSelected)
                    .fontWeight(.semibold)
                    .font(.subheadline)

                Toggle("Use device settings", isOn: $deviceThemeSelected)
                    .fontWeight(.semibold)
                    .font(.subheadline)

                Text("Set Dark mode to use the Light or Dark selection located in your device Display & Brightness settings.")
                    .foregroundStyle(.labelColorPrimary)
                    .font(.system(size: 13))
            })

            Divider().background(.separator)


            VStack(alignment: .leading, spacing: 20, content: {
                Text("Theme")
                    .fontWeight(.bold)
                    .font(.headline)
                    .foregroundStyle(.labelColorPrimary)

                HStack(content: {
                    Button {
                        self.selectedTheme = 0
                    } label: {
                        Text("Dim")
                            .foregroundStyle(.labelColorPrimary)
                            .fontWeight(.semibold)
                            .font(.subheadline)
                    }

                    Spacer()

                    if selectedTheme == 0{
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.blue)
                    }
                    else {
                        Image(systemName: "circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.secondary)
                    }
                })

                HStack(content: {
                    Button {
                        self.selectedTheme = 1
                    } label: {
                        Text("Lights Out")
                            .foregroundStyle(.labelColorPrimary)
                            .fontWeight(.semibold)
                            .font(.subheadline)
                    }

                    Spacer()

                    if selectedTheme == 1{
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.blue)
                    }
                    else {
                        Image(systemName: "circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.secondary)
                    }

                })
            })


        })
        .padding(.top)
        .padding(.horizontal)
        .background(Color.dynamicBG)
    }
}

#Preview {
    DarkModeSheetView()
}
