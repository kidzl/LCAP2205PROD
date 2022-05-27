using { MyTest as my } from '../db/schema';

@path : 'service/MyTest'
@requires : 'authenticated-user'
service MyTestService
{
    entity SrvBooks as
        projection on my.Books;

    entity SrvAuthors as
        projection on my.Authors;
}
