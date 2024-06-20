// 반복문

let num1 = 0;
console.log("(1) while문");
while(num1<3){
    console.log(num1);
    num1++;
}

let num2 = 3;
while(true) {
    console.log(num2);
    num2++;
    if(num2 === 6) {
        break;
    }

}

console.log("(2) for문");
for(let num3 = 6; num3 < 9; num3++) {
    console.log(num3);
}