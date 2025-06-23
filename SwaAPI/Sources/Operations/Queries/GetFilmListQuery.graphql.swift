// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetFilmListQuery: GraphQLQuery {
  public static let operationName: String = "GetFilmList"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetFilmList { allFilms { __typename films { __typename id title director episodeID openingCrawl releaseDate characterConnection { __typename characters { __typename id name gender } } speciesConnection { __typename species { __typename name classification homeworld { __typename name } } } } } }"#
    ))

  public init() {}

  public struct Data: SwaAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SwaAPI.Objects.Root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allFilms", AllFilms?.self),
    ] }

    public var allFilms: AllFilms? { __data["allFilms"] }

    /// AllFilms
    ///
    /// Parent Type: `FilmsConnection`
    public struct AllFilms: SwaAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SwaAPI.Objects.FilmsConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("films", [Film?]?.self),
      ] }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var films: [Film?]? { __data["films"] }

      /// AllFilms.Film
      ///
      /// Parent Type: `Film`
      public struct Film: SwaAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SwaAPI.Objects.Film }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", SwaAPI.ID.self),
          .field("title", String?.self),
          .field("director", String?.self),
          .field("episodeID", Int?.self),
          .field("openingCrawl", String?.self),
          .field("releaseDate", String?.self),
          .field("characterConnection", CharacterConnection?.self),
          .field("speciesConnection", SpeciesConnection?.self),
        ] }

        /// The ID of an object
        public var id: SwaAPI.ID { __data["id"] }
        /// The title of this film.
        public var title: String? { __data["title"] }
        /// The name of the director of this film.
        public var director: String? { __data["director"] }
        /// The episode number of this film.
        public var episodeID: Int? { __data["episodeID"] }
        /// The opening paragraphs at the beginning of this film.
        public var openingCrawl: String? { __data["openingCrawl"] }
        /// The ISO 8601 date format of film release at original creator country.
        public var releaseDate: String? { __data["releaseDate"] }
        public var characterConnection: CharacterConnection? { __data["characterConnection"] }
        public var speciesConnection: SpeciesConnection? { __data["speciesConnection"] }

        /// AllFilms.Film.CharacterConnection
        ///
        /// Parent Type: `FilmCharactersConnection`
        public struct CharacterConnection: SwaAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SwaAPI.Objects.FilmCharactersConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("characters", [Character?]?.self),
          ] }

          /// A list of all of the objects returned in the connection. This is a convenience
          /// field provided for quickly exploring the API; rather than querying for
          /// "{ edges { node } }" when no edge data is needed, this field can be be used
          /// instead. Note that when clients like Relay need to fetch the "cursor" field on
          /// the edge to enable efficient pagination, this shortcut cannot be used, and the
          /// full "{ edges { node } }" version should be used instead.
          public var characters: [Character?]? { __data["characters"] }

          /// AllFilms.Film.CharacterConnection.Character
          ///
          /// Parent Type: `Person`
          public struct Character: SwaAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { SwaAPI.Objects.Person }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("id", SwaAPI.ID.self),
              .field("name", String?.self),
              .field("gender", String?.self),
            ] }

            /// The ID of an object
            public var id: SwaAPI.ID { __data["id"] }
            /// The name of this person.
            public var name: String? { __data["name"] }
            /// The gender of this person. Either "Male", "Female" or "unknown",
            /// "n/a" if the person does not have a gender.
            public var gender: String? { __data["gender"] }
          }
        }

        /// AllFilms.Film.SpeciesConnection
        ///
        /// Parent Type: `FilmSpeciesConnection`
        public struct SpeciesConnection: SwaAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SwaAPI.Objects.FilmSpeciesConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("species", [Specy?]?.self),
          ] }

          /// A list of all of the objects returned in the connection. This is a convenience
          /// field provided for quickly exploring the API; rather than querying for
          /// "{ edges { node } }" when no edge data is needed, this field can be be used
          /// instead. Note that when clients like Relay need to fetch the "cursor" field on
          /// the edge to enable efficient pagination, this shortcut cannot be used, and the
          /// full "{ edges { node } }" version should be used instead.
          public var species: [Specy?]? { __data["species"] }

          /// AllFilms.Film.SpeciesConnection.Specy
          ///
          /// Parent Type: `Species`
          public struct Specy: SwaAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { SwaAPI.Objects.Species }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("name", String?.self),
              .field("classification", String?.self),
              .field("homeworld", Homeworld?.self),
            ] }

            /// The name of this species.
            public var name: String? { __data["name"] }
            /// The classification of this species, such as "mammal" or "reptile".
            public var classification: String? { __data["classification"] }
            /// A planet that this species originates from.
            public var homeworld: Homeworld? { __data["homeworld"] }

            /// AllFilms.Film.SpeciesConnection.Specy.Homeworld
            ///
            /// Parent Type: `Planet`
            public struct Homeworld: SwaAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { SwaAPI.Objects.Planet }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("name", String?.self),
              ] }

              /// The name of this planet.
              public var name: String? { __data["name"] }
            }
          }
        }
      }
    }
  }
}
