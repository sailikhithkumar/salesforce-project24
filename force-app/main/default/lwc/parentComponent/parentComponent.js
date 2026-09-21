import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {

    message = 'Hello Child!';

    handleChange(event) {
        this.message = event.target.value;
    }
}