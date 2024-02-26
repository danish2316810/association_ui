namespace danish;

entity CUSTOMERS {
    key CustomerID: Int16;
    customerName: String;
    SALESORDERS: Association to many SALESORDERS on SALESORDERS.fkey1=$self;

}
entity SALESORDERS {
    key salesOrderID: Int16;
    fkey1: Association to CUSTOMERS;
    TotalAmount: Decimal(15,2);
    date: Date;
    LINEITEMS:Association to many LINEITEMS on LINEITEMS.fkey2=$self;
}
entity LINEITEMS {
    key lineItemID:Int16;
    fkey2: Association to SALESORDERS;
    ProductID:Int16;
    Quantity:Int16;
    unitPrice:Decimal(15,2)
}