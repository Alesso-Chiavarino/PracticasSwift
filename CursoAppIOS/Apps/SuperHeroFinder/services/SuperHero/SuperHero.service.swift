//
//  SuperHeroService.swift
//  CursoAppIOS
//
//  Created by Alessandro Chiavarino on 06/06/2025.
//

import Foundation

class SuperHeroService {

    // MARK: - Welcome
    struct SuperHeroServiceResponse: Codable {
        let response, resultsFor: String
        let results: [SuperHero]

        enum CodingKeys: String, CodingKey {
            case response
            case resultsFor = "results-for"
            case results
        }
    }

    // MARK: - Result
    struct SuperHero: Codable {
        let id, name: String
        let powerstats: Powerstats
        let biography: Biography
        let appearance: Appearance
        let work: Work
        let connections: Connections
        let image: Image
    }

    // MARK: - Appearance
    struct Appearance: Codable {
        let gender: Gender
        let race: Race
        let height, weight: [String]
        let eyeColor, hairColor: String

        enum CodingKeys: String, CodingKey {
            case gender, race, height, weight
            case eyeColor = "eye-color"
            case hairColor = "hair-color"
        }
    }

    enum Gender: String, Codable {
        case female = "Female"
        case male = "Male"
    }

    enum Race: String, Codable {
        case human = "Human"
        case humanClone = "Human / Clone"
        case mutant = "Mutant"
        case newGod = "New God"
        case null = "null"
    }

    // MARK: - Biography
    struct Biography: Codable {
        let fullName, alterEgos: String
        let aliases: [String]
        let placeOfBirth, firstAppearance, publisher: String
        let alignment: Alignment

        enum CodingKeys: String, CodingKey {
            case fullName = "full-name"
            case alterEgos = "alter-egos"
            case aliases
            case placeOfBirth = "place-of-birth"
            case firstAppearance = "first-appearance"
            case publisher, alignment
        }
    }

    enum Alignment: String, Codable {
        case bad = "bad"
        case good = "good"
        case neutral = "neutral"
    }

    // MARK: - Connections
    struct Connections: Codable {
        let groupAffiliation, relatives: String

        enum CodingKeys: String, CodingKey {
            case groupAffiliation = "group-affiliation"
            case relatives
        }
    }

    // MARK: - Image
    struct Image: Codable {
        let url: String
    }

    // MARK: - Powerstats
    struct Powerstats: Codable {
        let intelligence, strength, speed, durability: String
        let power, combat: String
    }

    // MARK: - Work
    struct Work: Codable {
        let occupation, base: String
    }

    public func getSuperHeroesByQuery(query: String) async throws -> SuperHeroServiceResponse {
        let URL = URL(string:
            "https://www.superheroapi.com/api.php/22e047ccc7ca76440a7c6e12cb84e964/search/\(query)"
        )
        
        let (data, _) = try await URLSession.shared.data(from: URL!)
        
        let decoder = JSONDecoder()
        let response = try decoder.decode(SuperHeroServiceResponse.self, from: data)
        
        print("response", response)
        
        return response;
    }

}
