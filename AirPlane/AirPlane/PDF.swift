//
//  PDF.swift
//  AirPlane
//
//  Created by Soham Nagawanshi on 7/23/23.
//

import Foundation
import CoreTransferable

struct PDF: Transferable {
    let url: URL
    static var transferRepresentation: some TransferRepresentation {
        FileRepresentation(contentType: .pdf) { pdf in
            SentTransferredFile(pdf.url)
        } importing: { received in
            let copy: URL = URL(filePath: "<#...#>")
            try FileManager.default.copyItem(at: received.file, to: copy)
            return Self.init(url: copy)
        }

    }
}
