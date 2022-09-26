﻿Add-WindowsFeature Web-Server -IncludeAllSubFeature

$webcontent =@"
<!-- #######  YAY, I AM THE SOURCE EDITOR! #########-->
<h1 style="color: #5e9ca0;">Welcome to web server&nbsp;<span style="color: #2b2301;">$($env:computername)&nbsp;</span>!</h1>
<h2 style="color: #2e6c80;">How to use our application:</h2>
<p>Paste your documents in the visual editor on the left or your HTML code in the source editor in the right. <br />Edit any of the two areas and see the other changing in real time.&nbsp;</p>
<p>Click the <span style="background-color: #2b2301; color: #fff; display: inline-block; padding: 3px 10px; font-weight: bold; border-radius: 5px;">Clean</span> button to clean your source code.</p>
<h2 style="color: #2e6c80;">Some useful features:</h2>
<ol style="list-style: none; font-size: 14px; line-height: 32px; font-weight: bold;">
<li style="clear: both;"><img style="float: left;" src="https://html-online.com/img/01-interactive-connection.png" alt="interactive connection" width="45" /> Interactive source editor</li>
<li style="clear: both;"><img style="float: left;" src="https://html-online.com/img/02-html-clean.png" alt="html cleaner" width="45" /> HTML Cleaning</li>
<li style="clear: both;"><img style="float: left;" src="https://html-online.com/img/03-docs-to-html.png" alt="Word to html" width="45" /> Word to HTML conversion</li>
<li style="clear: both;"><img style="float: left;" src="https://html-online.com/img/04-replace.png" alt="replace text" width="45" /> Find and Replace</li>
<li style="clear: both;"><img style="float: left;" src="https://html-online.com/img/05-gibberish.png" alt="gibberish" width="45" /> Lorem-Ipsum generator</li>
<li style="clear: both;"><img style="float: left;" src="https://html-online.com/img/6-table-div-html.png" alt="html table div" width="45" /> Table to DIV conversion</li>
</ol>
<p>&nbsp;</p>
<p><strong>&nbsp;</strong></p>
"@

Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $webcontent