CREATE TABLE user_tb(
    id int auto_increment primary key,
    username varchar unique not null,
    password varchar not null,
    fullname varchar not null,
    created_at timestamp not null
);

CREATE TABLE account_tb(
    id int auto_increment primary key,
    username bigint unique not null,
    password varchar not null,
    balance bigint not null, -- 최종잔액
    user_id int,
    created_at timestamp not null
);

-- 계좌의 히스토리 (입출금 내역, 현재 잔고, 날짜)
CREATE TABLE history_tb(
    id int auto_increment primary key,
    amount bigint not null, -- 돈 (ATM)
    a_balance bigint, -- 금액, 잔액
    d_balance bigint, -- 금액, 잔액
    w_account_id int, -- 1번 계좌(출금) number로 하면 나중에 프라이머리티를 찾기가 힘들다.
    d_account_id int, -- 2번 계좌(입금) number로 하면 나중에 프라이머리티를 찾기가 힘들다.
    created_at timestamp not null
);
