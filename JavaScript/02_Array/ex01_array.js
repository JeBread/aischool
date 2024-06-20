
// 배열 : 여러 변수를 하나의 묶음으로 다루는 자료구조

//  (1) 배열 생성
let numList = [];
numList = [1, 2, 3];
numList.push(4);
console.log(numList);
console.log(numList.pop());
console.log(numList);

let numList2 = [5, 6, 7];
console.log(numList2)

let numList3 = new Array(5);
console.log(numList3)

numList3 = [1,2,3,4,5,6,7];
console.log(numList3);

// (2) 배열 요소 접근 (index)
let numList4 = [7,8,9]
console.log(numList4[0])

let numList5 = [];
numList5[0] = 1
numList5[1] = "가나다"
numList5[2] = true
console.log(numList5)

for (let i = 0; i < numList5.length; i++) {
    console.log(numList5[i])
}

numList5.forEach(e => {
  console.log(e);
});

numList5.map(e => {
  console.log(e);
})

// (3) 배열의 길이
console.log(numList5.length)