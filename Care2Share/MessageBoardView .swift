//
//  MessageBoardView .swift
//  Care2Share
//
//  Created by John Ray on 5/2/23.
//

import SwiftUI

struct MessageBoardView_: View {
   @State private var defaulted = "Message"
    
    let boards = ["Message", "Affirmations"]
    
    var body: some View {
        //create navigation links for access to separate pages
        NavigationView {
            Form {
                Section {
                    Picker("Board", selection: $defaulted)
                    { ForEach(boards, id: \.self)
                        {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
                .navigationTitle("Message Boards")
            }
        }
    }
}
            struct MessageBoardView__Previews: PreviewProvider {
                static var previews: some View {
                    MessageBoardView_()
                }
            }

