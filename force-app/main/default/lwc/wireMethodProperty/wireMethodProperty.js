import { LightningElement ,wire} from 'lwc';
import getContactList from '@salesforce/apex/ContactHandler.getContactList'

export default class WireMethodProperty extends LightningElement {
    @wire(getContactList)
    getcontact;
}