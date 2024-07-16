//
//  BarcodeScannerViewModel.swift
//  SwiftUI-BarcodeScanner
//
//  Created by Umut Yenidil on 17.07.2024.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode: String = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Scanned Yet" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
