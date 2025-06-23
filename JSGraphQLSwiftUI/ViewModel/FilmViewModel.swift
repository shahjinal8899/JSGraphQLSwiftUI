//
//  FilmViewModel.swift
//  JSGraphQLSwiftUI
//
//  Created by Jinal Shah on 07/11/23.
//

import Foundation
import SwaAPI

class FilmViewModel: ObservableObject {
    @Published var arrFilms: [SwaAPI.GetFilmListQuery.Data.AllFilms.Film] = []

    // Get Movie list through GraphQL
    func fetchMovies() {
        Network.shared.apollo.fetch(query: GetFilmListQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let countries = graphQLResult.data?.allFilms?.films {
                    self.arrFilms = countries.compactMap { $0 }
                }
            case .failure(let error):
                print("fetchMovies error: \(error.localizedDescription)")
            }
        }
    }
}
