//
//  MoviesModel.swift
//  clone-netflix
//
//  Created by Marcelo Amaral Alves on 2023-12-21.
//

import Foundation

struct TrendingMoviesResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}

/*
 {
adult = 0;
"backdrop_path" = "/k1KrbaCMACQiq7EA0Yhw3bdzMv7.jpg";
"genre_ids" =             (
 16,
 10751,
 10402,
 14,
 35
);
id = 901362;
"media_type" = movie;
"original_language" = en;
"original_title" = "Trolls Band Together";
overview = "When Branch's brother, Floyd, is kidnapped for his musical talents by a pair of nefarious pop-star villains, Branch and Poppy embark on a harrowing and emotional journey to reunite the other brothers and rescue Floyd from a fate even worse than pop-culture obscurity.";
popularity = "782.173";
"poster_path" = "/bkpPTZUdq31UGDovmszsg2CchiI.jpg";
"release_date" = "2023-10-12";
title = "Trolls Band Together";
video = 0;
"vote_average" = "7.15";
"vote_count" = 391;
},
 */
