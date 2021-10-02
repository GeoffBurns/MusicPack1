//
//  MusicRepository1.swift
//
//  Created by Geoff Burns on 28/9/21.
//

import Foundation
import Effect
 
public class MusicRepository1 : IMusicRepository
{
    public static let shared = MusicRepository1()
    
    public static func register()
    {
        shared.register()
    }
    
    public var playList: [String] = ["Monkeys","Happy","Dark","Kool", "Hitman", "Sneaky", "Amok"]
    
    public func url(_ url: String) -> URL? {
        return Song.get(url)
    }
    public func register()
    {
        Music.resource.register(self)
    }

    
}
