//
//  PDFKitView.swift
//  AirPlane
//
//  Created by Kevin Zhang on 7/23/23.
//

import PDFKit
import SwiftUI

struct PDFKitView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        if let document = PDFDocument(url: url) {
            pdfView.document = document
        }
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {}
}
