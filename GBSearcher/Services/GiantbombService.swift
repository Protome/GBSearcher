//
//  GiantbombService.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

class GiantbombService {
    private let session: URLSession
    private let decoder: JSONDecoder
    private let key = Bundle.main.localizedString(forKey: "GB_Key", value: nil, table: "Keys")
    private let baseUrl = "https://www.giantbomb.com/api/"
    
    init(session: URLSession = .shared, decoder: JSONDecoder = .init()) {
        self.session = session
        self.decoder = decoder
    }
    
    func search(matching query: String, pageNumber: Int = 1, handler: @escaping (Result<GBApiListResponse<Game>?, Error>) -> Void) {
        guard
            var urlComponents = URLComponents(string: baseUrl + "search")
            else { preconditionFailure("Can't create url components...") }
        
        urlComponents.queryItems = [
            URLQueryItem(name: "api_key", value: key),
            URLQueryItem(name: "format", value: "json"),
            URLQueryItem(name: "query", value: query),
            URLQueryItem(name: "resources", value: "game"),
            URLQueryItem(name: "page", value: String(pageNumber))
        ]
        
        guard
            let url = urlComponents.url
            else { preconditionFailure("Can't create url from url components...") }
        
        session.dataTask(with: url) { [weak self] data, _, error in
            if let error = error {
                handler(.failure(error))
            } else {
                do {
                    let data = data ?? Data()
                    let response = try self?.decoder.decode(GBApiListResponse<Game>.self, from: data)
                    handler(.success(response))
                } catch {
                    handler(.failure(error))
                }
            }
        }.resume()
    }
    
    func fetchGameData(gameId: String, handler: @escaping (Result<GBApiResponse<GameDetails>?, Error>) -> Void) {
        guard
            var urlComponents = URLComponents(string: baseUrl + "game/" + gameId)
            else { preconditionFailure("Can't create url components...") }
        
        urlComponents.queryItems = [
            URLQueryItem(name: "api_key", value: key),
            URLQueryItem(name: "format", value: "json")
        ]
        
        guard
            let url = urlComponents.url
            else { preconditionFailure("Can't create url from url components...") }
        
        session.dataTask(with: url) { [weak self] data, _, error in
            if let error = error {
                handler(.failure(error))
            } else {
                do {
                    let data = data ?? Data()
                    let response = try self?.decoder.decode(GBApiResponse<GameDetails>.self, from: data)
                    handler(.success(response))
                } catch {
                    handler(.failure(error))
                }
            }
        }.resume()
    }
    
    func fetchVideoData(videoId: String, handler: @escaping (Result<GBApiResponse<GBVideoDetail>?, Error>) -> Void) {
        guard
            var urlComponents = URLComponents(string: baseUrl + "video/" + videoId)
            else { preconditionFailure("Can't create url components...") }
        
        urlComponents.queryItems = [
            URLQueryItem(name: "api_key", value: key),
            URLQueryItem(name: "format", value: "json")
        ]
        
        guard
            let url = urlComponents.url
            else { preconditionFailure("Can't create url from url components...") }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.session.dataTask(with: url) { [weak self] data, _, error in
                if let error = error {
                    handler(.failure(error))
                } else {
                    do {
                        let data = data ?? Data()
                        let response = try self?.decoder.decode(GBApiResponse<GBVideoDetail>.self, from: data)
                        handler(.success(response))
                    } catch {
                        print(url)
                        handler(.failure(error))
                    }
                }
            }.resume()
            
        }
    }
}
