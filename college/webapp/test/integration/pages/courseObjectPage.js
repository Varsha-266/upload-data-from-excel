sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.varsha.students.college',
            componentId: 'courseObjectPage',
            contextPath: '/students/course'
        },
        CustomPageDefinitions
    );
});