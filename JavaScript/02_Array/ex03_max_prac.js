
// 주어진 데이터 담은 배열 생성
// 반복문 통해 최댓값 검색
// 알림 팝업창 출력

arr = [24, 54, 78, 13, 44]
maxV = arr[0]
for (e of arr) {
  if (e > maxV) {
    maxV = e
  }
  // maxV = Math.max(maxV, e)
  // e > maxV ? maxV = e : maxV
  // e > maxV && (maxV = e)
}
alert("최댓값 >> " + maxV)