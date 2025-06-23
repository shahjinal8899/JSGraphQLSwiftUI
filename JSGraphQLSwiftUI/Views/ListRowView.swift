//
//  ListRowView.swift
//  JSGraphQLSwiftUI
//
//  Created by Jinal Shah on 01/11/23.
//

import SwiftUI
import SwaAPI

struct ListRowView: View {
    var film: SwaAPI.GetFilmListQuery.Data.AllFilms.Film
    
    var body: some View {
        HStack {
            Text(verbatim: film.title ?? "")
            Spacer()
        }
        .padding(20)
    }
}

//struct ListRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListRowView(film: menuItems[0])
//    }
//}
