//
//  FilmDetailsView.swift
//  JSGraphQLSwiftUI
//
//  Created by Jinal Shah on 01/11/23.
//

import SwiftUI
import SwaAPI

struct FilmDetailsView: View {
    //MARK: - Variables
    @EnvironmentObject var router: UIPilot<AppRoute>
    var objFilm : SwaAPI.GetFilmListQuery.Data.AllFilms.Film? = nil
    var intCharacters: Int = 0
    
    //MARK: - Setup Data For Film Details
    init(objFilm: SwaAPI.GetFilmListQuery.Data.AllFilms.Film) {
        self.objFilm = objFilm
        
        let intChar = objFilm.characterConnection?.characters?.count ?? 0
        self.intCharacters = 5+intChar
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack {
                List {
                    ForEach (0..<self.intCharacters, id: \.self) { row in
                        if row == 0 {
                            Text("")
                                .listRowBackground(Color.clear)
                                .foregroundColor(Color.black)
                                .font(Font.subheadline)
                            
                        } else if row == 1 {
                            Text(objFilm?.title ?? "")
                                .listRowBackground(Color.clear)
                                .foregroundColor(Color.black)
                                .font(Font.largeTitle)
                            
                        } else if row == 2 {
                            Text("Episode Number: \(objFilm?.episodeID ?? 0)")
                                .listRowBackground(Color.clear)
                                .foregroundColor(Color.gray)
                                .font(Font.title3)
                            
                        } else if row == 3 {
                            Text(objFilm?.openingCrawl ?? "")
                                .listRowBackground(Color.clear)
                                .foregroundColor(Color.black)
                                .font(Font.title2)
                            
                        } else if row == 4 {
                            Text("Characters:")
                                .listRowBackground(Color.clear)
                                .foregroundColor(Color.black)
                                .font(Font.largeTitle)
                        } else {
                            if let arrChar = objFilm?.characterConnection?.characters{
                                if let dicChar = arrChar[row - 5]{
                                    Text(dicChar.name ?? "")
                                        .listRowBackground(Color.clear)
                                        .foregroundColor(Color.black)
                                        .font(Font.title3)
                                }
                            }
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listStyle(.plain)
                }
                .listStyle(.plain)
                .scrollIndicators(.hidden)
                .listRowSeparator(.hidden)
            }
            .padding(10)
            
            Image("ic-back")
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                .onTapGesture {
                    router.pop()
                }
        }
    }
}

