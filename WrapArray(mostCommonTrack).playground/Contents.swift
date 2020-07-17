//: Playground - noun: a place where people can play

import UIKit

let tracks = ["a", "b", "c", "d", "e"]

// we should return this
["d", "e", "a", "b", "c"]


var selectedTrack = "c"
var playlist: [String] = []
var priorTracks: [String] = []

for track in tracks {
    if track == selectedTrack || playlist.count > 0 {
        playlist.append(track)
    } else {
        priorTracks.append(track)
    }
}

playlist + priorTracks

// another way without loops

let index = tracks.index { (track) -> Bool in
    return track == selectedTrack
}
let prefixArray = tracks.prefix(upTo: index!)
let suffixArray = tracks.suffix(from: index!)
let arr = suffixArray + prefixArray
