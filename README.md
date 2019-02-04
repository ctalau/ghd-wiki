# GitHub + DITA based WIKI example (ghd-wiki)

This project shows a basic Wiki implementation based on GitHub as content repository, Netlify for building and hosting, XSLT as scripting language and DITA as the source format.

<https://ghd-wiki-ctalau.netlify.com/>

The content stays in the *master* branch in the `wiki` subfolder and you can place there DITA topics which will be automatically published by *netlify* to HTML using the `publish/publish.xsl` XSLT script.


To get the same functionality under your account, you need to click the button below:

<!-- Markdown snippet -->
[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/ctalau/ghd-wiki )

Fill the WEBHELP_LICENSE variable under *Environment Variables* by setting its value to the oXygen Webhelp license key, eclosed in quotes - this will be used by the publishing process to build the webhelp output. You can obtain a trial license from 
[http://oxygenxml.com/xml_webhelp/register.html](http://oxygenxml.com/xml_webhelp/register.html)  

##Note
Creating a new file requires you to paste the initial content of a topic, which you can find below:

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LW DITA Topic//EN" "topic.dtd">
<topic id="topic_ohd_twt_1x">
  <title>New topic</title>
  <body>
    <p>Content...</p>
  </body>
</topic>
```

