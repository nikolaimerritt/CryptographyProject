<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
<!-- Horde: Copyright 2000-2009 The Horde Project.  Horde is under the LGPL. -->
<!--                  Horde Project: http://www.horde.org/                   -->
<!--    GNU Library Public License: http://www.fsf.org/copyleft/lgpl.html    -->
<html lang="en-GB"><head>
<script type="text/javascript" src="/horde/js/horde.js"></script>
<script type="text/javascript" src="/horde/js/prototype.js"></script>
<script type="text/javascript" src="/horde/js/accesskeys.js"></script>
<title>Pdrives Login :: Log in</title>
<link href="/horde/themes/graphics/favicon.ico" rel="SHORTCUT ICON" />
<link href="/horde/themes/screen.css" rel="stylesheet" type="text/css" />
<link href="/horde/themes/bluewhite/screen.css" rel="stylesheet" type="text/css" />
<link href="/horde/themes/safari.css" rel="stylesheet" type="text/css" />
</head>

<body>
<script type="text/javascript">

function setFocus()
{
    try {
        if (document.horde_login.horde_user.value == "") {
            document.horde_login.horde_user.focus();
        } else {
            document.horde_login.horde_pass.focus();
        }
    } catch (e) {}
}

function submit_login()
{
    if (document.horde_login.horde_user.value == "") {
        alert("Please provide your username and password");
        document.horde_login.horde_user.focus();
        return false;
    } else if (document.horde_login.horde_pass.value == "") {
        alert("Please provide your username and password");
        document.horde_login.horde_pass.focus();
        return false;
    } else {
        document.horde_login.loginButton.disabled = true;
        document.horde_login.submit();
        return true;
    }
}

</script>

<form name="horde_login" method="post" action="https://pdrives.manchester.ac.uk/horde/login.php">
<input type="hidden" name="url" value="/horde/gollem/view.php?actionID=view_file&amp;amp;type=m&amp;amp;file=Question1.m&amp;amp;dir=%2FMATLAB%2FCryptoCW&amp;amp;driver=ftp" />
<input type="hidden" name="anchor_string" id="anchor_string" value="" />

<div id="menu">
 <h1 style="text-align:center">Pdrives Login</h1>
</div>

<table width="100%"><tr><td align="center"><table width="300" align="center">

<tr>
    <td class="light rightAlign"><strong><label for="horde_user">Username</label></strong>&nbsp;</td>
    <td class="leftAlign"><input type="text" id="horde_user" name="horde_user" value="" style="direction:ltr" /></td>
</tr>

<tr>
    <td class="light rightAlign"><strong><label for="horde_pass">Password</label></strong>&nbsp;</td>
    <td class="leftAlign"><input type="password" autocomplete="off" id="horde_pass" name="horde_pass" value="" style="direction:ltr" /></td>
</tr>



<tr>
    <td>&nbsp;</td>
    <td class="light leftAlign"><input name="loginButton" class="button" value="Log in" type="submit" onclick="return submit_login();" /></td>
</tr>

<tr>
</tr>
<tr>

<td>&nbsp;</td>
    <td class="light LeftAlign"><a class="button" target="_blank" href="http://www.itservices.manchester.ac.uk/medialibrary/pdf/pdrive_shared_drive_userguide_v07x.pdf">User Documentation</a></td>
</tr>



</table></td></tr></table>
</form>

<!-- This file contains any "Message Of The Day" Type information -->
<!-- It will be included below the log-in form on the login page. -->

<!--
<table width="100%"><tr><td align="center"><table width="300" align="center">
<tr>

    <td class="light leftAlign"><label for="horde_user"><strong>
Please note to access shared areas, use the servers drop down menus after login in to your P drive using your central username. This method supercedes the previous method of using your full Novell context. </strong></label>&nbsp;</td>
</tr>

</table>
-->
<script type="text/javascript">

if (parent.frames.horde_main) {
    parent.location = self.location;
}

/* Removes any leading hash that might be on a location string. */
function removeHash(h) {
    if (h == null || h == undefined) {
        return null;
    } else if (h.length && h.charAt(0) == '#') {
        if (h.length == 1) {
            return "";
        } else {
            return h.substring(1);
        }
    }
    return h;
}

// Need to capture hash information if it exists in URL
if (location.hash) {
    document.horde_login.anchor_string.value = removeHash(location.hash);
}
</script>
<script language="JavaScript1.5" type="text/javascript">
<!--
var _setHordeTitle = 1;
try {
    if (document.title && parent.frames.horde_main) parent.document.title = document.title;
} catch (e) {
}
// -->
</script>
<script type="text/javascript">
<!--
if (typeof(_setHordeTitle) == 'undefined' && document.title && parent.frames.horde_main) parent.document.title = document.title;
// -->
</script>
<script type="text/javascript">//<![CDATA[
setFocus()
//]]></script>
</body>
</html>
