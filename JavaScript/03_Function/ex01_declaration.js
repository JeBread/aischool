
// 함수 : 특정 기능을 수행하는 소스 코드를 하나로 묶어서
// 필요할 때마다 사용하기 위한 구조

// 함수 선언
function intro() {
  console.log('Spring반에서 막내를 맡은 지호입니다.')
}

// 함수 호출
intro();

// 매개변수
function intro2(name) {
  console.log(`Spring반에서 막내를 맡은 ${name}입니다.`)
}

intro2('세영');

// 매개변수 + return문
function intro3(name) {
  return `Spring반에서 막내를 맡은 ${name}입니다.`
}

console.log(intro3('영화'))