//
//  ListingItemView.swift
//  AirbnbApp
//
//  Created by Carlos Alcala on 22/11/24.
//

import SwiftUI
struct ListingItemView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]

    var body: some View {
        VStack(spacing: 8) {
            // images
            TabView() {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape (RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)

            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text ("Miami, Florida")
                    Text ("12 mi away")
                    Text ("Nov 3 - 10")

                    HStack(spacing: 4) {
                        Text("$567")
                        Text ("night")
                    }
                }

                Spacer()

                // rating
                HStack(spacing: 2) {
                    Image (systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
