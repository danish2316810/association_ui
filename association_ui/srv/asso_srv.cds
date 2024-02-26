using {danish} from '../db/asso';

service MyService {

    entity CUSTOMERS as projection on danish.CUSTOMERS;
    entity SALESORDERS as projection on danish.SALESORDERS;
    entity LINEITEMS as projection on danish.LINEITEMS;
}