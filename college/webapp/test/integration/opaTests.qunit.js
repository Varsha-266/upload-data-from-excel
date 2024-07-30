sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/varsha/students/college/test/integration/FirstJourney',
		'com/varsha/students/college/test/integration/pages/studentsList',
		'com/varsha/students/college/test/integration/pages/studentsObjectPage',
		'com/varsha/students/college/test/integration/pages/courseObjectPage'
    ],
    function(JourneyRunner, opaJourney, studentsList, studentsObjectPage, courseObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/varsha/students/college') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThestudentsList: studentsList,
					onThestudentsObjectPage: studentsObjectPage,
					onThecourseObjectPage: courseObjectPage
                }
            },
            opaJourney.run
        );
    }
);