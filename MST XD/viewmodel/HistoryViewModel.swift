//
//  HistoryViewModel.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

class HistoryViewModel:ObservableObject {
    @Published var carts:[NotyModel] = [
        
        .init(title: "AX61754KX", detail: "1 hour ago.", date: "554$", shows: "January  2, 2019 05:30"),
            .init(title: "AX61754KX", detail: "1 hour ago. ", date: "555$", shows: "January  2, 2019 05:30"),
        .init(title: "AX61754KX", detail: "1 hour ago.", date: "52$", shows: "January  2, 2019 05:30"),
        .init(title: "AX61754KX", detail: "1 hour ago. ", date: "55$", shows: "January  2, 2019 05:30")
    ]
}
