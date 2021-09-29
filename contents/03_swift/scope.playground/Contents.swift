// 예제 구두를 닦아서 용돈을 받는 아이
// 평소 용돈은 30000원 이지만 구두를 닦으면 구두당 5000원을 더 준다. 6켤레부터는 2배의 용돈
// 10개를 닦았다면 이번달 용돈은?

var howManyShoes = 10
let payPerShoes = 5000 // 구두 한켤레당 용돈

var allowance = 30000 //정기적인 용돈

if howManyShoes > 5 {
    let extraShoes = howManyShoes - 5
    allowance += extraShoes * payPerShoes * 2 //초과분의 값 먼저 추가
    howManyShoes -= extraShoes
}

allowance += howManyShoes * payPerShoes

print( "이번달 용돈은 \(allowance)원 입니다.")
