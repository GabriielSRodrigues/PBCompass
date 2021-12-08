const newman = require('newman');

newman.run({
    collection: 'LojinhaAPI.postman_collection.json', // Collection URL from a public link or the Postman API can also be used    
    environment: 'Lojinha API web.postman_environment.json',
    reporters: ['htmlextra'],
    iterationCount: 1,
    reporter: {
        htmlextra: {
            showOnlyFails: false,
            skipHeaders: "Authorization",
            title: "Report LojinhaAPI Sprint 6",            
            titleSize: 5, 
            // export: './report.html',            
            // template: './template.hbs'            
            // logs: true,            
            // showOnlyFails: true,            
            // noSyntaxHighlighting: true,            
            // testPaging: true,            
            // browserTitle: "My Newman report",            
            // title: "My Newman Report",            
            // titleSize: 4,            
            // omitHeaders: true,            
            // skipHeaders: "Authorization",           
            // omitRequestBodies: true,            
            // omitResponseBodies: true,            
            // hideRequestBody: ["Login"],            
            // hideResponseBody: ["Auth Request"],            
            // showEnvironmentData: true,            
            // skipEnvironmentVars: ["API_KEY"],            
            // showGlobalData: true,            
            // skipGlobalVars: ["API_TOKEN"],            
            // skipSensitiveData: true,            
            // showMarkdownLinks: true,            
            // showFolderDescription: true,            
            // timezone: "Australia/Sydney",            
            // skipFolders: "folder name with space,folderWithoutSpace",            
            // skipRequests: "request name with space,requestNameWithoutSpace"        }
        }
    }
});
