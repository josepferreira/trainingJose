using {training.salesorder as salesorder} from '../schema/salesorder';
namespace training.salesorderviews;

define view SalesOrder as
    select from salesorder.TBL_SALES_ORDER {
        *
    };
