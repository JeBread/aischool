
// 배열 함수
let arr = ['양세영', '최영화', '조자연']
console.log(arr)

// (1) 마지막 인덱스 데이터 추가 : push()
arr.push('박병관')
console.log(arr)
// (2) 마지막 인덱스 데이터 삭제 : pop()
arr.pop()
console.log(arr)

// (3) 첫번째 인덱스 데이터 추가 : unshift()
arr.unshift('박병관')
console.log(arr)

// (4) 첫번째 인덱스 데이터 삭제 : shift()
arr.shift()
console.log(arr)

// (5) 특정 인덱스 데이터 추가/삭제 : splice()
arr.splice(1, 0, '이도연')
console.log(arr)

arr.splice(2, 1)
console.log(arr)

arr.splice(1, 1, '최영화', '박병관')
console.log(arr)