//
//  Note.swift
//  Pinterest Learning
//
//  Created by Daniel Asamudo on 2025-12-26.
//

import Foundation
import SwiftUI

struct Note: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var body: String
}
