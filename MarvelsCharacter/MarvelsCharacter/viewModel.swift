//
//  viewModel.swift
//  MarvelsCharacter
//
//  Created by Jorge Abalo Dieste on 13/11/23.
//
import CommonCrypto
import Foundation
 
func MD5(string: String) -> String {
    let length = Int(CC_MD5_DIGEST_LENGTH)
    var digest = [UInt8](repeating: 0, count: length)
    if let data = string.data(using: String.Encoding.utf8) {
        _ = data.withUnsafeBytes { (body: UnsafeRawBufferPointer) in
            CC_MD5(body.baseAddress, CC_LONG(data.count), &digest)
        }
    }

    return (0..<length).reduce("") { $0 + String(format: "%02x", digest[$1]) }
}

func generateHash(ts: String, publicKey: String, privateKey: String) -> String {
    let hashString = ts + privateKey + publicKey
    return MD5(string: hashString)
    
    
    
    
    // Uso
    let ts = Date().timeIntervalSince1970.description
    let publicKey = "4da961812496c30cf73ed692b494f315"
    let privateKey = "d7fc2827797d7e47f6417dca83b3beeb4c5607ee"
    
    let hash = generateHash(ts: ts, publicKey: publicKey, privateKey: privateKey)
    print("Hash MD5 generado: \(hash)")
    
}
