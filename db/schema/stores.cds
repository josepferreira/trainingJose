using from './common';
using from './salesorder';
using from './products';

context training.stores {

    entity TBL_STORES {
        key ID: String(50);
        NAME: String(100);
        REGION: String(500);
        PHONE: String(20);
        STATUS: training.common.STATUS_TYPE;

        SALES_ORDER: Composition of many training.salesorder.TBL_SALES_ORDER on SALES_ORDER.STORE = $self;
        PRODUCTS: Composition of many training.products.TBL_PRODUCTS on PRODUCTS.STORE = $self;
    }
}