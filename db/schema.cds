namespace MyTest;

using sap.workflow from './WorkflowObject';

entity Books
{
    key bookID : Integer;
    title : String(100);
    stock : Integer;
    price : Decimal(10,2);
    currency : String(100);
    author : Association to one Authors;
}

entity Authors
{
    key authorID : UUID
        @Core.Computed;
    createdAt : DateTime;
    createdBy : String(100);
    modifiedAt : DateTime;
    modifiedBy : String(100);
    books : Association to many Books on books.author = $self;
    date : String(100);
}
