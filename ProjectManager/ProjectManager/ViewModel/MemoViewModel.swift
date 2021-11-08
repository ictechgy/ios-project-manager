//
//  MemoViewModel.swift
//  ProjectManager
//
//  Created by JINHONG AN on 2021/11/08.
//

import Foundation

struct MemoViewModel {
    private var memo = Memo()
    var memoTitle: String {
        set {
            memo.title = newValue
        }
        get {
            return memo.title
        }
    }
    var memoDescription: String {
        set {
            memo.description = newValue
        }
        get {
            return memo.description
        }
    }
    var memoDate: Date {
        set {
            memo.date = newValue
        }
        get {
            return memo.date
        }
    }
    var memoId: UUID {
        return memo.id
    }
    var memoStatus: MemoState {
        set {
            memo.status = newValue
        }
        get {
            return memo.status
        }
    }
}
