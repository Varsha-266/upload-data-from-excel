namespace com.varsha.students;
using { managed} from '@sap/cds/common';

entity students: managed {
    Key ID : UUID;
    @title:'Student id'
    s_id: String(10);
    @title: 'Name'
    name: String(40);
    @title: 'Address'
    address: String(20);
    @title: 'Email'
    email: String(30);
    @title: 'Marks'
    marks: Integer;
    course: Composition of many course on course.s_id=$self;
}

entity course: managed {
    key ID : UUID;
    @title: 'Course name'
    cname: String(20);
    @title: 'Student id'
    s_id:Association to one students;
}