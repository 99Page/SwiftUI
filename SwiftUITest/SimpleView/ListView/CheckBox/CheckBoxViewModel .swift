//
//  CheckBoxViewModel .swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/05.
//

import Foundation

class CheckBoxViewModel : ObservableObject {
    
    @Published var isShowingCheckBox = false
    @Published var models = [CheckBoxModel]()
    
    init() {
        models.append(CheckBoxModel(isChecked: false, text: "Text1"))
        models.append(CheckBoxModel(isChecked: false, text: "Text2"))
        models.append(CheckBoxModel(isChecked: false, text: "Text3"))
    }
}

struct CheckBoxModel : Identifiable, Hashable {
    var id = UUID()
    var isChecked: Bool
    var text: String
}
