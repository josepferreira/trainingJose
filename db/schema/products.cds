using from './common';
using from './salesorder';

context training.products {

    type PRODUCTS_TYPE : String(1) enum {
        SALES_PRODUCT = 'P';
        MATERIAL = 'M';
    }

    entity TBL_PRODUCTS {
        key ID: Integer;
        SHORT_DESCRIPTION: String(100);
        LONG_DESCRIPTION: String(500);
        BASE_PRICE: Double;
        STATUS: training.common.STATUS_TYPE;

        virtual SALES_PRICE: Decimal;

        PRODUCT_TYPE: Association to TBL_PRODUCT_TYPE;

        SALES_ORDER: Composition of many training.salesorder.TBL_SALES_ORDER on SALES_ORDER.PRODUCT = $self;

    }

    entity TBL_PRODUCT_TYPE {
        key ID: Integer;
        DESCRIPTION: String(100);

        PRODUCTS: Composition of many TBL_PRODUCTS on PRODUCTS.PRODUCT_TYPE = $self;
    }
}