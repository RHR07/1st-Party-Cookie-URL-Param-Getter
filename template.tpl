___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "1st Party Cookie \u0026 URL Param Getter",
  "description": "Fetches cookies value from 1st party cookies or URL parameters across major ads platforms.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "platform",
    "displayName": "Select Platform",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "facebook",
        "displayValue": "Facebook"
      },
      {
        "value": "pinterest",
        "displayValue": "Pinterest"
      },
      {
        "value": "tiktok",
        "displayValue": "TikTok"
      },
      {
        "value": "snapchat",
        "displayValue": "Snapchat"
      },
      {
        "value": "bing",
        "displayValue": "Bing"
      },
      {
        "value": "linkedin",
        "displayValue": "Linkedin"
      },
      {
        "value": "twitter",
        "displayValue": "Twitter"
      },
      {
        "value": "google",
        "displayValue": "Google Ads"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "RADIO",
    "name": "facebook",
    "displayName": "Cookie Name",
    "radioItems": [
      {
        "value": "_fbc",
        "displayValue": "fbc"
      },
      {
        "value": "_fbp",
        "displayValue": "fbp"
      }
    ],
    "simpleValueType": true,
    "help": "Select the cookie you need from the list below.",
    "enablingConditions": [
      {
        "paramName": "platform",
        "paramValue": "facebook",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "pinterest",
    "displayName": "Cookie Name",
    "radioItems": [
      {
        "value": "_epic",
        "displayValue": "epic"
      }
    ],
    "simpleValueType": true,
    "help": "Select the cookie you need from the list below.",
    "enablingConditions": [
      {
        "paramName": "platform",
        "paramValue": "pinterest",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "tiktok",
    "displayName": "Cookie Name",
    "radioItems": [
      {
        "value": "ttclid",
        "displayValue": "ttclid"
      },
      {
        "value": "_ttp",
        "displayValue": "ttp"
      }
    ],
    "simpleValueType": true,
    "help": "Select the cookie you need from the list below.",
    "enablingConditions": [
      {
        "paramName": "platform",
        "paramValue": "tiktok",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "snapchat",
    "displayName": "Cookie Name",
    "radioItems": [
      {
        "value": "_scid",
        "displayValue": "scid"
      },
      {
        "value": "_scclid",
        "displayValue": "scclid"
      }
    ],
    "simpleValueType": true,
    "help": "Select the cookie you need from the list below.",
    "enablingConditions": [
      {
        "paramName": "platform",
        "paramValue": "snapchat",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "bing",
    "displayName": "Cookie Name",
    "radioItems": [
      {
        "value": "_uetmsclkid",
        "displayValue": "uetmsclkid"
      },
      {
        "value": "msclkid",
        "displayValue": "msclkid"
      }
    ],
    "simpleValueType": true,
    "help": "Select the cookie you need from the list below.",
    "enablingConditions": [
      {
        "paramName": "platform",
        "paramValue": "bing",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "linkedin",
    "displayName": "Cookie Name",
    "radioItems": [
      {
        "value": "li_fat_id",
        "displayValue": "li_fat_id"
      }
    ],
    "simpleValueType": true,
    "help": "Select the cookie you need from the list below.",
    "enablingConditions": [
      {
        "paramName": "platform",
        "paramValue": "linkedin",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "twitter",
    "displayName": "Cookie Name",
    "radioItems": [
      {
        "value": "twclid",
        "displayValue": "twclid"
      }
    ],
    "simpleValueType": true,
    "help": "Select the cookie you need from the list below.",
    "enablingConditions": [
      {
        "paramName": "platform",
        "paramValue": "twitter",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "google",
    "displayName": "Cookie Name",
    "radioItems": [
      {
        "value": "_gcl_aw",
        "displayValue": "gclid"
      }
    ],
    "simpleValueType": true,
    "help": "Select the cookie you need from the list below.",
    "enablingConditions": [
      {
        "paramName": "platform",
        "paramValue": "google",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

function getCookieValue(name) {
  var cookies = require('getCookieValues')(name);
  return cookies.length > 0 ? cookies[0] : undefined;
}
function getTrackingValue(platform) {
  switch(platform) {
    case 'facebook':
      return getCookieValue('_fbc') || getCookieValue('fbc') || getCookieValue('_fbp');
    case 'pinterest':
      return getCookieValue('_epic') || getCookieValue('epic');
    case 'tiktok':
      return getCookieValue('ttclid') || getCookieValue('_ttp') || getCookieValue('ttp');
    case 'snapchat':
      return getCookieValue('_scid') || getCookieValue('_scclid') || getCookieValue('scid') || getCookieValue('scclid');
    case 'bing':
      return getCookieValue('_uetmsclkid') || getCookieValue('msclkid') || getCookieValue('MR');
    case 'linkedin':
      return getCookieValue('li_fat_id') || getCookieValue('li_gc');
    case 'twitter':
      return getCookieValue('twclid');
    case 'google':
      return getCookieValue('_gcl_aw');
    default:
      return undefined;
  }
}
return getTrackingValue(data.platform);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "any"
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

scenarios: []
setup: |-
  var Cookies = {
    '_fbc': 'fb.1.234567890.abcdefghij',
    'fbc': 'fb.1.234567890.abcdefghij',
    '_fbp': 'fb.1.987654321.klmnopqrst',
    '_epic': 'pinterest_1234567890abcdef',
    'epic': 'pinterest_abcdef1234567890',
    'ttclid': 'ttclid_1234567890abcdef',
    '_ttp': 'ttp_abcdef1234567890',
    'ttp': 'ttp_1234567890abcdef',
    '_scid': 'scid_1234567890abcdef',
    '_scclid': 'scclid_abcdef1234567890',
    'scid': 'scid_abcdef1234567890',
    'scclid': 'scclid_1234567890abcdef',
    '_uetmsclkid': 'uetmsclkid_1234567890abcdef',
    'msclkid': 'msclkid_abcdef1234567890',
    'MR': 'MR_1234567890abcdef',
    'li_fat_id': 'li_fat_id_1234567890abcdef',
    'li_gc': 'li_gc_abcdef1234567890',
    'twclid': 'twclid_1234567890abcdef',
    'gclid': 'gclid_abcdef1234567890'
  };
  if (!data.platform) {
    data.platform = 'facebook';
  }
  function getFakeCookie(name) {
    return fakeCookies[name];
  }
  switch(data.platform) {
    case 'facebook':
      data.cookieName = '_fbc';
      data.cookieValue = getFakeCookie('_fbc');
      break;
    case 'pinterest':
      data.cookieName = '_epic';
      data.cookieValue = getFakeCookie('_epic');
      break;
    case 'tiktok':
      data.cookieName = 'ttclid';
      data.cookieValue = getFakeCookie('ttclid');
      break;
    case 'snapchat':
      data.cookieName = '_scid';
      data.cookieValue = getFakeCookie('_scid');
      break;
    case 'bing':
      data.cookieName = '_uetmsclkid';
      data.cookieValue = getFakeCookie('_uetmsclkid');
      break;
    case 'linkedin':
      data.cookieName = 'li_fat_id';
      data.cookieValue = getFakeCookie('li_fat_id');
      break;
    case 'twitter':
      data.cookieName = 'twclid';
      data.cookieValue = getFakeCookie('twclid');
      break;
    case 'google':
      data.cookieName = 'gclid';
      data.cookieValue = getFakeCookie('gclid');
      break;
    default:
      data.cookieName = '';
      data.cookieValue = undefined;
      break;
  }


___NOTES___

Created on 16/05/2025, 23:29:48


