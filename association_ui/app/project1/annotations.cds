using MyService as service from '../../srv/asso_srv';

annotate service.CUSTOMERS with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'CustomerID',
            Value : CustomerID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customerName',
            Value : customerName,
        },
    ]
);
annotate service.CUSTOMERS with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CustomerID',
                Value : CustomerID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerName',
                Value : customerName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Sales Order',
            ID : 'SalesOrder',
            Target : 'SALESORDERS/@UI.LineItem#SalesOrder',
        },
    ]
);
annotate service.SALESORDERS with @(
    UI.LineItem #SalesOrder : [
    ]
);
annotate service.SALESORDERS with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'line itmes',
            ID : 'lineitmes',
            Target : 'LINEITEMS/@UI.LineItem#lineitmes',
        },
    ]
);
annotate service.LINEITEMS with @(
    UI.LineItem #lineitmes : [
    ]
);
