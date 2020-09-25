using {training.products as products} from '../schema/products';
namespace training.productviews;

define view ProductWithType as
    select from products.TBL_PRODUCTS {
        ID,
        SHORT_DESCRIPTION,
        LONG_DESCRIPTION,
        PRODUCT_TYPE.DESCRIPTION as PRODUCT_TYPE,
        BASE_PRICE
    };
