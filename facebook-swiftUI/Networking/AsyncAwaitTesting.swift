//
//  AsyncAwaitTesting.swift
//  facebook-swiftUI
//
//  Created by DungHM on 23/5/25.
//

import SwiftUI

struct AsyncAwaitTesting: View {
    @State private var data: Int = 0
    @State private var isShowAlert = false
    var body: some View {
        
        VStack {
            Text("\(data)").onAppear {
                
                func fetchData() async throws -> Int {
                    print("start fetching data ... \(Date())")
                    try await Task.sleep(nanoseconds: 2 * 1_000_000_000)
                    try Task.checkCancellation()
                    print("end fetching data ... \(Date())")
                    return 200
                }

                func fetchDataWithTimeout() async throws -> Int {
                    let task = Task {
                        try await fetchData()
                    }
                    
                    let timeoutTask = Task {
                        try await Task.sleep(nanoseconds: 1 * 1_000_000_000)
                        task.cancel()
                    }
                    
                    do {
                        let result = try await task.value
                        return result
                    } catch {
                        timeoutTask.cancel()
                        throw error
                    }
    
                }
                
                //start fetching data
                Task {
                    do {
                        let result = try await fetchDataWithTimeout()
                        data = result
                        print ("Result: \(result)")
                    } catch {
                        print("Error: \(error)")
                    }
                }
            }
        }.alert("Thông báo", isPresented: $isShowAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Tác vụ bị huỷ hoặc timeout.")
        }

        }
        
        
    }
    
}

#Preview {
    AsyncAwaitTesting()
}
