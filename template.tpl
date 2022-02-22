___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.

___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "categories": ["ANALYTICS"],
  "securityGroups": [],
  "displayName": "Chartbeat Web Tracking Tag",
  "brand": {
    "id": "github-com-gtm-chartbeat",
    "displayName": "Chartbeat",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABI1BMVEUKmcwQnM0AAACHh4daWlpeXl5dXV1cXFx1dXWPj49sbGxqamqUlJShoaH////Y2NiJiYnZ2dnm5uZ2dnacnJxtbW1ubm5xcXEnpdEHlcoMmMyUlJRdXV1paWlycnIQnM2Hh4d1dXUzqdSPj49sbGx3d3eAgIBhYWFeXl5sbGz///////94eHhycnJdXV0Hl8uUlJR0dHTx8fGPj49fX194eHhzc3OPj49cXFyhoaFubm7///9nZ2eJiYnm5uZ2dnacnJyQkJBtbW1ubm51dXVdXV1xcXGJiYloaGgKmcwLmcwRnM2WlpZsbGxoaGiIiIhra2teXl5lZWUKmcxaWlpdXV1cXFwtp9Mup9NqampjY2MBlMpbW1tfX19tbW1xcXH////5GyL/AAAAUHRSTlMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwJZKsNFcyKfG1G6MTn/u/oQoHy/wS8443BqEe4CAgHs53Br1WB/KOWK0faH5hpOoyMicNbjIXCWWa+kAAAABYktHRA5vvTBPAAAAB3RJTUUH5QwCDRkf+3QypQAAAM9JREFUGNNljmkjAlEYhV9Hd6YoorQosrdQZFdaKLKUvNOdK5rq//8LM3e+cb6d58NzDhEtAFgMCGGYwgyC0ulNIBTIZD/Z2to2l2g0ygHLO5LZVqx2Dfoa7yG8L9k6ODzKF1SRSqVjhL5Znbgm/JQrNJmc4kxy1es4B7TjwuHLCPxocGXb17qtYFWDG4dvo1jDuojFNbiTXBMbiaBRN5P+j3t2GsIQTW61ffDg/nrsdJ+m6tkDKaCn3KfM8gX0+vbu+fuDmTX/GLqz+JN/4Bd6kCQ3XuUelgAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMS0xMi0wMlQxMzoyNToyOSswMDowMMT6p3UAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjEtMTItMDJUMTM6MjU6MjkrMDA6MDC1px/JAAAAAElFTkSuQmCC"
  },
  "description": "Start your real-time analysis with this Chartbeat tag.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "uid",
    "displayName": "UID",
    "simpleValueType": true,
    "notSetText": "A numerical id value associated with your Chartbeat account",
    "valueValidators": [
      {
        "type": "REGEX",
        "args": [
          "^\\d{3,6}$"
        ],
        "errorMessage": "Three to six digits",
        "enablingConditions": []
      },
      {
        "type": "NON_EMPTY"
      }
    ],
    "valueHint": "123456",
    "help": "A numerical id value associated with your Chartbeat account, three to six digits in length"
  },
  {
    "type": "TEXT",
    "name": "domain",
    "displayName": "Domain",
    "simpleValueType": true,
    "help": "This value should be set to the Chartbeat site id (site name) for your website. This is usually the root domain without http or \u0027www.\u0027 prepended",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "valueHint": "mysite.com",
    "notSetText": "Chartbeat site name"
  },
  {
    "type": "GROUP",
    "name": "recommendedGroup",
    "displayName": "Recommended Fields And Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "sections",
        "displayName": "Sections",
        "simpleValueType": true,
        "notSetText": "Page sections",
        "canBeEmptyString": true,
        "help": "10 comma-separated sections max, 64 characters per section. Take a look at the \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#sections-and-authors\"\u003eofficial docs\u003c/a\u003e for more information",
        "valueHint": "News,Sports,Local",
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^[^,]*(,.*)*$"
            ],
            "errorMessage": "Please enter a comma separated list"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "authors",
        "displayName": "Authors",
        "simpleValueType": true,
        "canBeEmptyString": true,
        "notSetText": "Page authors",
        "help": "10 comma-separated authors max, 63 characters per author. Take a look at the \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#sections-and-authors\"\u003eofficial docs\u003c/a\u003e for more information",
        "valueHint": "Megan Summers,Kevin Smith",
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^[^,]*(,.*)*$"
            ],
            "errorMessage": "Please enter a comma separated list"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "canonical",
        "checkboxText": "Use path portion of your canonical URL for the Chartbeat page path",
        "simpleValueType": true,
        "displayName": "Use Canonical",
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#canonical-page-path\"\u003ethe official docs\u003c/a\u003e",
        "defaultValue": true
      },
      {
        "type": "CHECKBOX",
        "name": "canonicalDomain",
        "checkboxText": "Use domain portion of your canonical URL for the Chartbeat page path",
        "simpleValueType": true,
        "displayName": "Use Canonical Domain",
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#canonical-page-path\"\u003ethe official docs\u003c/a\u003e",
        "defaultValue": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "additionalGroup",
    "displayName": "Additional Fields and Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "customPath",
        "displayName": "Custom Path",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#custom-path\"\u003ethe official docs\u003c/a\u003e"
      },
      {
        "type": "TEXT",
        "name": "pageTitle",
        "displayName": "Page Title",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#page-title\"\u003ethe official docs\u003c/a\u003e"
      },
      {
        "type": "TEXT",
        "name": "contentType",
        "displayName": "Content Type",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#content-type\"\u003ethe official docs\u003c/a\u003e"
      },
      {
        "type": "CHECKBOX",
        "name": "mobileApp",
        "checkboxText": "Mobile App",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#mobile-app\"\u003ethe official docs\u003c/a\u003e"
      },
      {
        "type": "TEXT",
        "name": "virtualReferrer",
        "displayName": "Virtual Referrer",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#virtual-referrer\"\u003ethe official docs\u003c/a\u003e"
      },
      {
        "type": "CHECKBOX",
        "name": "noCookies",
        "checkboxText": "No Cookies",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#no-cookies\"\u003ethe official docs\u003c/a\u003e"
      },
      {
        "type": "TEXT",
        "name": "pathAlias",
        "displayName": "Path Alias",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#path-alias\"\u003ethe official docs\u003c/a\u003e"
      },
      {
        "type": "TEXT",
        "name": "sponsorName",
        "displayName": "Sponsor Name",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#sponsor-name\"\u003ethe official docs\u003c/a\u003e"
      },
      {
        "type": "CHECKBOX",
        "name": "scrollElement",
        "checkboxText": "Scroll Element",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#scroll-element\"\u003ethe official docs\u003c/a\u003e"
      },
      {
        "type": "TEXT",
        "name": "cookieDomain",
        "displayName": "Cookie Domain",
        "simpleValueType": true,
        "help": "If unsure, please have a look at \u003ca href\u003d\"https://docs.chartbeat.com/cbp/tracking/standard-websites/configuration-variables#cookie-domain\"\u003ethe official docs\u003c/a\u003e"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const setInWindow = require('setInWindow');
const injectScript = require('injectScript');

// required
const uid = data.uid;
const domain = data.domain;
// recommended
const canonical = data.canonical;
const canonicalDomain = data.canonicalDomain;
const sections = data.sections;
const authors = data.authors;
// additional
const customPath = data.customPath;
const pageTitle = data.pageTitle;
const contentType = data.contentType;
const mobileApp = data.mobileApp;
const virtualReferrer = data.virtualReferrer;
const noCookies = data.noCookies;
const pathAlias = data.pathAlias;
const sponsorName = data.sponsorName;
const scrollElement = data.scrollElement;
const cookieDomain = data.cookieDomain;
 
// remove empty entries from comma separated list, truncate entries (> 64 chars) and list (> 10)
function toChartbeatListFormat(comSepList) {
  if (!comSepList) return undefined;
  
  return comSepList.split(',')
    .map(e => {
      let et = e.trim();
      if (et.length > 64) et = et.substring(0, 64);
      return et;
    })
    .filter(e => e.length > 0)
    .slice(0, 10)
    .join(',');
}

const config = {};
config.uid = uid;
config.domain = domain;
config.useCanonical = canonical;
config.useCanonicalDomain = canonicalDomain;
config.sections = toChartbeatListFormat(sections);
config.authors = toChartbeatListFormat(authors);
config.customPath = customPath;
config.pageTitle = pageTitle;
config.mobileApp = mobileApp;
config.virtualReferrer = virtualReferrer;
config.noCookies = noCookies;
config.pathAlias = pathAlias;
config.sponsorName = sponsorName;
config.scrollElement = scrollElement;
config.cookieDomain = cookieDomain;

setInWindow('_sf_async_config', config, true);

const url = 'https://static.chartbeat.com/js/chartbeat.js';
injectScript(url, data.gtmOnSuccess, data.gtmOnFailure, url);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_sf_async_config"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://static.chartbeat.com/js/chartbeat.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: API Call Flow
  code: |-
    const mockData = {
      uid: '12345',
      domain: 'dummy.info'
    };

    runCode(mockData);

    assertApi('setInWindow').wasCalled();
    assertApi('injectScript').wasCalled();

    assertApi('gtmOnSuccess').wasCalled();
- name: Remove Empty Authors
  code: |-
    const mockData = {
      authors: 'author1   ,,author2,,,'
    };

    mock('setInWindow', function(key, value, overrideExisting) {
      assertThat(value.authors).isEqualTo('author1,author2');
    });

    runCode(mockData);

    assertApi('setInWindow').wasCalled();
- name: Max 10 Sections
  code: |-
    const mockData = {
      sections: 's1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12'
    };

    mock('setInWindow', function(key, value, overrideExisting) {
      assertThat(value.sections).isEqualTo('s1,s2,s3,s4,s5,s6,s7,s8,s9,s10');
    });

    runCode(mockData);

    assertApi('setInWindow').wasCalled();
- name: Max 64 Chars per Author
  code: |-
    const mockData = {
      authors: 'gdjfhgkgeurhggkjjdkhjkdfhgkjdfhgjkdhadhjagiurufhurefhfelrsdhkjjfghrzgrefklljhjk'
    };

    assertThat(mockData.authors.length).isGreaterThan(64);

    mock('setInWindow', function(key, value, overrideExisting) {
      assertThat(value.authors.length).isEqualTo(64);
    });

    runCode(mockData);

    assertApi('setInWindow').wasCalled();
- name: Set _sf_async_config
  code: |-
    const mockData = {};

    mock('setInWindow', function(key, value, overrideExisting) {
      assertThat(key).isEqualTo('_sf_async_config');
    });

    runCode(mockData);

    assertApi('setInWindow').wasCalled();
setup: |-
  // no need to load/inject real js for test purposes
  mock('injectScript', function(url, suc, err) {
    suc();
  });


___NOTES___

Created on 22.2.2022, 10:44:13


