//
//  FilmListView.swift
//  JSGraphQLSwiftUI
//
//  Created by Jinal Shah on 01/11/23.
//

import SwiftUI
import SwaAPI

struct FilmListView: View {
    //MARK: - Variables
    @EnvironmentObject var router: UIPilot<AppRoute>
    @State private var searchText = ""
    @ObservedObject var viewModel = FilmViewModel()
    
    //Filter Films
    var filteredFilms: [SwaAPI.GetFilmListQuery.Data.AllFilms.Film] {
        if searchText.isEmpty {
            return viewModel.arrFilms
        } else {
            return viewModel.arrFilms.filter { movie in
                return movie.title!.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    //Setup SearchView
                    SearchBarView(strSearch: $searchText)
                    
                    //List of Films
                    List(filteredFilms, id: \.id) { film in
                        FilmListRowView(film: film)
                        .onTapGesture {
                            router.push(.filmDetails(film))
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
                    .onAppear {
                        viewModel.fetchMovies()
                    }
                    .listStyle(.plain)
                    .scrollIndicators(.hidden)
                }
            }
        }
    }
}

struct FilmListView_Previews: PreviewProvider {
    static var previews: some View {
        FilmListView()
    }
}
