
// 화살표 함수 : ES6에서 추가된 arrow function
intro = (name) => {
  console.log(`Spring반에서 ${name}를 맡은 지호입니다.`);
}

intro('귀염둥이');

// 변수 없으면 빈 괄호  함수명 = () => {}
// 변수 하나면 괄호 생략가능    함수명 = 변수 => {}

//  실행문이 1개면 {}, return 생략 가능
intro2 = name => `Spring반에서 ${name}를 맡은 지호입니다.`;

console.log(intro2('귀염둥이'));

