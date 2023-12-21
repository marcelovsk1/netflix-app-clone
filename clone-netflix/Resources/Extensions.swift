//
//  Extensions.swift
//  clone-netflix
//
//  Created by Marcelo Amaral Alves on 2023-12-21.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
