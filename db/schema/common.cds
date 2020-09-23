using {
    sap,
    Currency,
    temporal,
    managed
} from '@sap/cds/common';

extend sap.common.Currencies with {
    numcode: Integer;
    exponent: Integer;
    minor: String;
}

context training.common {
    type STATUS_TYPE : String(1) enum {
        open = 'O';
        closed = 'C';
        draft = 'D';
    }
}