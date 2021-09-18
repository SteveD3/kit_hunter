### 18-September-2021
- [x] Updated Author Indicators
* Added new author tags, based on recent phishing kit scans.

- [x] Updated General Indicators
* Added new general tags, based on recent phishing kit scans.

- [x] Updated Brand Indicators
* Added Rackspace to the tag list, after recent phishing scans.

- [x] Updated Chalbhai Indicators
* Added an indicator based on the Chalbhai templating, kit was discovered on 9-13-2021.
* Removed a generic indicator due to it being recycled across multiple non-Chalbhai kits.

- [x] Updated Function Indicators
* Moved one call from the Chalbhai indicator tag file to Functions, as it was overly generic.

- [x] Updated Bank of America Indicators
* Updated BOA indicator tag file to add new email alert tag.

- [x] Updated Telegram Exfiltration Indicators
* Added new bot token function calls taken from RANGER phishing kits.
* Added new chat ID function calls taken from RANGER phishing kits.
* Updated known bot token list

- [x] Updated URL Indicators
* Added new URLs based on recent phishing scans and development

---
### 12-September-2021
- [x] Added INTERAC detection rules for financial phishing
* Commonly seen in Canada, these kits target a number of financial institutions.

- [x] Updated Author Indicators
* Added new author tags, based on recent phishing kit scans.

- [x] Updated Brand Indicators
* Added several new banks to the tag list, based on recent phishing scans.

- [x] Updated Function Indicators
* Consolidated the Firebase detections, and added new detections based on the CodeIgnighter framework.
* Added new kit function calls, based on recent phishing scans.

- [x] Updated URL Indicators
* Added a new URL based on recent phishing scans

- [x] Updated Telegram Exfiltration Indicators
* Updated known bot token list
* Added new chat ID function calls

- [x] Updated Quick Scan Indicators
* Shortened the Quick Scan tag file
  - Shortened the Author elements to focus on the most common authors, based on recent scans and testing.
  - Shortened the Brand elements extensively to speed up scanning.
  - Shortened the URL elements extensively to speed up scanning.
  - Shortened the General elements extensively to speed up scanning.
