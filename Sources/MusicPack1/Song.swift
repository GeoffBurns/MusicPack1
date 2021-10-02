//
//  Song.swift
//
//  Created by Geoff Burns on 2/10/21.
//
//

import Foundation

enum Song
{
    public static func get(_ name: String) -> URL? {
        return Bundle.module.url(forResource: name, withExtension: "mp3")
    }
}
