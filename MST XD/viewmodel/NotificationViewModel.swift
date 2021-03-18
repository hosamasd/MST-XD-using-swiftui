//
//  NotificationViewModel.swift
//  MST XD
//
//  Created by hosam on 3/18/21.
//

import SwiftUI

class NotificationViewModel:ObservableObject {
    @Published var notifications:[NotyModel] = [
        .init(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  2, 2019 05:30"),
            .init(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  2, 2019 05:30"),
        .init(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  2, 2019 05:30"),
        .init(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", detail: "Lorem Ipsum is simply dummy text of the print... ", date: "1", shows: "January  2, 2019 05:30")
    ]
}
