using from './common';
using from './products';
using from './stores';

context training.salesorder {
    entity TBL_SALES_ORDER {
        key ID: String(50);
        QUANTITY: Integer;
        SALES_PRICE: Decimal;
        STATUS: training.common.STATUS_TYPE;

        STORE: Association to training.stores.TBL_STORES;
        PRODUCT: Association to training.products.TBL_PRODUCTS;
    }
}