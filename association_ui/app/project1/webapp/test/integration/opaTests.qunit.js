sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'appspace/project1/test/integration/FirstJourney',
		'appspace/project1/test/integration/pages/CUSTOMERSList',
		'appspace/project1/test/integration/pages/CUSTOMERSObjectPage',
		'appspace/project1/test/integration/pages/SALESORDERSObjectPage'
    ],
    function(JourneyRunner, opaJourney, CUSTOMERSList, CUSTOMERSObjectPage, SALESORDERSObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('appspace/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCUSTOMERSList: CUSTOMERSList,
					onTheCUSTOMERSObjectPage: CUSTOMERSObjectPage,
					onTheSALESORDERSObjectPage: SALESORDERSObjectPage
                }
            },
            opaJourney.run
        );
    }
);