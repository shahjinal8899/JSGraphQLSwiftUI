//
//  FilmListRowView.swift
//  JSGraphQLSwiftUI
//
//  Created by Jinal Shah on 07/11/23.
//

import Foundation
import SwiftUI
import SwaAPI

struct FilmListRowView: View {
    var film: SwaAPI.GetFilmListQuery.Data.AllFilms.Film
    
    var body: some View {
        VStack {
            ListRowView(film: film)
                .frame(height: 50)
                .background(Color.gray.opacity(0.15))
                .cornerRadius(10)
        }
        .listRowSeparator(.hidden)
    }
}
