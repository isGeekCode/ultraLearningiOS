import Foundation



//#2 연, 월, 일 을 입력하여 요일을 영문으로 출력하는 코드

/**
 - Parameters:
    - year: 입력된 해의 값을 할당받은 매개변수
    - month: 입력된 달의 값을 할당받은 매개변수
    - day: 입력된 날의 값을 할당받은 매개변수
**/
func calDayOfWeek(_ year: Int, _ month: Int, _ day: Int) -> String {
    let weekArray = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"] // 요일 배열
    
    // date 포맷 선언
    let date = DateFormatter()
    date.locale = Locale(identifier: "ko_kr")
    date.dateFormat = "yyyy-MM-dd"
    
    // 2019년 고정
    let inputDay = date.date(from: "\(year)-\(month)-\(day)") // 입력받은 날짜 date 설정
    let cal = Calendar(identifier: .gregorian)         // 그레고리 캘린더 선언
    let comps = cal.dateComponents([.weekday], from: inputDay!) // 입력 받은 날짜 캘린더 형식으로 변환
    
    return weekArray[comps.weekday! - 1] // 요일 반환
    
}


print("날짜를 입력하세요. ex)2019년 8월 14일 -> 2019 8 14")

// 입력값에서 " "로 분할해 inputDay라는 Array생성
let inputDay = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

//inputDay 배열의 번호를 지정해서 calDayOfWeek 함수에 넣어 출력하기
print(calDayOfWeek(inputDay[0], inputDay[1], inputDay[2]))





////#1 2019년 고정값으로 월, 일 을 입력하여 요일을 영문으로 출력하는 코드
//func calDayOfWeek(_ a:Int, _ b:Int) -> String {
//    let weekArray = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"] // 요일 배열
//
//    // date 포맷 선언
//    let date = DateFormatter()
//    date.locale = Locale(identifier: "ko_kr")
//    date.dateFormat = "yyyy-MM-dd"
//
//    // 2019년 고정
//    let inputDay = date.date(from: "2019-\(a)-\(b)") // 입력받은 날짜 date 설정
//    let cal = Calendar(identifier: .gregorian)         // 그레고리 캘린더 선언
//    let comps = cal.dateComponents([.weekday], from: inputDay!) // 입력 받은 날짜 캘린더 형식으로 변환
//
//    return weekArray[comps.weekday! - 1] // 요일 반환
//
//}
//
////테스트용 고정값
////print(solution(12, 9))
////"THU"
//
//
//print("날짜를 입력하세요. ex)2019년 8월 14일 -> 8 14")
//
//let inputDay = readLine()!.split(separator: " ").map {
//    Int(String($0))!
//}
//
////inputDay 배열의 번호를 지정해서 calDayOfWeek 함수에 넣어 출력하기
//print(calDayOfWeek(inputDay[0], inputDay[1])) //






// 윤년 계산하는 함수

// 윤년 : 아래의 조건 2가지를 모두 만족해야함
// 조건1: 4로 나누어 떨어짐
// 조건2: 400으로 나누어 떨어짐
// 조건3: 100으로 나누어 떨어지지 않아야함.
//

//윤년계산 함수 작성
//func checkLeap(year: Int) -> Bool {
//    var checkValue: Bool = false
//    if ((year % 4 == 0 && year % 100 != 0) && year % 400 == 0){ //
//        checkValue = true
//        print("\(year)년은 윤년이다")
//    }else {
//        checkValue = false
//        print("\(year)년은 평년이다")
//
//    }
//    return checkValue
//}
//
//print(checkLeap(year: 2000))
