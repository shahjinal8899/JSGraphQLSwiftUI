// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == SwaAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == SwaAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == SwaAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == SwaAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> Object? {
    switch typename {
    case "Root": return SwaAPI.Objects.Root
    case "FilmsConnection": return SwaAPI.Objects.FilmsConnection
    case "Film": return SwaAPI.Objects.Film
    case "Person": return SwaAPI.Objects.Person
    case "Planet": return SwaAPI.Objects.Planet
    case "Species": return SwaAPI.Objects.Species
    case "Starship": return SwaAPI.Objects.Starship
    case "Vehicle": return SwaAPI.Objects.Vehicle
    case "FilmCharactersConnection": return SwaAPI.Objects.FilmCharactersConnection
    case "FilmSpeciesConnection": return SwaAPI.Objects.FilmSpeciesConnection
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
