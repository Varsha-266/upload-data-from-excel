sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.varsha.students.college',
            componentId: 'studentsObjectPage',
            contextPath: '/students'
        },
        CustomPageDefinitions
    );
});