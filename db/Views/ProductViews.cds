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

/*define view ProductWithType2 as
    select from products.TBL_PRODUCTS as p
    inner join products.TBL_PRODUCT_TYPE as pt
    on p.PRODUCT_TYPE = pt.ID 
    {
        p.ID,
        p.SHORT_DESCRIPTION,
        p.LONG_DESCRIPTION,
        pt.DESCRIPTION as PRODUCT_TYPE,
        p.BASE_PRICE
    };*/