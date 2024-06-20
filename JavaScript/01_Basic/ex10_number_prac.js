// 랜덤수 뽑기
let randomNum = parseInt(Math.random() * 100) + 1;

while(true) {
    let num = Number(prompt('숫자를 입력하세요.'));
    if(num === randomNum) {
        alert(`${randomNum} 정답입니다. 축하합니다~~`);
        break;
    }else if(num < randomNum) {
        alert("입력한 수보다 큰 수 입니다");
    }else {
        alert("입력한 수보다 작은 수 입니다");
    }
}
