using from './common';
using from './salesorder';

context training.stores {

    entity TBL_STORES {
        key ID: Integer;
        NAME: String(100);
        REGION: String(500);
        PHONE: String(20);
        STATUS: training.common.STATUS_TYPE;

        SALES_ORDER: Composition of many training.salesorder.TBL_SALES_ORDER on SALES_ORDER.STORE = $self;
    }
}