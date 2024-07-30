using {college.students as students} from './students';
using {college.course as course} from './students';

annotate students with @(
    UI.LineItem: [
        {
            $Type:'UI.DataField',
            Value: s_id
        },
         {
            $Type:'UI.DataField',
            Value: name
        },
         {
            $Type:'UI.DataField',
            Value: address
        },
         {
            $Type:'UI.DataField',
            Value: email
        },
        {
            $Type:'UI.DataField',
            Value: marks
        },
    ]
);

annotate students with @(
    UI.FieldGroup #students: {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type:'UI.DataField',
            Value: s_id
        },
         {
            $Type:'UI.DataField',
            Value: name
        },
         {
            $Type:'UI.DataField',
            Value: address
        },
         {
            $Type:'UI.DataField',
            Value: email
        },
        {
            $Type:'UI.DataField',
            Value: marks
        },
    ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#students',
        },
         {
            $Type: 'UI.ReferenceFacet',
            ID: 'relatedCourseFacet',
            Label: 'Related Course',
            Target:'course/@UI.LineItem',
            
        }

    ],
    
);

annotate course with @(
    UI.LineItem: [
        {
            $Type:'UI.DataField',
             Label : 'Course ID',
             
            Value: ID
        },
        {
            $Type:'UI.DataField',
            Value: cname
        },
         {
            $Type:'UI.DataField',
            Value: s_id_ID
        }
    ]
);

annotate course with @(
    UI.FieldGroup #course: {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type:'UI.DataField',
            Label : 'Course ID',
            Value: ID
        },
        {
            $Type:'UI.DataField',
            Value: cname
        },
         {
            $Type:'UI.DataField',
            Value: s_id_ID
        }
    ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#course',
        }

    ],
    
);