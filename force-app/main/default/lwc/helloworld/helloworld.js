import { LightningElement ,track } from 'lwc';

export default class Helloworld extends LightningElement {
    message ="Hi i am from js file ";
    @track greeting ="Hello, Good Morning!";
    handleChange(event){
        this.greeting = event.target.value;
    }
    @track isShow = false;
    handleClick(){
        this.isShow = true;
    }
    handleClickHide(){
        this.isShow = false;
    
    }
    @track isHide=false;
    handleHide(){
        this.isHide = true;
    }
    @track toggleText = false;
    handleToggle(){
        this.toggleText = !this.toggleText;
    }
}