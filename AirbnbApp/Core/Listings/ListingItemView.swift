//
//  ListingItemView.swift
//  AirbnbApp
//
//  Created by Carlos Alcala on 22/11/24.
//

import SwiftUI
struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) { // images
            Rectangle()
                .frame(height: 320)
                .clipShape (RoundedRectangle(cornerRadius: 10))
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
        .padding()
    }
}

#Preview {
    ListingItemView()
}
