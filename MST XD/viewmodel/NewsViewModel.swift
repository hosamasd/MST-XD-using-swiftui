//
//  NewsViewModel.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

class NewsViewModel:ObservableObject {
    @Published var carts:[NewsInfoModel] = [
        
        .init(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  2, 2021 05:30",pic:"Mask Group 3"),
        
        .init(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  20, 2021 05:30",pic:"Image 4"),
        
        .init(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  12, 2021 05:30",pic:"Mask Group 3"),
        .init(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  15, 2021 05:30",pic:"Image 4"),
        
    ]
}
