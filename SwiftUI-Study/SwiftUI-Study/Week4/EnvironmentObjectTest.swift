import SwiftUI

// 전역 상태 관리에 사용
class SharedData: ObservableObject {
    @Published var count: Int = 0
}

// 최상위 뷰
struct EnvironmentObjectTest: View {
    @StateObject private var counterModel = SharedData()

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("메인 화면")
                    .font(.largeTitle)
                
                NavigationLink("하위 뷰 이동하기") {
                    CounterView()
                }
                .font(.title)
                .padding()
                .background(Color(.systemYellow))
                .cornerRadius(8)
            }
            .navigationTitle("메인 화면")
            .environmentObject(counterModel) // 환경 객체로 counterModel 주입
        }
    }
}

// 하위뷰
struct CounterView: View {
    @EnvironmentObject var counterModel: SharedData // 부모 뷰에서 주입된 환경 객체를 참조

    var body: some View {
        VStack(spacing: 20) {
            Text("확인 ➡️ \(counterModel.count)")
                .font(.largeTitle)

            HStack(spacing: 20) {
                Button(action: {
                    counterModel.count += 1
                }) {
                    Text("+")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button(action: {
                    counterModel.count -= 1
                }) {
                    Text("-")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectTest()
            .environmentObject(SharedData())
    }
}
