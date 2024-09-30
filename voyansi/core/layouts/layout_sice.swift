//
//  LayoutSlice.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 27/09/24.
//

import ComposableArchitecture

@Reducer
struct LayoutSlice {
    
    @ObservableState
    struct State{
        var isLandScape = false
    }
    
    enum Action{
        case setLandScape
    }
    
    var body: some ReducerOf<Self>{
        Reduce{ state, action in
            switch action{
            case .setLandScape:
                state.isLandScape = true
                return .none
            }
        }
        
    }
}

