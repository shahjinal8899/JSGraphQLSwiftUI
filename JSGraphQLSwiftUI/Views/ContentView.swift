//
//  ContentView.swift
//  JSGraphQLSwiftUI
//
//  Created by Jinal Shah on 01/11/23.
//

import SwiftUI
import SwaAPI

struct ContentView: View {
    @EnvironmentObject var router: UIPilot<AppRoute>

    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading, spacing: 15) {
                    //Setup Film List View
                    FilmListView()
                }
                .padding(20)
            }
        }
        .navigationBarHidden(true)
        .navigationTitle("Films")
    }
}

//MARK: - Search View
struct SearchBarView: View {
    @Binding var strSearch: String
    
    var body: some View {
        ZStack {
            HStack(spacing: 10) {
                TextField("Search", text: $strSearch)
                Image("ic-search") .foregroundColor(Color.gray)
            }
            .padding()
            .frame(height: 45)
        }
        .background(Color.gray.opacity(0.15))
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: - AppRoute
enum AppRoute: Equatable {
    static func == (lhs: AppRoute, rhs: AppRoute) -> Bool {
        return lhs.key == rhs.key
    }

    case home
    case filmDetails(_ objFilm: SwaAPI.GetFilmListQuery.Data.AllFilms.Film?)

    var key: String {
        switch self {
        case .home: return "home"
        case .filmDetails: return "filmDetails"
        }
    }
}
