//
//  MessageBoardView .swift
//  Care2Share
//
//  Created by John Ray on 5/2/23.
//

import SwiftUI

enum ScreenType: String, CaseIterable {
    case message = "Messages"
    case affirmations = "Affirmations"
}

struct MessageBoardView_: View {
    
    /* @State private var defaulted = "Message"
     @State private var clickOver = "Affirmations"
     let boards = ["Message", "Affirmations"]*/
    @State private var selectedScreen: ScreenType = .message
    var body: some View {
        NavigationView {
            Form {
                Section {
                    VStack {
                        Picker(selection: $selectedScreen, label: Text("Screen Type")) {
                            ForEach(ScreenType.allCases, id: \.self) { screen in
                                Text(screen.rawValue)
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                        
                        switch selectedScreen {
                        case .message:
                            MessageView()
                        case .affirmations:
                            AffirmationsView()
                        }
                    }
                    .navigationTitle(selectedScreen.rawValue)
                }
            }
        }
    }
}

struct MessageView: View {
    var body: some View {
        MessageBoardView_()
    }
}

struct AffirmationView: View {
    var body: some View {
      AffirmationView()
    }
}
    

        
        
        
        //create navigation links for access to separate pages
       /* NavigationView {
            if defaulted == "Affirmations" {
                AffirmationsView()
            } else {
                
                
                
                Form {
                    Section {
                        Picker("Board", selection: $defaulted)
                        { ForEach(boards, id: \.self)
                            {
                                Text($0)
                            }
                        }.pickerStyle(.segmented)
                    }
                }
                .navigationTitle("Message Boards")
            }*/
        
    


            struct MessageBoardView__Previews: PreviewProvider {
                static var previews: some View {
                    MessageBoardView_()
                }
            }

