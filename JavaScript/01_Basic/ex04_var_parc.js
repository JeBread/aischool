/*
변수 선언 키워드 : var let const
var : 재선언O 재할당O
let : 재선언X 재할당O
const : 재선언X 재할당X
재선언 : 같은 변수 이름으로 다시 변수를 선언
재할당 : 선언된 변수에 다시 값을 할당
*/ 

// 실습
let userName = prompt('이름을 입력하세요.');
console.log("어서오세요!");
console.log(userName + '님, 환영합니다! ❤️');

const userClass = "Spring";
userName = "최영화";

// Template Literals(탬플릿 리터럴)
// `(백틱) ${변수명}내용 ${변수명1} 내용` 
console.log(`환영합니다!
${userClass}반의 ${userName}님입니다`);