//
//  TabView.swift
//  Care2Share
//
//  Created by John Ray on 5/2/23.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
    //create a tabs for navigation
        TabView {
            JournalView()
                .tabItem {
                    Label("Journal", systemImage: "rectangle.and.pencil.and.ellipsis")
            }
            CreateView()
             .tabItem {
                 Label("Create", systemImage: "plus")
             }
            MessageBoardView_()
                .tabItem {
                    Label("Message Board", systemImage: "message")
                }
            
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
