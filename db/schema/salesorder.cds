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

    entity TBL_ORDER {
        key ID: String(50);
        VALUE: Decimal;
        STATUS: training.common.STATUS_TYPE;

        ORDER_ITEM: Composition of many TBL_ORDER_ITEM on ORDER_ITEM.S_ORDER = $self;
    }

    entity TBL_ORDER_ITEM {
        key ID: String(50);
        PRODUCT: Association to training.products.TBL_PRODUCTS;
        S_ORDER: Association to TBL_ORDER;
        QUANTITY: Integer;
    }
}