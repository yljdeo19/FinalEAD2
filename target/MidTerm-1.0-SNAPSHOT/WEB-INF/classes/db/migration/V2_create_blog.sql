create table
    if not exists blog(
                          blogid serial primary key,
                          title varchar(255),
    category varchar(255),
    description varchar(255),
    userid int,
    foreign key(userid) references users(id)
    )