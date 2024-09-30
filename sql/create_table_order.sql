create table `order`
(
    id               bigint auto_increment
        primary key,
    created_on       timestamp   null,
    code             varchar(50) not null,
    customer_code    varchar(50) not null,
    customer_name    text        null,
    sku              varchar(50) not null,
    product_name     text        null,
    lot_number       varchar(50) not null,
    date             varchar(50) not null,
    unit             varchar(50) not null,
    quantity         int         null,
    gift             int         null,
    price_sapo       float       not null,
    price            float       not null,
    price_before_tax float       not null,
    stock            varchar(50) null,
    discount_sale    float       null,
    discount_gift    float       null,
    total            float       null,
    unit_price       float       null,
    paid             tinyint(1)  null,
    note             text        null,
    constraint order_uk_code_sku_lot
        unique (code, sku, lot_number)
);