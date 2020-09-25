using {training.stores as stores} from '../schema/stores';
namespace training.storeviews;

define view Store as
    select from stores.TBL_STORES {
        *
    };
