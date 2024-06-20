// 1. 입력창을 통한 입력
// "출력질문", ("입력창에 출력할 기본 값")
// 리턴타입 : string
let dinner = prompt("저녁 뭐 먹을래요?", "피자");
console.log(dinner);

// 2. 확인 및 취소를 통한 입력
// 확인 - true / 취소 - false
// 리턴타입 : boolean
let coffee = confirm("커피도 마실래요?");
console.log(coffee);

// 실습

let name = prompt("이름을 입력하세요");
console.log(name+"님, 환영합니다!");
