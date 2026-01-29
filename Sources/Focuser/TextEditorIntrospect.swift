//
//  SwiftUIView.swift
//  
//
//  Created by Augustinas Malinauskas on 13/09/2021.
//

import SwiftUI
import SwiftUIIntrospect

public struct FocusModifierTextEditor<Value: FocusStateCompliant & Hashable>: ViewModifier {
    @Binding var focusedField: Value?
    var equals: Value
    @State var observer = TextFieldObserver()
    
    public func body(content: Content) -> some View {
        content
			.introspect(.textEditor, on: .iOS(.v15), customize: { tv in
				if focusedField == equals {
					tv.becomeFirstResponder()
				}
			})
            .simultaneousGesture(TapGesture().onEnded {
              focusedField = equals
            })
    }
}
