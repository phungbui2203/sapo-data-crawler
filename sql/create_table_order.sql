create table `order`
(
    id               bigint auto_increment
        primary key,
    created_on       timestamp                           null,
    code             varchar(50)                         not null,
    customer_code    varchar(50)                         not null,
    customer_name    text collate utf8_unicode_ci        null,
    sku              varchar(50)                         not null,
    product_name     text collate utf8_unicode_ci        null,
    lot_number       varchar(50)                         not null,
    date             varchar(50)                         not null,
    unit             varchar(50) collate utf8_unicode_ci not null,
    quantity         int                                 null,
    gift             int                                 null,
    price_sapo       float                               not null,
    price            float                               not null,
    price_before_tax float                               not null,
    stock            varchar(50)                         null,
    discount_sale    float                               null,
    discount_gift    float                               null,
    total            float                               null,
    unit_price       float                               null,
    paid             tinyint(1)                          null,
    note             text                                null,
    constraint order_uk_code_sku_lot
        unique (code, sku, lot_number)
)
    charset = latin1;
Create table `stock`
(
    id               bigint auto_increment
        primary key,
    created_on       timestamp                           null,
    product_sku      varchar(50)                         not null,
    product_name     text collate utf8_unicode_ci        null,
    source_location  text collate utf8_unicode_ci        not null,
    destination_location text collate utf8_unicode_ci    not null,
    lot_number       varchar(50)                         not null,
    manufacture_date timestamp                           null,
    expiration_date  timestamp                           null,
    type_st          varchar(50) collate utf8_unicode_ci not null,
    code             varchar(50)                         not null,
    product_unit     varchar(50) collate utf8_unicode_ci not null,
    quantity         int                                 null,
    note             text                                null,
    constraint stock_code_sku_lot_number
        unique (code, product_sku, lot_number)
)
