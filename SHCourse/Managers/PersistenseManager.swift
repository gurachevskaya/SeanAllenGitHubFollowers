//
//  PersistenseManager.swift
//  SHCourse
//
//  Created by Karina on 10/17/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import Foundation

enum PersistenceActionType {
    case add, remove
}

enum PersistenseManager {
    
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favourites = "favourites"
    }
    
    
    static func updateWith(favourite: Follower, actionType: PersistenceActionType, completed: @escaping (KGError?) -> Void) {
        retrieveFavourites { result in
            switch result {
            case .success(let favourites):
                var retrievedFavourites = favourites
                
                switch actionType {
                case .add:
                    guard !retrievedFavourites.contains(favourite) else {
                        completed(.alreadyInFavourites)
                        return
                    }
                    retrievedFavourites.append(favourite)
            
                case .remove:
                    retrievedFavourites.removeAll { $0.login == favourite.login }
                }
                            
                completed(saveFavourites(favourites: retrievedFavourites))
                
            case.failure(let error):
                completed(error)
            }
        }
    }
    
    
    static func retrieveFavourites(completed: @escaping (Result<[Follower], KGError>) -> Void) {
        guard let favouritesData = defaults.object(forKey: Keys.favourites) as? Data else { completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favourites = try decoder.decode([Follower].self, from: favouritesData)
            completed(.success(favourites))
        } catch {
            completed(.failure(.unableToFavourite))
        }
    }
    
    
    static func saveFavourites(favourites: [Follower]) -> KGError? {
        do {
            let encoder = JSONEncoder()
            let encodedFavourites = try encoder.encode(favourites)
            defaults.set(encodedFavourites, forKey: Keys.favourites)
            return nil
        } catch {
            return .unableToFavourite
        }
    }
}
