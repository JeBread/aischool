// 1. 자료형
/*
1) number : 정수, 실수등 산술연산 가능한 자료형
2) string : 문자열 자료형
3) boolean : true, false 논리자료형
4) undefined : 값이 존재하지 않는 속성
5) null : 값을 의도적으로 나타내지 않을 때
*/
let val1;
console.log("선언만", val1);
val1 = "data";
console.log("할당후",val1);
val1 = null;
console.log("null값 할당",val1);

// 2. 형변환
/*
1) parseFloat(변수) : 실수로 변환 
2) parseInt(변수) : 정수로 변환
3) number(변수) : 숫자로 변환
4) String(변수) : 문자열로 변환
*/
let val2 = "3.14";
console.log(typeof(val2), val2);
val2 = parseFloat(val2);
console.log(typeof(val2),"parseFloat", val2);
val2 = parseInt(val2);
console.log(typeof(val2),"parseInt", val2);

let val3 = "5";
let val4 = 100;
console.log(val3,"Number()",Number(val3));
console.log(val4,"String()",String(val4));
