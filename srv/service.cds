using {training.common as common} from '../db/schema/common';
using {training.products as products} from '../db/schema/products';
using {training.salesorder as salesorder} from '../db/schema/salesorder';
using {training.stores as stores} from '../db/schema/stores';
using { training.productviews as productviews } from '../db/Views/ProductViews';

service MyServices {
    entity Products as projection on products.TBL_PRODUCTS;
    entity Stores as projection on stores.TBL_STORES;
    entity SalesOrder as projection on salesorder.TBL_SALES_ORDER;
    entity ProductType as projection on products.TBL_PRODUCT_TYPE;
    entity ProductWithType as projection on productviews.ProductWithType;
    action teste(ID:Integer) returns String;
}