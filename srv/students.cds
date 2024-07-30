using {com.varsha.students as STUDENT} from '../db/schema';

service college {
    entity students as projection on STUDENT.students;
     entity course as projection on STUDENT.course;
}

annotate college.students with @odata.draft.enabled;