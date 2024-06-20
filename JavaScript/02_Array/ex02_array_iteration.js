
// 배열에 저장된 데이터를 반복문으로 출력

// (1) for문
let arr = ['상제', '창선', '준영', '재옥']

for ( let i = 0; i < arr.length; i++) {
  console.log(arr[i])
}

// (2) for-of문
let arr2 = ['삼겹살', '샌드위치', '샐러드파스타', '닭']
for (let e of arr2) {
  console.log(e)
}

// (3) forEach문
let arr3 = ['JavaScript', 'Java', 'DB']
arr3.forEach(e => {
  console.log(e)
})
arr3.forEach((e, i) => {
  console.log(i , e)
})

// map
arr.map(e => {
  console.log(e)
})

