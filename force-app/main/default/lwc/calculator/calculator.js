import { LightningElement ,track } from 'lwc';

export default class Calculator extends LightningElement {
@track firstNum;
@track secondNum;
@track result;

handleChangeFirst(event){
    this.firstNum = parseFloat(event.detail.value);
    console.log('this.firstNum == ', this.firstNum);

}
handleChangeSecond(event){
    this.secondNum = parseFloat(event.detail.value);
    console.log('this.secondNum == ', this.secondNum);

}
handleAdd(){
    this.result = this.firstNum + this.secondNum;
    console.log('this.result == ', this.result);
}
handleSubtract(){
    this.result = this.firstNum - this.secondNum;
    console.log('this.result == ', this.result);

}
handleMultiply(){
    this.result = this.firstNum * this.secondNum;
    console.log('this.result == ', this.result);
    
}
handleDivide(){
    this.result = this.firstNum / this.secondNum;
    console.log('this.result == ', this.result);
    
}
}