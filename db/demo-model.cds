namespace ust.demo;
using{cuid , managed ,temporal} from '@sap/cds/common';
using{ ust.reuse as reuse } from './reuse';
context master{
    entity student : reuse.address {
        key id: String(32);
        nameFirst: String(80);
        nameLast: String(80);
        age: Integer;
        class: Association to semester;
    }
    entity semester {
        key id : String(32);
        name: String(30);
        specialization: String(80);
        hod: String(44);
    }
 
    entity books {
        key code : String(32);
        name: localized String(80);
        author: String(44);
    }
}
context transaction {
    entity subs: cuid, managed , temporal{
        student: Association to one master.student;
        book: Association to one master.books
    }
}