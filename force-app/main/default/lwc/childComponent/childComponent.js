import { LightningElement, api } from 'lwc';

export default class ChildComponent extends LightningElement {
    @api message;
    
    sendMessage() {
        const event = new CustomEvent('messagechange', {
            detail: 'Hello Parent! Message from Child'
        });

        this.dispatchEvent(event);
    }
}