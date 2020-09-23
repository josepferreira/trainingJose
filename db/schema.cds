using from './schema/common';
using from './schema/products';
using from './schema/salesorder';
using from './schema/stores';

entity Base
{
    key ID : Integer;
    CREATE_DATE : Timestamp;
}
