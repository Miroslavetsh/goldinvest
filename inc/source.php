<?php
if (!(isset($_SERVER['HTTPS']) && ($_SERVER['HTTPS'] == 'on' || 
   $_SERVER['HTTPS'] == 1) ||  
   isset($_SERVER['HTTP_X_FORWARDED_PROTO']) &&   
   $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https'))
{
   $redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
   header('HTTP/1.1 301 Moved Permanently');
   header('Location: ' . $redirect);
   exit();
}



?>
<!DOCTYPE html>
<!--if lt IE 7html.no-js.lt-ie9.lt-ie8.lt-ie7(lang='')  
-->
<!--if IE 7html.no-js.lt-ie9.lt-ie8(lang='')  
-->
<!--if IE 8html.no-js.lt-ie9(lang='')  
-->
<!-- [if gt IE 8] <!-->
<html lang="" class="no-js">
  <!-- <![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title> Демеевский Кредитный Центр </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="favicon.png" type="image/png">
    
    <style> 
    /*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -webkit-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
}
body {
  margin: 0;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block;
}
audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden],
template {
  display: none;
}
a {
  background-color: transparent;
}
a:active,
a:hover {
  outline: 0;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
h1 {
  margin: .67em 0;
  font-size: 2em;
}
mark {
  color: #000;
  background: #ff0;
}
small {
  font-size: 80%;
}
sub,
sup {
  position: relative;
  font-size: 75%;
  line-height: 0;
  vertical-align: baseline;
}
sup {
  top: -.5em;
}
sub {
  bottom: -.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 1em 40px;
}
hr {
  height: 0;
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
}
pre {
  overflow: auto;
}
code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}
button,
input,
optgroup,
select,
textarea {
  margin: 0;
  font: inherit;
  color: inherit;
}
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
  -webkit-appearance: textfield;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  padding: .35em .625em .75em;
  margin: 0 2px;
  border: 1px solid #c0c0c0;
}
legend {
  padding: 0;
  border: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-spacing: 0;
  border-collapse: collapse;
}
td,
th {
  padding: 0;
}
/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;

    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100% !important;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
  .navbar {
    display: none;
  }
  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important;
  }
  .label {
    border: 1px solid #000;
  }
  .table {
    border-collapse: collapse !important;
  }
  .table td,
  .table th {
    background-color: #fff !important;
  }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }
}
@font-face {
  font-family: 'Glyphicons Halflings';

  src: url('assets/fonts/glyphicons-halflings-regular.eot');
  src: url('assets/fonts/glyphicons-halflings-regular.eot@') format('embedded-opentype'), url('assets/fonts/glyphicons-halflings-regular.woff2') format('woff2'), url('assets/fonts/glyphicons-halflings-regular.woff') format('woff'), url('assets/fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('assets/fonts/glyphicons-halflings-regular.svg') format('svg');
}
.glyphicon {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: normal;
  line-height: 1;

  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.glyphicon-asterisk:before {
  content: "\002a";
}
.glyphicon-plus:before {
  content: "\002b";
}
.glyphicon-euro:before,
.glyphicon-eur:before {
  content: "\20ac";
}
.glyphicon-minus:before {
  content: "\2212";
}
.glyphicon-cloud:before {
  content: "\2601";
}
.glyphicon-envelope:before {
  content: "\2709";
}
.glyphicon-pencil:before {
  content: "\270f";
}
.glyphicon-glass:before {
  content: "\e001";
}
.glyphicon-music:before {
  content: "\e002";
}
.glyphicon-search:before {
  content: "\e003";
}
.glyphicon-heart:before {
  content: "\e005";
}
.glyphicon-star:before {
  content: "\e006";
}
.glyphicon-star-empty:before {
  content: "\e007";
}
.glyphicon-user:before {
  content: "\e008";
}
.glyphicon-film:before {
  content: "\e009";
}
.glyphicon-th-large:before {
  content: "\e010";
}
.glyphicon-th:before {
  content: "\e011";
}
.glyphicon-th-list:before {
  content: "\e012";
}
.glyphicon-ok:before {
  content: "\e013";
}
.glyphicon-remove:before {
  content: "\e014";
}
.glyphicon-zoom-in:before {
  content: "\e015";
}
.glyphicon-zoom-out:before {
  content: "\e016";
}
.glyphicon-off:before {
  content: "\e017";
}
.glyphicon-signal:before {
  content: "\e018";
}
.glyphicon-cog:before {
  content: "\e019";
}
.glyphicon-trash:before {
  content: "\e020";
}
.glyphicon-home:before {
  content: "\e021";
}
.glyphicon-file:before {
  content: "\e022";
}
.glyphicon-time:before {
  content: "\e023";
}
.glyphicon-road:before {
  content: "\e024";
}
.glyphicon-download-alt:before {
  content: "\e025";
}
.glyphicon-download:before {
  content: "\e026";
}
.glyphicon-upload:before {
  content: "\e027";
}
.glyphicon-inbox:before {
  content: "\e028";
}
.glyphicon-play-circle:before {
  content: "\e029";
}
.glyphicon-repeat:before {
  content: "\e030";
}
.glyphicon-refresh:before {
  content: "\e031";
}
.glyphicon-list-alt:before {
  content: "\e032";
}
.glyphicon-lock:before {
  content: "\e033";
}
.glyphicon-flag:before {
  content: "\e034";
}
.glyphicon-headphones:before {
  content: "\e035";
}
.glyphicon-volume-off:before {
  content: "\e036";
}
.glyphicon-volume-down:before {
  content: "\e037";
}
.glyphicon-volume-up:before {
  content: "\e038";
}
.glyphicon-qrcode:before {
  content: "\e039";
}
.glyphicon-barcode:before {
  content: "\e040";
}
.glyphicon-tag:before {
  content: "\e041";
}
.glyphicon-tags:before {
  content: "\e042";
}
.glyphicon-book:before {
  content: "\e043";
}
.glyphicon-bookmark:before {
  content: "\e044";
}
.glyphicon-print:before {
  content: "\e045";
}
.glyphicon-camera:before {
  content: "\e046";
}
.glyphicon-font:before {
  content: "\e047";
}
.glyphicon-bold:before {
  content: "\e048";
}
.glyphicon-italic:before {
  content: "\e049";
}
.glyphicon-text-height:before {
  content: "\e050";
}
.glyphicon-text-width:before {
  content: "\e051";
}
.glyphicon-align-left:before {
  content: "\e052";
}
.glyphicon-align-center:before {
  content: "\e053";
}
.glyphicon-align-right:before {
  content: "\e054";
}
.glyphicon-align-justify:before {
  content: "\e055";
}
.glyphicon-list:before {
  content: "\e056";
}
.glyphicon-indent-left:before {
  content: "\e057";
}
.glyphicon-indent-right:before {
  content: "\e058";
}
.glyphicon-facetime-video:before {
  content: "\e059";
}
.glyphicon-picture:before {
  content: "\e060";
}
.glyphicon-map-marker:before {
  content: "\e062";
}
.glyphicon-adjust:before {
  content: "\e063";
}
.glyphicon-tint:before {
  content: "\e064";
}
.glyphicon-edit:before {
  content: "\e065";
}
.glyphicon-share:before {
  content: "\e066";
}
.glyphicon-check:before {
  content: "\e067";
}
.glyphicon-move:before {
  content: "\e068";
}
.glyphicon-step-backward:before {
  content: "\e069";
}
.glyphicon-fast-backward:before {
  content: "\e070";
}
.glyphicon-backward:before {
  content: "\e071";
}
.glyphicon-play:before {
  content: "\e072";
}
.glyphicon-pause:before {
  content: "\e073";
}
.glyphicon-stop:before {
  content: "\e074";
}
.glyphicon-forward:before {
  content: "\e075";
}
.glyphicon-fast-forward:before {
  content: "\e076";
}
.glyphicon-step-forward:before {
  content: "\e077";
}
.glyphicon-eject:before {
  content: "\e078";
}
.glyphicon-chevron-left:before {
  content: "\e079";
}
.glyphicon-chevron-right:before {
  content: "\e080";
}
.glyphicon-plus-sign:before {
  content: "\e081";
}
.glyphicon-minus-sign:before {
  content: "\e082";
}
.glyphicon-remove-sign:before {
  content: "\e083";
}
.glyphicon-ok-sign:before {
  content: "\e084";
}
.glyphicon-question-sign:before {
  content: "\e085";
}
.glyphicon-info-sign:before {
  content: "\e086";
}
.glyphicon-screenshot:before {
  content: "\e087";
}
.glyphicon-remove-circle:before {
  content: "\e088";
}
.glyphicon-ok-circle:before {
  content: "\e089";
}
.glyphicon-ban-circle:before {
  content: "\e090";
}
.glyphicon-arrow-left:before {
  content: "\e091";
}
.glyphicon-arrow-right:before {
  content: "\e092";
}
.glyphicon-arrow-up:before {
  content: "\e093";
}
.glyphicon-arrow-down:before {
  content: "\e094";
}
.glyphicon-share-alt:before {
  content: "\e095";
}
.glyphicon-resize-full:before {
  content: "\e096";
}
.glyphicon-resize-small:before {
  content: "\e097";
}
.glyphicon-exclamation-sign:before {
  content: "\e101";
}
.glyphicon-gift:before {
  content: "\e102";
}
.glyphicon-leaf:before {
  content: "\e103";
}
.glyphicon-fire:before {
  content: "\e104";
}
.glyphicon-eye-open:before {
  content: "\e105";
}
.glyphicon-eye-close:before {
  content: "\e106";
}
.glyphicon-warning-sign:before {
  content: "\e107";
}
.glyphicon-plane:before {
  content: "\e108";
}
.glyphicon-calendar:before {
  content: "\e109";
}
.glyphicon-random:before {
  content: "\e110";
}
.glyphicon-comment:before {
  content: "\e111";
}
.glyphicon-magnet:before {
  content: "\e112";
}
.glyphicon-chevron-up:before {
  content: "\e113";
}
.glyphicon-chevron-down:before {
  content: "\e114";
}
.glyphicon-retweet:before {
  content: "\e115";
}
.glyphicon-shopping-cart:before {
  content: "\e116";
}
.glyphicon-folder-close:before {
  content: "\e117";
}
.glyphicon-folder-open:before {
  content: "\e118";
}
.glyphicon-resize-vertical:before {
  content: "\e119";
}
.glyphicon-resize-horizontal:before {
  content: "\e120";
}
.glyphicon-hdd:before {
  content: "\e121";
}
.glyphicon-bullhorn:before {
  content: "\e122";
}
.glyphicon-bell:before {
  content: "\e123";
}
.glyphicon-certificate:before {
  content: "\e124";
}
.glyphicon-thumbs-up:before {
  content: "\e125";
}
.glyphicon-thumbs-down:before {
  content: "\e126";
}
.glyphicon-hand-right:before {
  content: "\e127";
}
.glyphicon-hand-left:before {
  content: "\e128";
}
.glyphicon-hand-up:before {
  content: "\e129";
}
.glyphicon-hand-down:before {
  content: "\e130";
}
.glyphicon-circle-arrow-right:before {
  content: "\e131";
}
.glyphicon-circle-arrow-left:before {
  content: "\e132";
}
.glyphicon-circle-arrow-up:before {
  content: "\e133";
}
.glyphicon-circle-arrow-down:before {
  content: "\e134";
}
.glyphicon-globe:before {
  content: "\e135";
}
.glyphicon-wrench:before {
  content: "\e136";
}
.glyphicon-tasks:before {
  content: "\e137";
}
.glyphicon-filter:before {
  content: "\e138";
}
.glyphicon-briefcase:before {
  content: "\e139";
}
.glyphicon-fullscreen:before {
  content: "\e140";
}
.glyphicon-dashboard:before {
  content: "\e141";
}
.glyphicon-paperclip:before {
  content: "\e142";
}
.glyphicon-heart-empty:before {
  content: "\e143";
}
.glyphicon-link:before {
  content: "\e144";
}
.glyphicon-phone:before {
  content: "\e145";
}
.glyphicon-pushpin:before {
  content: "\e146";
}
.glyphicon-usd:before {
  content: "\e148";
}
.glyphicon-gbp:before {
  content: "\e149";
}
.glyphicon-sort:before {
  content: "\e150";
}
.glyphicon-sort-by-alphabet:before {
  content: "\e151";
}
.glyphicon-sort-by-alphabet-alt:before {
  content: "\e152";
}
.glyphicon-sort-by-order:before {
  content: "\e153";
}
.glyphicon-sort-by-order-alt:before {
  content: "\e154";
}
.glyphicon-sort-by-attributes:before {
  content: "\e155";
}
.glyphicon-sort-by-attributes-alt:before {
  content: "\e156";
}
.glyphicon-unchecked:before {
  content: "\e157";
}
.glyphicon-expand:before {
  content: "\e158";
}
.glyphicon-collapse-down:before {
  content: "\e159";
}
.glyphicon-collapse-up:before {
  content: "\e160";
}
.glyphicon-log-in:before {
  content: "\e161";
}
.glyphicon-flash:before {
  content: "\e162";
}
.glyphicon-log-out:before {
  content: "\e163";
}
.glyphicon-new-window:before {
  content: "\e164";
}
.glyphicon-record:before {
  content: "\e165";
}
.glyphicon-save:before {
  content: "\e166";
}
.glyphicon-open:before {
  content: "\e167";
}
.glyphicon-saved:before {
  content: "\e168";
}
.glyphicon-import:before {
  content: "\e169";
}
.glyphicon-export:before {
  content: "\e170";
}
.glyphicon-send:before {
  content: "\e171";
}
.glyphicon-floppy-disk:before {
  content: "\e172";
}
.glyphicon-floppy-saved:before {
  content: "\e173";
}
.glyphicon-floppy-remove:before {
  content: "\e174";
}
.glyphicon-floppy-save:before {
  content: "\e175";
}
.glyphicon-floppy-open:before {
  content: "\e176";
}
.glyphicon-credit-card:before {
  content: "\e177";
}
.glyphicon-transfer:before {
  content: "\e178";
}
.glyphicon-cutlery:before {
  content: "\e179";
}
.glyphicon-header:before {
  content: "\e180";
}
.glyphicon-compressed:before {
  content: "\e181";
}
.glyphicon-earphone:before {
  content: "\e182";
}
.glyphicon-phone-alt:before {
  content: "\e183";
}
.glyphicon-tower:before {
  content: "\e184";
}
.glyphicon-stats:before {
  content: "\e185";
}
.glyphicon-sd-video:before {
  content: "\e186";
}
.glyphicon-hd-video:before {
  content: "\e187";
}
.glyphicon-subtitles:before {
  content: "\e188";
}
.glyphicon-sound-stereo:before {
  content: "\e189";
}
.glyphicon-sound-dolby:before {
  content: "\e190";
}
.glyphicon-sound-5-1:before {
  content: "\e191";
}
.glyphicon-sound-6-1:before {
  content: "\e192";
}
.glyphicon-sound-7-1:before {
  content: "\e193";
}
.glyphicon-copyright-mark:before {
  content: "\e194";
}
.glyphicon-registration-mark:before {
  content: "\e195";
}
.glyphicon-cloud-download:before {
  content: "\e197";
}
.glyphicon-cloud-upload:before {
  content: "\e198";
}
.glyphicon-tree-conifer:before {
  content: "\e199";
}
.glyphicon-tree-deciduous:before {
  content: "\e200";
}
.glyphicon-cd:before {
  content: "\e201";
}
.glyphicon-save-file:before {
  content: "\e202";
}
.glyphicon-open-file:before {
  content: "\e203";
}
.glyphicon-level-up:before {
  content: "\e204";
}
.glyphicon-copy:before {
  content: "\e205";
}
.glyphicon-paste:before {
  content: "\e206";
}
.glyphicon-alert:before {
  content: "\e209";
}
.glyphicon-equalizer:before {
  content: "\e210";
}
.glyphicon-king:before {
  content: "\e211";
}
.glyphicon-queen:before {
  content: "\e212";
}
.glyphicon-pawn:before {
  content: "\e213";
}
.glyphicon-bishop:before {
  content: "\e214";
}
.glyphicon-knight:before {
  content: "\e215";
}
.glyphicon-baby-formula:before {
  content: "\e216";
}
.glyphicon-tent:before {
  content: "\26fa";
}
.glyphicon-blackboard:before {
  content: "\e218";
}
.glyphicon-bed:before {
  content: "\e219";
}
.glyphicon-apple:before {
  content: "\f8ff";
}
.glyphicon-erase:before {
  content: "\e221";
}
.glyphicon-hourglass:before {
  content: "\231b";
}
.glyphicon-lamp:before {
  content: "\e223";
}
.glyphicon-duplicate:before {
  content: "\e224";
}
.glyphicon-piggy-bank:before {
  content: "\e225";
}
.glyphicon-scissors:before {
  content: "\e226";
}
.glyphicon-bitcoin:before {
  content: "\e227";
}
.glyphicon-btc:before {
  content: "\e227";
}
.glyphicon-xbt:before {
  content: "\e227";
}
.glyphicon-yen:before {
  content: "\00a5";
}
.glyphicon-jpy:before {
  content: "\00a5";
}
.glyphicon-ruble:before {
  content: "\20bd";
}
.glyphicon-rub:before {
  content: "\20bd";
}
.glyphicon-scale:before {
  content: "\e230";
}
.glyphicon-ice-lolly:before {
  content: "\e231";
}
.glyphicon-ice-lolly-tasted:before {
  content: "\e232";
}
.glyphicon-education:before {
  content: "\e233";
}
.glyphicon-option-horizontal:before {
  content: "\e234";
}
.glyphicon-option-vertical:before {
  content: "\e235";
}
.glyphicon-menu-hamburger:before {
  content: "\e236";
}
.glyphicon-modal-window:before {
  content: "\e237";
}
.glyphicon-oil:before {
  content: "\e238";
}
.glyphicon-grain:before {
  content: "\e239";
}
.glyphicon-sunglasses:before {
  content: "\e240";
}
.glyphicon-text-size:before {
  content: "\e241";
}
.glyphicon-text-color:before {
  content: "\e242";
}
.glyphicon-text-background:before {
  content: "\e243";
}
.glyphicon-object-align-top:before {
  content: "\e244";
}
.glyphicon-object-align-bottom:before {
  content: "\e245";
}
.glyphicon-object-align-horizontal:before {
  content: "\e246";
}
.glyphicon-object-align-left:before {
  content: "\e247";
}
.glyphicon-object-align-vertical:before {
  content: "\e248";
}
.glyphicon-object-align-right:before {
  content: "\e249";
}
.glyphicon-triangle-right:before {
  content: "\e250";
}
.glyphicon-triangle-left:before {
  content: "\e251";
}
.glyphicon-triangle-bottom:before {
  content: "\e252";
}
.glyphicon-triangle-top:before {
  content: "\e253";
}
.glyphicon-console:before {
  content: "\e254";
}
.glyphicon-superscript:before {
  content: "\e255";
}
.glyphicon-subscript:before {
  content: "\e256";
}
.glyphicon-menu-left:before {
  content: "\e257";
}
.glyphicon-menu-right:before {
  content: "\e258";
}
.glyphicon-menu-down:before {
  content: "\e259";
}
.glyphicon-menu-up:before {
  content: "\e260";
}
* {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
*:before,
*:after {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
html {
  font-size: 10px;

  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 1.42857143;
  color: #333;
  background-color: #fff;
}
input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
a {
  color: #337ab7;
  text-decoration: none;
}
a:hover,
a:focus {
  color: #23527c;
  text-decoration: underline;
}
a:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
figure {
  margin: 0;
}
img {
  vertical-align: middle;
}
.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
}
.img-rounded {
  border-radius: 6px;
}
.img-thumbnail {
  display: inline-block;
  max-width: 100%;
  height: auto;
  padding: 4px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 4px;
  -webkit-transition: all .2s ease-in-out;
       -o-transition: all .2s ease-in-out;
          transition: all .2s ease-in-out;
}
.img-circle {
  border-radius: 50%;
}
hr {
  margin-top: 20px;
  margin-bottom: 20px;
  border: 0;
  border-top: 1px solid #eee;
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
[role="button"] {
  cursor: pointer;
}
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
.h1 small,
.h2 small,
.h3 small,
.h4 small,
.h5 small,
.h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small,
.h1 .small,
.h2 .small,
.h3 .small,
.h4 .small,
.h5 .small,
.h6 .small {
  font-weight: normal;
  line-height: 1;
  color: #777;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 20px;
  margin-bottom: 10px;
}
h1 small,
.h1 small,
h2 small,
.h2 small,
h3 small,
.h3 small,
h1 .small,
.h1 .small,
h2 .small,
.h2 .small,
h3 .small,
.h3 .small {
  font-size: 65%;
}
h4,
.h4,
h5,
.h5,
h6,
.h6 {
  margin-top: 10px;
  margin-bottom: 10px;
}
h4 small,
.h4 small,
h5 small,
.h5 small,
h6 small,
.h6 small,
h4 .small,
.h4 .small,
h5 .small,
.h5 .small,
h6 .small,
.h6 .small {
  font-size: 75%;
}
h1,
.h1 {
  font-size: 36px;
}
h2,
.h2 {
  font-size: 30px;
}
h3,
.h3 {
  font-size: 24px;
}
h4,
.h4 {
  font-size: 18px;
}
h5,
.h5 {
  font-size: 14px;
}
h6,
.h6 {
  font-size: 12px;
}
p {
  margin: 0 0 10px;
}
.lead {
  margin-bottom: 20px;
  font-size: 16px;
  font-weight: 300;
  line-height: 1.4;
}
@media (min-width: 768px) {
  .lead {
    font-size: 21px;
  }
}
small,
.small {
  font-size: 85%;
}
mark,
.mark {
  padding: .2em;
  background-color: #fcf8e3;
}
.text-left {
  text-align: left;
}
.text-right {
  text-align: right;
}
.text-center {
  text-align: center;
}
.text-justify {
  text-align: justify;
}
.text-nowrap {
  white-space: nowrap;
}
.text-lowercase {
  text-transform: lowercase;
}
.text-uppercase {
  text-transform: uppercase;
}
.text-capitalize {
  text-transform: capitalize;
}
.text-muted {
  color: #777;
}
.text-primary {
  color: #337ab7;
}
a.text-primary:hover,
a.text-primary:focus {
  color: #286090;
}
.text-success {
  color: #3c763d;
}
a.text-success:hover,
a.text-success:focus {
  color: #2b542c;
}
.text-info {
  color: #31708f;
}
a.text-info:hover,
a.text-info:focus {
  color: #245269;
}
.text-warning {
  color: #8a6d3b;
}
a.text-warning:hover,
a.text-warning:focus {
  color: #66512c;
}
.text-danger {
  color: #a94442;
}
a.text-danger:hover,
a.text-danger:focus {
  color: #843534;
}
.bg-primary {
  color: #fff;
  background-color: #337ab7;
}
a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #286090;
}
.bg-success {
  background-color: #dff0d8;
}
a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3;
}
.bg-info {
  background-color: #d9edf7;
}
a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee;
}
.bg-warning {
  background-color: #fcf8e3;
}
a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5;
}
.bg-danger {
  background-color: #f2dede;
}
a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9;
}
.page-header {
  padding-bottom: 9px;
  margin: 40px 0 20px;
  border-bottom: 1px solid #eee;
}
ul,
ol {
  margin-top: 0;
  margin-bottom: 10px;
}
ul ul,
ol ul,
ul ol,
ol ol {
  margin-bottom: 0;
}
.list-unstyled {
  padding-left: 0;
  list-style: none;
}
.list-inline {
  padding-left: 0;
  margin-left: -5px;
  list-style: none;
}
.list-inline > li {
  display: inline-block;
  padding-right: 5px;
  padding-left: 5px;
}
dl {
  margin-top: 0;
  margin-bottom: 20px;
}
dt,
dd {
  line-height: 1.42857143;
}
dt {
  font-weight: bold;
}
dd {
  margin-left: 0;
}
@media (min-width: 768px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    overflow: hidden;
    clear: left;
    text-align: right;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .dl-horizontal dd {
    margin-left: 180px;
  }
}
abbr[title],
abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #777;
}
.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
blockquote {
  padding: 10px 20px;
  margin: 0 0 20px;
  font-size: 17.5px;
  border-left: 5px solid #eee;
}
blockquote p:last-child,
blockquote ul:last-child,
blockquote ol:last-child {
  margin-bottom: 0;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857143;
  color: #777;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}
.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  text-align: right;
  border-right: 5px solid #eee;
  border-left: 0;
}
.blockquote-reverse footer:before,
blockquote.pull-right footer:before,
.blockquote-reverse small:before,
blockquote.pull-right small:before,
.blockquote-reverse .small:before,
blockquote.pull-right .small:before {
  content: '';
}
.blockquote-reverse footer:after,
blockquote.pull-right footer:after,
.blockquote-reverse small:after,
blockquote.pull-right small:after,
.blockquote-reverse .small:after,
blockquote.pull-right .small:after {
  content: '\00A0 \2014';
}
address {
  margin-bottom: 20px;
  font-style: normal;
  line-height: 1.42857143;
}
code,
kbd,
pre,
samp {
  font-family: Menlo, Monaco, Consolas, "Courier New", monospace;
}
code {
  padding: 2px 4px;
  font-size: 90%;
  color: #c7254e;
  background-color: #f9f2f4;
  border-radius: 4px;
}
kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #fff;
  background-color: #333;
  border-radius: 3px;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .25);
          box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .25);
}
kbd kbd {
  padding: 0;
  font-size: 100%;
  font-weight: bold;
  -webkit-box-shadow: none;
          box-shadow: none;
}
pre {
  display: block;
  padding: 9.5px;
  margin: 0 0 10px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #333;
  word-break: break-all;
  word-wrap: break-word;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 4px;
}
pre code {
  padding: 0;
  font-size: inherit;
  color: inherit;
  white-space: pre-wrap;
  background-color: transparent;
  border-radius: 0;
}
.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
.container {
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}
@media (min-width: 768px) {
  .container {
    width: 750px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 970px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1170px;
  }
}
.container-fluid {
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}
.row {
  margin-right: -15px;
  margin-left: -15px;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-right: 15px;
  padding-left: 15px;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left;
}
.col-xs-12 {
  width: 100%;
}
.col-xs-11 {
  width: 91.66666667%;
}
.col-xs-10 {
  width: 83.33333333%;
}
.col-xs-9 {
  width: 75%;
}
.col-xs-8 {
  width: 66.66666667%;
}
.col-xs-7 {
  width: 58.33333333%;
}
.col-xs-6 {
  width: 50%;
}
.col-xs-5 {
  width: 41.66666667%;
}
.col-xs-4 {
  width: 33.33333333%;
}
.col-xs-3 {
  width: 25%;
}
.col-xs-2 {
  width: 16.66666667%;
}
.col-xs-1 {
  width: 8.33333333%;
}
.col-xs-pull-12 {
  right: 100%;
}
.col-xs-pull-11 {
  right: 91.66666667%;
}
.col-xs-pull-10 {
  right: 83.33333333%;
}
.col-xs-pull-9 {
  right: 75%;
}
.col-xs-pull-8 {
  right: 66.66666667%;
}
.col-xs-pull-7 {
  right: 58.33333333%;
}
.col-xs-pull-6 {
  right: 50%;
}
.col-xs-pull-5 {
  right: 41.66666667%;
}
.col-xs-pull-4 {
  right: 33.33333333%;
}
.col-xs-pull-3 {
  right: 25%;
}
.col-xs-pull-2 {
  right: 16.66666667%;
}
.col-xs-pull-1 {
  right: 8.33333333%;
}
.col-xs-pull-0 {
  right: auto;
}
.col-xs-push-12 {
  left: 100%;
}
.col-xs-push-11 {
  left: 91.66666667%;
}
.col-xs-push-10 {
  left: 83.33333333%;
}
.col-xs-push-9 {
  left: 75%;
}
.col-xs-push-8 {
  left: 66.66666667%;
}
.col-xs-push-7 {
  left: 58.33333333%;
}
.col-xs-push-6 {
  left: 50%;
}
.col-xs-push-5 {
  left: 41.66666667%;
}
.col-xs-push-4 {
  left: 33.33333333%;
}
.col-xs-push-3 {
  left: 25%;
}
.col-xs-push-2 {
  left: 16.66666667%;
}
.col-xs-push-1 {
  left: 8.33333333%;
}
.col-xs-push-0 {
  left: auto;
}
.col-xs-offset-12 {
  margin-left: 100%;
}
.col-xs-offset-11 {
  margin-left: 91.66666667%;
}
.col-xs-offset-10 {
  margin-left: 83.33333333%;
}
.col-xs-offset-9 {
  margin-left: 75%;
}
.col-xs-offset-8 {
  margin-left: 66.66666667%;
}
.col-xs-offset-7 {
  margin-left: 58.33333333%;
}
.col-xs-offset-6 {
  margin-left: 50%;
}
.col-xs-offset-5 {
  margin-left: 41.66666667%;
}
.col-xs-offset-4 {
  margin-left: 33.33333333%;
}
.col-xs-offset-3 {
  margin-left: 25%;
}
.col-xs-offset-2 {
  margin-left: 16.66666667%;
}
.col-xs-offset-1 {
  margin-left: 8.33333333%;
}
.col-xs-offset-0 {
  margin-left: 0;
}
@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
  }
  .col-sm-12 {
    width: 100%;
  }
  .col-sm-11 {
    width: 91.66666667%;
  }
  .col-sm-10 {
    width: 83.33333333%;
  }
  .col-sm-9 {
    width: 75%;
  }
  .col-sm-8 {
    width: 66.66666667%;
  }
  .col-sm-7 {
    width: 58.33333333%;
  }
  .col-sm-6 {
    width: 50%;
  }
  .col-sm-5 {
    width: 41.66666667%;
  }
  .col-sm-4 {
    width: 33.33333333%;
  }
  .col-sm-3 {
    width: 25%;
  }
  .col-sm-2 {
    width: 16.66666667%;
  }
  .col-sm-1 {
    width: 8.33333333%;
  }
  .col-sm-pull-12 {
    right: 100%;
  }
  .col-sm-pull-11 {
    right: 91.66666667%;
  }
  .col-sm-pull-10 {
    right: 83.33333333%;
  }
  .col-sm-pull-9 {
    right: 75%;
  }
  .col-sm-pull-8 {
    right: 66.66666667%;
  }
  .col-sm-pull-7 {
    right: 58.33333333%;
  }
  .col-sm-pull-6 {
    right: 50%;
  }
  .col-sm-pull-5 {
    right: 41.66666667%;
  }
  .col-sm-pull-4 {
    right: 33.33333333%;
  }
  .col-sm-pull-3 {
    right: 25%;
  }
  .col-sm-pull-2 {
    right: 16.66666667%;
  }
  .col-sm-pull-1 {
    right: 8.33333333%;
  }
  .col-sm-pull-0 {
    right: auto;
  }
  .col-sm-push-12 {
    left: 100%;
  }
  .col-sm-push-11 {
    left: 91.66666667%;
  }
  .col-sm-push-10 {
    left: 83.33333333%;
  }
  .col-sm-push-9 {
    left: 75%;
  }
  .col-sm-push-8 {
    left: 66.66666667%;
  }
  .col-sm-push-7 {
    left: 58.33333333%;
  }
  .col-sm-push-6 {
    left: 50%;
  }
  .col-sm-push-5 {
    left: 41.66666667%;
  }
  .col-sm-push-4 {
    left: 33.33333333%;
  }
  .col-sm-push-3 {
    left: 25%;
  }
  .col-sm-push-2 {
    left: 16.66666667%;
  }
  .col-sm-push-1 {
    left: 8.33333333%;
  }
  .col-sm-push-0 {
    left: auto;
  }
  .col-sm-offset-12 {
    margin-left: 100%;
  }
  .col-sm-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-sm-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-sm-offset-9 {
    margin-left: 75%;
  }
  .col-sm-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-sm-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-sm-offset-6 {
    margin-left: 50%;
  }
  .col-sm-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-sm-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-sm-offset-3 {
    margin-left: 25%;
  }
  .col-sm-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-sm-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-sm-offset-0 {
    margin-left: 0;
  }
}
@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
  }
  .col-md-12 {
    width: 100%;
  }
  .col-md-11 {
    width: 91.66666667%;
  }
  .col-md-10 {
    width: 83.33333333%;
  }
  .col-md-9 {
    width: 75%;
  }
  .col-md-8 {
    width: 66.66666667%;
  }
  .col-md-7 {
    width: 58.33333333%;
  }
  .col-md-6 {
    width: 50%;
  }
  .col-md-5 {
    width: 41.66666667%;
  }
  .col-md-4 {
    width: 33.33333333%;
  }
  .col-md-3 {
    width: 25%;
  }
  .col-md-2 {
    width: 16.66666667%;
  }
  .col-md-1 {
    width: 8.33333333%;
  }
  .col-md-pull-12 {
    right: 100%;
  }
  .col-md-pull-11 {
    right: 91.66666667%;
  }
  .col-md-pull-10 {
    right: 83.33333333%;
  }
  .col-md-pull-9 {
    right: 75%;
  }
  .col-md-pull-8 {
    right: 66.66666667%;
  }
  .col-md-pull-7 {
    right: 58.33333333%;
  }
  .col-md-pull-6 {
    right: 50%;
  }
  .col-md-pull-5 {
    right: 41.66666667%;
  }
  .col-md-pull-4 {
    right: 33.33333333%;
  }
  .col-md-pull-3 {
    right: 25%;
  }
  .col-md-pull-2 {
    right: 16.66666667%;
  }
  .col-md-pull-1 {
    right: 8.33333333%;
  }
  .col-md-pull-0 {
    right: auto;
  }
  .col-md-push-12 {
    left: 100%;
  }
  .col-md-push-11 {
    left: 91.66666667%;
  }
  .col-md-push-10 {
    left: 83.33333333%;
  }
  .col-md-push-9 {
    left: 75%;
  }
  .col-md-push-8 {
    left: 66.66666667%;
  }
  .col-md-push-7 {
    left: 58.33333333%;
  }
  .col-md-push-6 {
    left: 50%;
  }
  .col-md-push-5 {
    left: 41.66666667%;
  }
  .col-md-push-4 {
    left: 33.33333333%;
  }
  .col-md-push-3 {
    left: 25%;
  }
  .col-md-push-2 {
    left: 16.66666667%;
  }
  .col-md-push-1 {
    left: 8.33333333%;
  }
  .col-md-push-0 {
    left: auto;
  }
  .col-md-offset-12 {
    margin-left: 100%;
  }
  .col-md-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-md-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-md-offset-9 {
    margin-left: 75%;
  }
  .col-md-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-md-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-md-offset-6 {
    margin-left: 50%;
  }
  .col-md-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-md-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-md-offset-3 {
    margin-left: 25%;
  }
  .col-md-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-md-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-md-offset-0 {
    margin-left: 0;
  }
}
@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left;
  }
  .col-lg-12 {
    width: 100%;
  }
  .col-lg-11 {
    width: 91.66666667%;
  }
  .col-lg-10 {
    width: 83.33333333%;
  }
  .col-lg-9 {
    width: 75%;
  }
  .col-lg-8 {
    width: 66.66666667%;
  }
  .col-lg-7 {
    width: 58.33333333%;
  }
  .col-lg-6 {
    width: 50%;
  }
  .col-lg-5 {
    width: 41.66666667%;
  }
  .col-lg-4 {
    width: 33.33333333%;
  }
  .col-lg-3 {
    width: 25%;
  }
  .col-lg-2 {
    width: 16.66666667%;
  }
  .col-lg-1 {
    width: 8.33333333%;
  }
  .col-lg-pull-12 {
    right: 100%;
  }
  .col-lg-pull-11 {
    right: 91.66666667%;
  }
  .col-lg-pull-10 {
    right: 83.33333333%;
  }
  .col-lg-pull-9 {
    right: 75%;
  }
  .col-lg-pull-8 {
    right: 66.66666667%;
  }
  .col-lg-pull-7 {
    right: 58.33333333%;
  }
  .col-lg-pull-6 {
    right: 50%;
  }
  .col-lg-pull-5 {
    right: 41.66666667%;
  }
  .col-lg-pull-4 {
    right: 33.33333333%;
  }
  .col-lg-pull-3 {
    right: 25%;
  }
  .col-lg-pull-2 {
    right: 16.66666667%;
  }
  .col-lg-pull-1 {
    right: 8.33333333%;
  }
  .col-lg-pull-0 {
    right: auto;
  }
  .col-lg-push-12 {
    left: 100%;
  }
  .col-lg-push-11 {
    left: 91.66666667%;
  }
  .col-lg-push-10 {
    left: 83.33333333%;
  }
  .col-lg-push-9 {
    left: 75%;
  }
  .col-lg-push-8 {
    left: 66.66666667%;
  }
  .col-lg-push-7 {
    left: 58.33333333%;
  }
  .col-lg-push-6 {
    left: 50%;
  }
  .col-lg-push-5 {
    left: 41.66666667%;
  }
  .col-lg-push-4 {
    left: 33.33333333%;
  }
  .col-lg-push-3 {
    left: 25%;
  }
  .col-lg-push-2 {
    left: 16.66666667%;
  }
  .col-lg-push-1 {
    left: 8.33333333%;
  }
  .col-lg-push-0 {
    left: auto;
  }
  .col-lg-offset-12 {
    margin-left: 100%;
  }
  .col-lg-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-lg-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-lg-offset-9 {
    margin-left: 75%;
  }
  .col-lg-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-lg-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-lg-offset-6 {
    margin-left: 50%;
  }
  .col-lg-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-lg-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-lg-offset-3 {
    margin-left: 25%;
  }
  .col-lg-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-lg-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-lg-offset-0 {
    margin-left: 0;
  }
}
table {
  background-color: transparent;
}
caption {
  padding-top: 8px;
  padding-bottom: 8px;
  color: #777;
  text-align: left;
}
th {
  text-align: left;
}
.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 20px;
}
.table > thead > tr > th,
.table > tbody > tr > th,
.table > tfoot > tr > th,
.table > thead > tr > td,
.table > tbody > tr > td,
.table > tfoot > tr > td {
  padding: 8px;
  line-height: 1.42857143;
  vertical-align: top;
  border-top: 1px solid #ddd;
}
.table > thead > tr > th {
  vertical-align: bottom;
  border-bottom: 2px solid #ddd;
}
.table > caption + thead > tr:first-child > th,
.table > colgroup + thead > tr:first-child > th,
.table > thead:first-child > tr:first-child > th,
.table > caption + thead > tr:first-child > td,
.table > colgroup + thead > tr:first-child > td,
.table > thead:first-child > tr:first-child > td {
  border-top: 0;
}
.table > tbody + tbody {
  border-top: 2px solid #ddd;
}
.table .table {
  background-color: #fff;
}
.table-condensed > thead > tr > th,
.table-condensed > tbody > tr > th,
.table-condensed > tfoot > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > td {
  padding: 5px;
}
.table-bordered {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > tbody > tr > th,
.table-bordered > tfoot > tr > th,
.table-bordered > thead > tr > td,
.table-bordered > tbody > tr > td,
.table-bordered > tfoot > tr > td {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td {
  border-bottom-width: 2px;
}
.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}
.table-hover > tbody > tr:hover {
  background-color: #f5f5f5;
}
table col[class*="col-"] {
  position: static;
  display: table-column;
  float: none;
}
table td[class*="col-"],
table th[class*="col-"] {
  position: static;
  display: table-cell;
  float: none;
}
.table > thead > tr > td.active,
.table > tbody > tr > td.active,
.table > tfoot > tr > td.active,
.table > thead > tr > th.active,
.table > tbody > tr > th.active,
.table > tfoot > tr > th.active,
.table > thead > tr.active > td,
.table > tbody > tr.active > td,
.table > tfoot > tr.active > td,
.table > thead > tr.active > th,
.table > tbody > tr.active > th,
.table > tfoot > tr.active > th {
  background-color: #f5f5f5;
}
.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover,
.table-hover > tbody > tr.active:hover > td,
.table-hover > tbody > tr:hover > .active,
.table-hover > tbody > tr.active:hover > th {
  background-color: #e8e8e8;
}
.table > thead > tr > td.success,
.table > tbody > tr > td.success,
.table > tfoot > tr > td.success,
.table > thead > tr > th.success,
.table > tbody > tr > th.success,
.table > tfoot > tr > th.success,
.table > thead > tr.success > td,
.table > tbody > tr.success > td,
.table > tfoot > tr.success > td,
.table > thead > tr.success > th,
.table > tbody > tr.success > th,
.table > tfoot > tr.success > th {
  background-color: #dff0d8;
}
.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover,
.table-hover > tbody > tr.success:hover > td,
.table-hover > tbody > tr:hover > .success,
.table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6;
}
.table > thead > tr > td.info,
.table > tbody > tr > td.info,
.table > tfoot > tr > td.info,
.table > thead > tr > th.info,
.table > tbody > tr > th.info,
.table > tfoot > tr > th.info,
.table > thead > tr.info > td,
.table > tbody > tr.info > td,
.table > tfoot > tr.info > td,
.table > thead > tr.info > th,
.table > tbody > tr.info > th,
.table > tfoot > tr.info > th {
  background-color: #d9edf7;
}
.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover,
.table-hover > tbody > tr.info:hover > td,
.table-hover > tbody > tr:hover > .info,
.table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3;
}
.table > thead > tr > td.warning,
.table > tbody > tr > td.warning,
.table > tfoot > tr > td.warning,
.table > thead > tr > th.warning,
.table > tbody > tr > th.warning,
.table > tfoot > tr > th.warning,
.table > thead > tr.warning > td,
.table > tbody > tr.warning > td,
.table > tfoot > tr.warning > td,
.table > thead > tr.warning > th,
.table > tbody > tr.warning > th,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3;
}
.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover,
.table-hover > tbody > tr.warning:hover > td,
.table-hover > tbody > tr:hover > .warning,
.table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc;
}
.table > thead > tr > td.danger,
.table > tbody > tr > td.danger,
.table > tfoot > tr > td.danger,
.table > thead > tr > th.danger,
.table > tbody > tr > th.danger,
.table > tfoot > tr > th.danger,
.table > thead > tr.danger > td,
.table > tbody > tr.danger > td,
.table > tfoot > tr.danger > td,
.table > thead > tr.danger > th,
.table > tbody > tr.danger > th,
.table > tfoot > tr.danger > th {
  background-color: #f2dede;
}
.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover,
.table-hover > tbody > tr.danger:hover > td,
.table-hover > tbody > tr:hover > .danger,
.table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc;
}
.table-responsive {
  min-height: .01%;
  overflow-x: auto;
}
@media screen and (max-width: 767px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 15px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
  .table-responsive > .table {
    margin-bottom: 0;
  }
  .table-responsive > .table > thead > tr > th,
  .table-responsive > .table > tbody > tr > th,
  .table-responsive > .table > tfoot > tr > th,
  .table-responsive > .table > thead > tr > td,
  .table-responsive > .table > tbody > tr > td,
  .table-responsive > .table > tfoot > tr > td {
    white-space: nowrap;
  }
  .table-responsive > .table-bordered {
    border: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:first-child,
  .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .table-responsive > .table-bordered > thead > tr > td:first-child,
  .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:last-child,
  .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .table-responsive > .table-bordered > thead > tr > td:last-child,
  .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0;
  }
  .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .table-responsive > .table-bordered > tfoot > tr:last-child > th,
  .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .table-responsive > .table-bordered > tfoot > tr:last-child > td {
    border-bottom: 0;
  }
}
fieldset {
  min-width: 0;
  padding: 0;
  margin: 0;
  border: 0;
}
legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 20px;
  font-size: 21px;
  line-height: inherit;
  color: #333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: bold;
}
input[type="search"] {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}
input[type="file"] {
  display: block;
}
input[type="range"] {
  display: block;
  width: 100%;
}
select[multiple],
select[size] {
  height: auto;
}
input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
output {
  display: block;
  padding-top: 7px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
}
.form-control {
  display: block;
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
}
.form-control::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.form-control:-ms-input-placeholder {
  color: #999;
}
.form-control::-webkit-input-placeholder {
  color: #999;
}
.form-control::-ms-expand {
  background-color: transparent;
  border: 0;
}
.form-control[disabled],
.form-control[readonly],
fieldset[disabled] .form-control {
  background-color: #eee;
  opacity: 1;
}
.form-control[disabled],
fieldset[disabled] .form-control {
  cursor: not-allowed;
}
textarea.form-control {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: none;
}
@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 34px;
  }
  input[type="date"].input-sm,
  input[type="time"].input-sm,
  input[type="datetime-local"].input-sm,
  input[type="month"].input-sm,
  .input-group-sm input[type="date"],
  .input-group-sm input[type="time"],
  .input-group-sm input[type="datetime-local"],
  .input-group-sm input[type="month"] {
    line-height: 30px;
  }
  input[type="date"].input-lg,
  input[type="time"].input-lg,
  input[type="datetime-local"].input-lg,
  input[type="month"].input-lg,
  .input-group-lg input[type="date"],
  .input-group-lg input[type="time"],
  .input-group-lg input[type="datetime-local"],
  .input-group-lg input[type="month"] {
    line-height: 46px;
  }
}
.form-group {
  margin-bottom: 15px;
}
.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px;
}
.radio label,
.checkbox label {
  min-height: 20px;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  cursor: pointer;
}
.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-top: 4px \9;
  margin-left: -20px;
}
.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px;
}
.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  vertical-align: middle;
  cursor: pointer;
}
.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px;
}
input[type="radio"][disabled],
input[type="checkbox"][disabled],
input[type="radio"].disabled,
input[type="checkbox"].disabled,
fieldset[disabled] input[type="radio"],
fieldset[disabled] input[type="checkbox"] {
  cursor: not-allowed;
}
.radio-inline.disabled,
.checkbox-inline.disabled,
fieldset[disabled] .radio-inline,
fieldset[disabled] .checkbox-inline {
  cursor: not-allowed;
}
.radio.disabled label,
.checkbox.disabled label,
fieldset[disabled] .radio label,
fieldset[disabled] .checkbox label {
  cursor: not-allowed;
}
.form-control-static {
  min-height: 34px;
  padding-top: 7px;
  padding-bottom: 7px;
  margin-bottom: 0;
}
.form-control-static.input-lg,
.form-control-static.input-sm {
  padding-right: 0;
  padding-left: 0;
}
.input-sm {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
select.input-sm {
  height: 30px;
  line-height: 30px;
}
textarea.input-sm,
select[multiple].input-sm {
  height: auto;
}
.form-group-sm .form-control {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.form-group-sm select.form-control {
  height: 30px;
  line-height: 30px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 30px;
  min-height: 32px;
  padding: 6px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.input-lg {
  height: 46px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
select.input-lg {
  height: 46px;
  line-height: 46px;
}
textarea.input-lg,
select[multiple].input-lg {
  height: auto;
}
.form-group-lg .form-control {
  height: 46px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
.form-group-lg select.form-control {
  height: 46px;
  line-height: 46px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 46px;
  min-height: 38px;
  padding: 11px 16px;
  font-size: 18px;
  line-height: 1.3333333;
}
.has-feedback {
  position: relative;
}
.has-feedback .form-control {
  padding-right: 42.5px;
}
.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 34px;
  height: 34px;
  line-height: 34px;
  text-align: center;
  pointer-events: none;
}
.input-lg + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 46px;
  height: 46px;
  line-height: 46px;
}
.input-sm + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 30px;
  height: 30px;
  line-height: 30px;
}
.has-success .help-block,
.has-success .control-label,
.has-success .radio,
.has-success .checkbox,
.has-success .radio-inline,
.has-success .checkbox-inline,
.has-success.radio label,
.has-success.checkbox label,
.has-success.radio-inline label,
.has-success.checkbox-inline label {
  color: #3c763d;
}
.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
.has-success .form-control:focus {
  border-color: #2b542c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
}
.has-success .input-group-addon {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #3c763d;
}
.has-success .form-control-feedback {
  color: #3c763d;
}
.has-warning .help-block,
.has-warning .control-label,
.has-warning .radio,
.has-warning .checkbox,
.has-warning .radio-inline,
.has-warning .checkbox-inline,
.has-warning.radio label,
.has-warning.checkbox label,
.has-warning.radio-inline label,
.has-warning.checkbox-inline label {
  color: #8a6d3b;
}
.has-warning .form-control {
  border-color: #8a6d3b;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
.has-warning .form-control:focus {
  border-color: #66512c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
}
.has-warning .input-group-addon {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #8a6d3b;
}
.has-warning .form-control-feedback {
  color: #8a6d3b;
}
.has-error .help-block,
.has-error .control-label,
.has-error .radio,
.has-error .checkbox,
.has-error .radio-inline,
.has-error .checkbox-inline,
.has-error.radio label,
.has-error.checkbox label,
.has-error.radio-inline label,
.has-error.checkbox-inline label {
  color: #a94442;
}
.has-error .form-control {
  border-color: #a94442;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
.has-error .form-control:focus {
  border-color: #843534;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
}
.has-error .input-group-addon {
  color: #a94442;
  background-color: #f2dede;
  border-color: #a94442;
}
.has-error .form-control-feedback {
  color: #a94442;
}
.has-feedback label ~ .form-control-feedback {
  top: 25px;
}
.has-feedback label.sr-only ~ .form-control-feedback {
  top: 0;
}
.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #737373;
}
@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .form-inline .form-control-static {
    display: inline-block;
  }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .form-inline .input-group .input-group-addon,
  .form-inline .input-group .input-group-btn,
  .form-inline .input-group .form-control {
    width: auto;
  }
  .form-inline .input-group > .form-control {
    width: 100%;
  }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio label,
  .form-inline .checkbox label {
    padding-left: 0;
  }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .form-inline .has-feedback .form-control-feedback {
    top: 0;
  }
}
.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  padding-top: 7px;
  margin-top: 0;
  margin-bottom: 0;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 27px;
}
.form-horizontal .form-group {
  margin-right: -15px;
  margin-left: -15px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    padding-top: 7px;
    margin-bottom: 0;
    text-align: right;
  }
}
.form-horizontal .has-feedback .form-control-feedback {
  right: 15px;
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 11px;
    font-size: 18px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 6px;
    font-size: 12px;
  }
}
.btn {
  display: inline-block;
  padding: 6px 12px;
  margin-bottom: 0;
  font-size: 14px;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
      touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
}
.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.btn:hover,
.btn:focus,
.btn.focus {
  color: #333;
  text-decoration: none;
}
.btn:active,
.btn.active {
  background-image: none;
  outline: 0;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
}
.btn.disabled,
.btn[disabled],
fieldset[disabled] .btn {
  cursor: not-allowed;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
          box-shadow: none;
  opacity: .65;
}
a.btn.disabled,
fieldset[disabled] a.btn {
  pointer-events: none;
}
.btn-default {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.btn-default:focus,
.btn-default.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.btn-default:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active:hover,
.btn-default.active:hover,
.open > .dropdown-toggle.btn-default:hover,
.btn-default:active:focus,
.btn-default.active:focus,
.open > .dropdown-toggle.btn-default:focus,
.btn-default:active.focus,
.btn-default.active.focus,
.open > .dropdown-toggle.btn-default.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  background-image: none;
}
.btn-default.disabled:hover,
.btn-default[disabled]:hover,
fieldset[disabled] .btn-default:hover,
.btn-default.disabled:focus,
.btn-default[disabled]:focus,
fieldset[disabled] .btn-default:focus,
.btn-default.disabled.focus,
.btn-default[disabled].focus,
fieldset[disabled] .btn-default.focus {
  background-color: #fff;
  border-color: #ccc;
}
.btn-default .badge {
  color: #fff;
  background-color: #333;
}
.btn-primary {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary:focus,
.btn-primary.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.btn-primary:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active:hover,
.btn-primary.active:hover,
.open > .dropdown-toggle.btn-primary:hover,
.btn-primary:active:focus,
.btn-primary.active:focus,
.open > .dropdown-toggle.btn-primary:focus,
.btn-primary:active.focus,
.btn-primary.active.focus,
.open > .dropdown-toggle.btn-primary.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  background-image: none;
}
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled.focus,
.btn-primary[disabled].focus,
fieldset[disabled] .btn-primary.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary .badge {
  color: #337ab7;
  background-color: #fff;
}
.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success:focus,
.btn-success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.btn-success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active:hover,
.btn-success.active:hover,
.open > .dropdown-toggle.btn-success:hover,
.btn-success:active:focus,
.btn-success.active:focus,
.open > .dropdown-toggle.btn-success:focus,
.btn-success:active.focus,
.btn-success.active.focus,
.open > .dropdown-toggle.btn-success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  background-image: none;
}
.btn-success.disabled:hover,
.btn-success[disabled]:hover,
fieldset[disabled] .btn-success:hover,
.btn-success.disabled:focus,
.btn-success[disabled]:focus,
fieldset[disabled] .btn-success:focus,
.btn-success.disabled.focus,
.btn-success[disabled].focus,
fieldset[disabled] .btn-success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.btn-info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info:focus,
.btn-info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.btn-info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active:hover,
.btn-info.active:hover,
.open > .dropdown-toggle.btn-info:hover,
.btn-info:active:focus,
.btn-info.active:focus,
.open > .dropdown-toggle.btn-info:focus,
.btn-info:active.focus,
.btn-info.active.focus,
.open > .dropdown-toggle.btn-info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  background-image: none;
}
.btn-info.disabled:hover,
.btn-info[disabled]:hover,
fieldset[disabled] .btn-info:hover,
.btn-info.disabled:focus,
.btn-info[disabled]:focus,
fieldset[disabled] .btn-info:focus,
.btn-info.disabled.focus,
.btn-info[disabled].focus,
fieldset[disabled] .btn-info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.btn-warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning:focus,
.btn-warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.btn-warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active:hover,
.btn-warning.active:hover,
.open > .dropdown-toggle.btn-warning:hover,
.btn-warning:active:focus,
.btn-warning.active:focus,
.open > .dropdown-toggle.btn-warning:focus,
.btn-warning:active.focus,
.btn-warning.active.focus,
.open > .dropdown-toggle.btn-warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  background-image: none;
}
.btn-warning.disabled:hover,
.btn-warning[disabled]:hover,
fieldset[disabled] .btn-warning:hover,
.btn-warning.disabled:focus,
.btn-warning[disabled]:focus,
fieldset[disabled] .btn-warning:focus,
.btn-warning.disabled.focus,
.btn-warning[disabled].focus,
fieldset[disabled] .btn-warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.btn-danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger:focus,
.btn-danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.btn-danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active:hover,
.btn-danger.active:hover,
.open > .dropdown-toggle.btn-danger:hover,
.btn-danger:active:focus,
.btn-danger.active:focus,
.open > .dropdown-toggle.btn-danger:focus,
.btn-danger:active.focus,
.btn-danger.active.focus,
.open > .dropdown-toggle.btn-danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  background-image: none;
}
.btn-danger.disabled:hover,
.btn-danger[disabled]:hover,
fieldset[disabled] .btn-danger:hover,
.btn-danger.disabled:focus,
.btn-danger[disabled]:focus,
fieldset[disabled] .btn-danger:focus,
.btn-danger.disabled.focus,
.btn-danger[disabled].focus,
fieldset[disabled] .btn-danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger .badge {
  color: #d9534f;
  background-color: #fff;
}
.btn-link {
  font-weight: normal;
  color: #337ab7;
  border-radius: 0;
}
.btn-link,
.btn-link:active,
.btn-link.active,
.btn-link[disabled],
fieldset[disabled] .btn-link {
  background-color: transparent;
  -webkit-box-shadow: none;
          box-shadow: none;
}
.btn-link,
.btn-link:hover,
.btn-link:focus,
.btn-link:active {
  border-color: transparent;
}
.btn-link:hover,
.btn-link:focus {
  color: #23527c;
  text-decoration: underline;
  background-color: transparent;
}
.btn-link[disabled]:hover,
fieldset[disabled] .btn-link:hover,
.btn-link[disabled]:focus,
fieldset[disabled] .btn-link:focus {
  color: #777;
  text-decoration: none;
}
.btn-lg,
.btn-group-lg > .btn {
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
.btn-sm,
.btn-group-sm > .btn {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.btn-xs,
.btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.btn-block {
  display: block;
  width: 100%;
}
.btn-block + .btn-block {
  margin-top: 5px;
}
input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%;
}
.fade {
  opacity: 0;
  -webkit-transition: opacity .15s linear;
       -o-transition: opacity .15s linear;
          transition: opacity .15s linear;
}
.fade.in {
  opacity: 1;
}
.collapse {
  display: none;
}
.collapse.in {
  display: block;
}
tr.collapse.in {
  display: table-row;
}
tbody.collapse.in {
  display: table-row-group;
}
.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-timing-function: ease;
       -o-transition-timing-function: ease;
          transition-timing-function: ease;
  -webkit-transition-duration: .35s;
       -o-transition-duration: .35s;
          transition-duration: .35s;
  -webkit-transition-property: height, visibility;
       -o-transition-property: height, visibility;
          transition-property: height, visibility;
}
.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 4px dashed;
  border-top: 4px solid \9;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
}
.dropup,
.dropdown {
  position: relative;
}
.dropdown-toggle:focus {
  outline: 0;
}
.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  font-size: 14px;
  text-align: left;
  list-style: none;
  background-color: #fff;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, .15);
  border-radius: 4px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
          box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333;
  white-space: nowrap;
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  color: #262626;
  text-decoration: none;
  background-color: #f5f5f5;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: #337ab7;
  outline: 0;
}
.dropdown-menu > .disabled > a,
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  color: #777;
}
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  cursor: not-allowed;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
.open > .dropdown-menu {
  display: block;
}
.open > a {
  outline: 0;
}
.dropdown-menu-right {
  right: 0;
  left: auto;
}
.dropdown-menu-left {
  right: auto;
  left: 0;
}
.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 12px;
  line-height: 1.42857143;
  color: #777;
  white-space: nowrap;
}
.dropdown-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 990;
}
.pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  content: "";
  border-top: 0;
  border-bottom: 4px dashed;
  border-bottom: 4px solid \9;
}
.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px;
}
@media (min-width: 768px) {
  .navbar-right .dropdown-menu {
    right: 0;
    left: auto;
  }
  .navbar-right .dropdown-menu-left {
    right: auto;
    left: 0;
  }
}
.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.btn-group > .btn,
.btn-group-vertical > .btn {
  position: relative;
  float: left;
}
.btn-group > .btn:hover,
.btn-group-vertical > .btn:hover,
.btn-group > .btn:focus,
.btn-group-vertical > .btn:focus,
.btn-group > .btn:active,
.btn-group-vertical > .btn:active,
.btn-group > .btn.active,
.btn-group-vertical > .btn.active {
  z-index: 2;
}
.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px;
}
.btn-toolbar {
  margin-left: -5px;
}
.btn-toolbar .btn,
.btn-toolbar .btn-group,
.btn-toolbar .input-group {
  float: left;
}
.btn-toolbar > .btn,
.btn-toolbar > .btn-group,
.btn-toolbar > .input-group {
  margin-left: 5px;
}
.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0;
}
.btn-group > .btn:first-child {
  margin-left: 0;
}
.btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group > .btn-group {
  float: left;
}
.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0;
}
.btn-group > .btn + .dropdown-toggle {
  padding-right: 8px;
  padding-left: 8px;
}
.btn-group > .btn-lg + .dropdown-toggle {
  padding-right: 12px;
  padding-left: 12px;
}
.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
}
.btn-group.open .dropdown-toggle.btn-link {
  -webkit-box-shadow: none;
          box-shadow: none;
}
.btn .caret {
  margin-left: 0;
}
.btn-lg .caret {
  border-width: 5px 5px 0;
  border-bottom-width: 0;
}
.dropup .btn-lg .caret {
  border-width: 0 5px 5px;
}
.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
}
.btn-group-vertical > .btn-group > .btn {
  float: none;
}
.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0;
}
.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
}
.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate;
}
.btn-group-justified > .btn,
.btn-group-justified > .btn-group {
  display: table-cell;
  float: none;
  width: 1%;
}
.btn-group-justified > .btn-group .btn {
  width: 100%;
}
.btn-group-justified > .btn-group .dropdown-menu {
  left: auto;
}
[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none;
}
.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
}
.input-group[class*="col-"] {
  float: none;
  padding-right: 0;
  padding-left: 0;
}
.input-group .form-control {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
}
.input-group .form-control:focus {
  z-index: 3;
}
.input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 46px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
select.input-group-lg > .form-control,
select.input-group-lg > .input-group-addon,
select.input-group-lg > .input-group-btn > .btn {
  height: 46px;
  line-height: 46px;
}
textarea.input-group-lg > .form-control,
textarea.input-group-lg > .input-group-addon,
textarea.input-group-lg > .input-group-btn > .btn,
select[multiple].input-group-lg > .form-control,
select[multiple].input-group-lg > .input-group-addon,
select[multiple].input-group-lg > .input-group-btn > .btn {
  height: auto;
}
.input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
select.input-group-sm > .form-control,
select.input-group-sm > .input-group-addon,
select.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  line-height: 30px;
}
textarea.input-group-sm > .form-control,
textarea.input-group-sm > .input-group-addon,
textarea.input-group-sm > .input-group-btn > .btn,
select[multiple].input-group-sm > .form-control,
select[multiple].input-group-sm > .input-group-addon,
select[multiple].input-group-sm > .input-group-btn > .btn {
  height: auto;
}
.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell;
}
.input-group-addon:not(:first-child):not(:last-child),
.input-group-btn:not(:first-child):not(:last-child),
.input-group .form-control:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle;
}
.input-group-addon {
  padding: 6px 12px;
  font-size: 14px;
  font-weight: normal;
  line-height: 1;
  color: #555;
  text-align: center;
  background-color: #eee;
  border: 1px solid #ccc;
  border-radius: 4px;
}
.input-group-addon.input-sm {
  padding: 5px 10px;
  font-size: 12px;
  border-radius: 3px;
}
.input-group-addon.input-lg {
  padding: 10px 16px;
  font-size: 18px;
  border-radius: 6px;
}
.input-group-addon input[type="radio"],
.input-group-addon input[type="checkbox"] {
  margin-top: 0;
}
.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.input-group-addon:first-child {
  border-right: 0;
}
.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}
.input-group-addon:last-child {
  border-left: 0;
}
.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap;
}
.input-group-btn > .btn {
  position: relative;
}
.input-group-btn > .btn + .btn {
  margin-left: -1px;
}
.input-group-btn > .btn:hover,
.input-group-btn > .btn:focus,
.input-group-btn > .btn:active {
  z-index: 2;
}
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group {
  margin-right: -1px;
}
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group {
  z-index: 2;
  margin-left: -1px;
}
.nav {
  padding-left: 0;
  margin-bottom: 0;
  list-style: none;
}
.nav > li {
  position: relative;
  display: block;
}
.nav > li > a {
  position: relative;
  display: block;
  padding: 10px 15px;
}
.nav > li > a:hover,
.nav > li > a:focus {
  text-decoration: none;
  background-color: #eee;
}
.nav > li.disabled > a {
  color: #777;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #777;
  text-decoration: none;
  cursor: not-allowed;
  background-color: transparent;
}
.nav .open > a,
.nav .open > a:hover,
.nav .open > a:focus {
  background-color: #eee;
  border-color: #337ab7;
}
.nav .nav-divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.nav > li > a > img {
  max-width: none;
}
.nav-tabs {
  border-bottom: 1px solid #ddd;
}
.nav-tabs > li {
  float: left;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  margin-right: 2px;
  line-height: 1.42857143;
  border: 1px solid transparent;
  border-radius: 4px 4px 0 0;
}
.nav-tabs > li > a:hover {
  border-color: #eee #eee #ddd;
}
.nav-tabs > li.active > a,
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  color: #555;
  cursor: default;
  background-color: #fff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
}
.nav-tabs.nav-justified {
  width: 100%;
  border-bottom: 0;
}
.nav-tabs.nav-justified > li {
  float: none;
}
.nav-tabs.nav-justified > li > a {
  margin-bottom: 5px;
  text-align: center;
}
.nav-tabs.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-tabs.nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 4px;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 4px 4px 0 0;
  }
  .nav-tabs.nav-justified > .active > a,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 4px;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #fff;
  background-color: #337ab7;
}
.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}
.nav-justified {
  width: 100%;
}
.nav-justified > li {
  float: none;
}
.nav-justified > li > a {
  margin-bottom: 5px;
  text-align: center;
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a {
  margin-right: 0;
  border-radius: 4px;
}
.nav-tabs-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 4px 4px 0 0;
  }
  .nav-tabs-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.tab-content > .tab-pane {
  display: none;
}
.tab-content > .active {
  display: block;
}
.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.navbar {
  position: relative;
  min-height: 50px;
  margin-bottom: 20px;
  border: 1px solid transparent;
}
@media (min-width: 768px) {
  .navbar {
    border-radius: 4px;
  }
}
@media (min-width: 768px) {
  .navbar-header {
    float: left;
  }
}
.navbar-collapse {
  padding-right: 15px;
  padding-left: 15px;
  overflow-x: visible;
  -webkit-overflow-scrolling: touch;
  border-top: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1);
}
.navbar-collapse.in {
  overflow-y: auto;
}
@media (min-width: 768px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    -webkit-box-shadow: none;
            box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse,
  .navbar-static-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    padding-right: 0;
    padding-left: 0;
  }
}
.navbar-fixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-device-width: 480px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}
.container > .navbar-header,
.container-fluid > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-collapse {
  margin-right: -15px;
  margin-left: -15px;
}
@media (min-width: 768px) {
  .container > .navbar-header,
  .container-fluid > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}
.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 768px) {
  .navbar-static-top {
    border-radius: 0;
  }
}
.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
}
@media (min-width: 768px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}
.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}
.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}
.navbar-brand {
  float: left;
  height: 50px;
  padding: 15px 15px;
  font-size: 18px;
  line-height: 20px;
}
.navbar-brand:hover,
.navbar-brand:focus {
  text-decoration: none;
}
.navbar-brand > img {
  display: block;
}
@media (min-width: 768px) {
  .navbar > .container .navbar-brand,
  .navbar > .container-fluid .navbar-brand {
    margin-left: -15px;
  }
}
.navbar-toggle {
  position: relative;
  float: right;
  padding: 9px 10px;
  margin-top: 8px;
  margin-right: 15px;
  margin-bottom: 8px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
  margin-top: 4px;
}
@media (min-width: 768px) {
  .navbar-toggle {
    display: none;
  }
}
.navbar-nav {
  margin: 7.5px -15px;
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 20px;
}
@media (max-width: 767px) {
  .navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 0;
    background-color: transparent;
    border: 0;
    -webkit-box-shadow: none;
            box-shadow: none;
  }
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 20px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 768px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 15px;
    padding-bottom: 15px;
  }
}
.navbar-form {
  padding: 10px 15px;
  margin-top: 8px;
  margin-right: -15px;
  margin-bottom: 8px;
  margin-left: -15px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1), 0 1px 0 rgba(255, 255, 255, .1);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1), 0 1px 0 rgba(255, 255, 255, .1);
}
@media (min-width: 768px) {
  .navbar-form .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .navbar-form .form-control-static {
    display: inline-block;
  }
  .navbar-form .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .navbar-form .input-group .input-group-addon,
  .navbar-form .input-group .input-group-btn,
  .navbar-form .input-group .form-control {
    width: auto;
  }
  .navbar-form .input-group > .form-control {
    width: 100%;
  }
  .navbar-form .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio,
  .navbar-form .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio label,
  .navbar-form .checkbox label {
    padding-left: 0;
  }
  .navbar-form .radio input[type="radio"],
  .navbar-form .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .navbar-form .has-feedback .form-control-feedback {
    top: 0;
  }
}
@media (max-width: 767px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
  .navbar-form .form-group:last-child {
    margin-bottom: 0;
  }
}
@media (min-width: 768px) {
  .navbar-form {
    width: auto;
    padding-top: 0;
    padding-bottom: 0;
    margin-right: 0;
    margin-left: 0;
    border: 0;
    -webkit-box-shadow: none;
            box-shadow: none;
  }
}
.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.navbar-btn {
  margin-top: 8px;
  margin-bottom: 8px;
}
.navbar-btn.btn-sm {
  margin-top: 10px;
  margin-bottom: 10px;
}
.navbar-btn.btn-xs {
  margin-top: 14px;
  margin-bottom: 14px;
}
.navbar-text {
  margin-top: 15px;
  margin-bottom: 15px;
}
@media (min-width: 768px) {
  .navbar-text {
    float: left;
    margin-right: 15px;
    margin-left: 15px;
  }
}
@media (min-width: 768px) {
  .navbar-left {
    float: left !important;
  }
  .navbar-right {
    float: right !important;
    margin-right: -15px;
  }
  .navbar-right ~ .navbar-right {
    margin-right: 0;
  }
}
.navbar-default {
  background-color: #f8f8f8;
  border-color: #e7e7e7;
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
  color: #777;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #333;
  background-color: transparent;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #ddd;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
@media (max-width: 767px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}
.navbar-inverse {
  background-color: #222;
  border-color: #080808;
}
.navbar-inverse .navbar-brand {
  color: #9d9d9d;
}
.navbar-inverse .navbar-brand:hover,
.navbar-inverse .navbar-brand:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-text {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-nav > .active > a,
.navbar-inverse .navbar-nav > .active > a:hover,
.navbar-inverse .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: #080808;
}
.navbar-inverse .navbar-nav > .disabled > a,
.navbar-inverse .navbar-nav > .disabled > a:hover,
.navbar-inverse .navbar-nav > .disabled > a:focus {
  color: #444;
  background-color: transparent;
}
.navbar-inverse .navbar-toggle {
  border-color: #333;
}
.navbar-inverse .navbar-toggle:hover,
.navbar-inverse .navbar-toggle:focus {
  background-color: #333;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #101010;
}
.navbar-inverse .navbar-nav > .open > a,
.navbar-inverse .navbar-nav > .open > a:hover,
.navbar-inverse .navbar-nav > .open > a:focus {
  color: #fff;
  background-color: #080808;
}
@media (max-width: 767px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
    border-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #9d9d9d;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #fff;
    background-color: transparent;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #444;
    background-color: transparent;
  }
}
.navbar-inverse .navbar-link {
  color: #9d9d9d;
}
.navbar-inverse .navbar-link:hover {
  color: #fff;
}
.navbar-inverse .btn-link {
  color: #9d9d9d;
}
.navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link:focus {
  color: #fff;
}
.navbar-inverse .btn-link[disabled]:hover,
fieldset[disabled] .navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link[disabled]:focus,
fieldset[disabled] .navbar-inverse .btn-link:focus {
  color: #444;
}
.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 20px;
  list-style: none;
  background-color: #f5f5f5;
  border-radius: 4px;
}
.breadcrumb > li {
  display: inline-block;
}
.breadcrumb > li + li:before {
  padding: 0 5px;
  color: #ccc;
  content: "/\00a0";
}
.breadcrumb > .active {
  color: #777;
}
.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 20px 0;
  border-radius: 4px;
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  margin-left: -1px;
  line-height: 1.42857143;
  color: #337ab7;
  text-decoration: none;
  background-color: #fff;
  border: 1px solid #ddd;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: #23527c;
  background-color: #eee;
  border-color: #ddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color: #fff;
  cursor: default;
  background-color: #337ab7;
  border-color: #337ab7;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777;
  cursor: not-allowed;
  background-color: #fff;
  border-color: #ddd;
}
.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-top-left-radius: 6px;
  border-bottom-left-radius: 6px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
}
.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
}
.pager {
  padding-left: 0;
  margin: 20px 0;
  text-align: center;
  list-style: none;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777;
  cursor: not-allowed;
  background-color: #fff;
}
.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
}
a.label:hover,
a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.label:empty {
  display: none;
}
.btn .label {
  position: relative;
  top: -1px;
}
.label-default {
  background-color: #777;
}
.label-default[href]:hover,
.label-default[href]:focus {
  background-color: #5e5e5e;
}
.label-primary {
  background-color: #337ab7;
}
.label-primary[href]:hover,
.label-primary[href]:focus {
  background-color: #286090;
}
.label-success {
  background-color: #5cb85c;
}
.label-success[href]:hover,
.label-success[href]:focus {
  background-color: #449d44;
}
.label-info {
  background-color: #5bc0de;
}
.label-info[href]:hover,
.label-info[href]:focus {
  background-color: #31b0d5;
}
.label-warning {
  background-color: #f0ad4e;
}
.label-warning[href]:hover,
.label-warning[href]:focus {
  background-color: #ec971f;
}
.label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover,
.label-danger[href]:focus {
  background-color: #c9302c;
}
.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 12px;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  background-color: #777;
  border-radius: 10px;
}
.badge:empty {
  display: none;
}
.btn .badge {
  position: relative;
  top: -1px;
}
.btn-xs .badge,
.btn-group-xs > .btn .badge {
  top: 0;
  padding: 1px 5px;
}
a.badge:hover,
a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.list-group-item.active > .badge,
.nav-pills > .active > a > .badge {
  color: #337ab7;
  background-color: #fff;
}
.list-group-item > .badge {
  float: right;
}
.list-group-item > .badge + .badge {
  margin-right: 5px;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}
.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eee;
}
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 21px;
  font-weight: 200;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron,
.container-fluid .jumbotron {
  padding-right: 15px;
  padding-left: 15px;
  border-radius: 6px;
}
.jumbotron .container {
  max-width: 100%;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron,
  .container-fluid .jumbotron {
    padding-right: 60px;
    padding-left: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 63px;
  }
}
.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 20px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 4px;
  -webkit-transition: border .2s ease-in-out;
       -o-transition: border .2s ease-in-out;
          transition: border .2s ease-in-out;
}
.thumbnail > img,
.thumbnail a > img {
  margin-right: auto;
  margin-left: auto;
}
a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #337ab7;
}
.thumbnail .caption {
  padding: 9px;
  color: #333;
}
.alert {
  padding: 15px;
  margin-bottom: 20px;
  border: 1px solid transparent;
  border-radius: 4px;
}
.alert h4 {
  margin-top: 0;
  color: inherit;
}
.alert .alert-link {
  font-weight: bold;
}
.alert > p,
.alert > ul {
  margin-bottom: 0;
}
.alert > p + p {
  margin-top: 5px;
}
.alert-dismissable,
.alert-dismissible {
  padding-right: 35px;
}
.alert-dismissable .close,
.alert-dismissible .close {
  position: relative;
  top: -2px;
  right: -21px;
  color: inherit;
}
.alert-success {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.alert-success hr {
  border-top-color: #c9e2b3;
}
.alert-success .alert-link {
  color: #2b542c;
}
.alert-info {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.alert-info hr {
  border-top-color: #a6e1ec;
}
.alert-info .alert-link {
  color: #245269;
}
.alert-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.alert-warning hr {
  border-top-color: #f7e1b5;
}
.alert-warning .alert-link {
  color: #66512c;
}
.alert-danger {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.alert-danger hr {
  border-top-color: #e4b9c0;
}
.alert-danger .alert-link {
  color: #843534;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-o-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  height: 20px;
  margin-bottom: 20px;
  overflow: hidden;
  background-color: #f5f5f5;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
          box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
}
.progress-bar {
  float: left;
  width: 0;
  height: 100%;
  font-size: 12px;
  line-height: 20px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
          box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
  -webkit-transition: width .6s ease;
       -o-transition: width .6s ease;
          transition: width .6s ease;
}
.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  -webkit-background-size: 40px 40px;
          background-size: 40px 40px;
}
.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
       -o-animation: progress-bar-stripes 2s linear infinite;
          animation: progress-bar-stripes 2s linear infinite;
}
.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.media {
  margin-top: 15px;
}
.media:first-child {
  margin-top: 0;
}
.media,
.media-body {
  overflow: hidden;
  zoom: 1;
}
.media-body {
  width: 10000px;
}
.media-object {
  display: block;
}
.media-object.img-thumbnail {
  max-width: none;
}
.media-right,
.media > .pull-right {
  padding-left: 10px;
}
.media-left,
.media > .pull-left {
  padding-right: 10px;
}
.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top;
}
.media-middle {
  vertical-align: middle;
}
.media-bottom {
  vertical-align: bottom;
}
.media-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.media-list {
  padding-left: 0;
  list-style: none;
}
.list-group {
  padding-left: 0;
  margin-bottom: 20px;
}
.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.list-group-item:first-child {
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
}
.list-group-item:last-child {
  margin-bottom: 0;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
}
a.list-group-item,
button.list-group-item {
  color: #555;
}
a.list-group-item .list-group-item-heading,
button.list-group-item .list-group-item-heading {
  color: #333;
}
a.list-group-item:hover,
button.list-group-item:hover,
a.list-group-item:focus,
button.list-group-item:focus {
  color: #555;
  text-decoration: none;
  background-color: #f5f5f5;
}
button.list-group-item {
  width: 100%;
  text-align: left;
}
.list-group-item.disabled,
.list-group-item.disabled:hover,
.list-group-item.disabled:focus {
  color: #777;
  cursor: not-allowed;
  background-color: #eee;
}
.list-group-item.disabled .list-group-item-heading,
.list-group-item.disabled:hover .list-group-item-heading,
.list-group-item.disabled:focus .list-group-item-heading {
  color: inherit;
}
.list-group-item.disabled .list-group-item-text,
.list-group-item.disabled:hover .list-group-item-text,
.list-group-item.disabled:focus .list-group-item-text {
  color: #777;
}
.list-group-item.active,
.list-group-item.active:hover,
.list-group-item.active:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.list-group-item.active .list-group-item-heading,
.list-group-item.active:hover .list-group-item-heading,
.list-group-item.active:focus .list-group-item-heading,
.list-group-item.active .list-group-item-heading > small,
.list-group-item.active:hover .list-group-item-heading > small,
.list-group-item.active:focus .list-group-item-heading > small,
.list-group-item.active .list-group-item-heading > .small,
.list-group-item.active:hover .list-group-item-heading > .small,
.list-group-item.active:focus .list-group-item-heading > .small {
  color: inherit;
}
.list-group-item.active .list-group-item-text,
.list-group-item.active:hover .list-group-item-text,
.list-group-item.active:focus .list-group-item-text {
  color: #c7ddef;
}
.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8;
}
a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d;
}
a.list-group-item-success .list-group-item-heading,
button.list-group-item-success .list-group-item-heading {
  color: inherit;
}
a.list-group-item-success:hover,
button.list-group-item-success:hover,
a.list-group-item-success:focus,
button.list-group-item-success:focus {
  color: #3c763d;
  background-color: #d0e9c6;
}
a.list-group-item-success.active,
button.list-group-item-success.active,
a.list-group-item-success.active:hover,
button.list-group-item-success.active:hover,
a.list-group-item-success.active:focus,
button.list-group-item-success.active:focus {
  color: #fff;
  background-color: #3c763d;
  border-color: #3c763d;
}
.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7;
}
a.list-group-item-info,
button.list-group-item-info {
  color: #31708f;
}
a.list-group-item-info .list-group-item-heading,
button.list-group-item-info .list-group-item-heading {
  color: inherit;
}
a.list-group-item-info:hover,
button.list-group-item-info:hover,
a.list-group-item-info:focus,
button.list-group-item-info:focus {
  color: #31708f;
  background-color: #c4e3f3;
}
a.list-group-item-info.active,
button.list-group-item-info.active,
a.list-group-item-info.active:hover,
button.list-group-item-info.active:hover,
a.list-group-item-info.active:focus,
button.list-group-item-info.active:focus {
  color: #fff;
  background-color: #31708f;
  border-color: #31708f;
}
.list-group-item-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
}
a.list-group-item-warning,
button.list-group-item-warning {
  color: #8a6d3b;
}
a.list-group-item-warning .list-group-item-heading,
button.list-group-item-warning .list-group-item-heading {
  color: inherit;
}
a.list-group-item-warning:hover,
button.list-group-item-warning:hover,
a.list-group-item-warning:focus,
button.list-group-item-warning:focus {
  color: #8a6d3b;
  background-color: #faf2cc;
}
a.list-group-item-warning.active,
button.list-group-item-warning.active,
a.list-group-item-warning.active:hover,
button.list-group-item-warning.active:hover,
a.list-group-item-warning.active:focus,
button.list-group-item-warning.active:focus {
  color: #fff;
  background-color: #8a6d3b;
  border-color: #8a6d3b;
}
.list-group-item-danger {
  color: #a94442;
  background-color: #f2dede;
}
a.list-group-item-danger,
button.list-group-item-danger {
  color: #a94442;
}
a.list-group-item-danger .list-group-item-heading,
button.list-group-item-danger .list-group-item-heading {
  color: inherit;
}
a.list-group-item-danger:hover,
button.list-group-item-danger:hover,
a.list-group-item-danger:focus,
button.list-group-item-danger:focus {
  color: #a94442;
  background-color: #ebcccc;
}
a.list-group-item-danger.active,
button.list-group-item-danger.active,
a.list-group-item-danger.active:hover,
button.list-group-item-danger.active:hover,
a.list-group-item-danger.active:focus,
button.list-group-item-danger.active:focus {
  color: #fff;
  background-color: #a94442;
  border-color: #a94442;
}
.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3;
}
.panel {
  margin-bottom: 20px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
          box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}
.panel-body {
  padding: 15px;
}
.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel-heading > .dropdown .dropdown-toggle {
  color: inherit;
}
.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 16px;
  color: inherit;
}
.panel-title > a,
.panel-title > small,
.panel-title > .small,
.panel-title > small > a,
.panel-title > .small > a {
  color: inherit;
}
.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0;
}
.panel > .list-group .list-group-item,
.panel > .panel-collapse > .list-group .list-group-item {
  border-width: 1px 0;
  border-radius: 0;
}
.panel > .list-group:first-child .list-group-item:first-child,
.panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
  border-top: 0;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .list-group:last-child .list-group-item:last-child,
.panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
  border-bottom: 0;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0;
}
.list-group + .panel-footer {
  border-top-width: 0;
}
.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0;
}
.panel > .table caption,
.panel > .table-responsive > .table caption,
.panel > .panel-collapse > .table caption {
  padding-right: 15px;
  padding-left: 15px;
}
.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
  border-top-left-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
  border-top-right-radius: 3px;
}
.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
  border-bottom-right-radius: 3px;
}
.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #ddd;
}
.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0;
}
.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0;
}
.panel > .table-bordered > thead > tr > th:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
.panel > .table-bordered > tbody > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
.panel > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-bordered > thead > tr > td:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
.panel > .table-bordered > tbody > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
.panel > .table-bordered > tfoot > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
  border-left: 0;
}
.panel > .table-bordered > thead > tr > th:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
.panel > .table-bordered > tbody > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
.panel > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-bordered > thead > tr > td:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
.panel > .table-bordered > tbody > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
.panel > .table-bordered > tfoot > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
  border-right: 0;
}
.panel > .table-bordered > thead > tr:first-child > td,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
.panel > .table-bordered > tbody > tr:first-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
.panel > .table-bordered > thead > tr:first-child > th,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
.panel > .table-bordered > tbody > tr:first-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
  border-bottom: 0;
}
.panel > .table-bordered > tbody > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
.panel > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-bordered > tbody > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
.panel > .table-bordered > tfoot > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
  border-bottom: 0;
}
.panel > .table-responsive {
  margin-bottom: 0;
  border: 0;
}
.panel-group {
  margin-bottom: 20px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 4px;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group .panel-heading {
  border-bottom: 0;
}
.panel-group .panel-heading + .panel-collapse > .panel-body,
.panel-group .panel-heading + .panel-collapse > .list-group {
  border-top: 1px solid #ddd;
}
.panel-group .panel-footer {
  border-top: 0;
}
.panel-group .panel-footer + .panel-collapse .panel-body {
  border-bottom: 1px solid #ddd;
}
.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
.panel-primary {
  border-color: #337ab7;
}
.panel-primary > .panel-heading {
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #337ab7;
}
.panel-primary > .panel-heading .badge {
  color: #337ab7;
  background-color: #fff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #337ab7;
}
.panel-success {
  border-color: #d6e9c6;
}
.panel-success > .panel-heading {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.panel-success > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #d6e9c6;
}
.panel-success > .panel-heading .badge {
  color: #dff0d8;
  background-color: #3c763d;
}
.panel-success > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #d6e9c6;
}
.panel-info {
  border-color: #bce8f1;
}
.panel-info > .panel-heading {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.panel-info > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #bce8f1;
}
.panel-info > .panel-heading .badge {
  color: #d9edf7;
  background-color: #31708f;
}
.panel-info > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #bce8f1;
}
.panel-warning {
  border-color: #faebcc;
}
.panel-warning > .panel-heading {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.panel-warning > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #faebcc;
}
.panel-warning > .panel-heading .badge {
  color: #fcf8e3;
  background-color: #8a6d3b;
}
.panel-warning > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #faebcc;
}
.panel-danger {
  border-color: #ebccd1;
}
.panel-danger > .panel-heading {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.panel-danger > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ebccd1;
}
.panel-danger > .panel-heading .badge {
  color: #f2dede;
  background-color: #a94442;
}
.panel-danger > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ebccd1;
}
.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border: 0;
}
.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive-4by3 {
  padding-bottom: 75%;
}
.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
}
.well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, .15);
}
.well-lg {
  padding: 24px;
  border-radius: 6px;
}
.well-sm {
  padding: 9px;
  border-radius: 3px;
}
.close {
  float: right;
  font-size: 21px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  filter: alpha(opacity=20);
  opacity: .2;
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  filter: alpha(opacity=50);
  opacity: .5;
}
button.close {
  -webkit-appearance: none;
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
}
.modal-open {
  overflow: hidden;
}
.modal {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  display: none;
  overflow: hidden;
  -webkit-overflow-scrolling: touch;
  outline: 0;
}
.modal.fade .modal-dialog {
  -webkit-transition: -webkit-transform .3s ease-out;
       -o-transition:      -o-transform .3s ease-out;
          transition:         transform .3s ease-out;
  -webkit-transform: translate(0, -25%);
      -ms-transform: translate(0, -25%);
       -o-transform: translate(0, -25%);
          transform: translate(0, -25%);
}
.modal.in .modal-dialog {
  -webkit-transform: translate(0, 0);
      -ms-transform: translate(0, 0);
       -o-transform: translate(0, 0);
          transform: translate(0, 0);
}
.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto;
}
.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px;
}
.modal-content {
  position: relative;
  background-color: #fff;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, .2);
  border-radius: 6px;
  outline: 0;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
          box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000;
}
.modal-backdrop.fade {
  filter: alpha(opacity=0);
  opacity: 0;
}
.modal-backdrop.in {
  filter: alpha(opacity=50);
  opacity: .5;
}
.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
  margin-top: -2px;
}
.modal-title {
  margin: 0;
  line-height: 1.42857143;
}
.modal-body {
  position: relative;
  padding: 15px;
}
.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5;
}
.modal-footer .btn + .btn {
  margin-bottom: 0;
  margin-left: 5px;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll;
}
@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto;
  }
  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
            box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
  }
  .modal-sm {
    width: 300px;
  }
}
@media (min-width: 992px) {
  .modal-lg {
    width: 900px;
  }
}
.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 12px;
  font-style: normal;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  letter-spacing: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  white-space: normal;
  filter: alpha(opacity=0);
  opacity: 0;

  line-break: auto;
}
.tooltip.in {
  filter: alpha(opacity=90);
  opacity: .9;
}
.tooltip.top {
  padding: 5px 0;
  margin-top: -3px;
}
.tooltip.right {
  padding: 0 5px;
  margin-left: 3px;
}
.tooltip.bottom {
  padding: 5px 0;
  margin-top: 3px;
}
.tooltip.left {
  padding: 0 5px;
  margin-left: -3px;
}
.tooltip-inner {
  max-width: 200px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #000;
  border-radius: 4px;
}
.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-left .tooltip-arrow {
  right: 5px;
  bottom: 0;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
  bottom: 0;
  left: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
  top: 0;
  right: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
  top: 0;
  left: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 276px;
  padding: 1px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  font-style: normal;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  letter-spacing: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  white-space: normal;
  background-color: #fff;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, .2);
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
          box-shadow: 0 5px 10px rgba(0, 0, 0, .2);

  line-break: auto;
}
.popover.top {
  margin-top: -10px;
}
.popover.right {
  margin-left: 10px;
}
.popover.bottom {
  margin-top: 10px;
}
.popover.left {
  margin-left: -10px;
}
.popover-title {
  padding: 8px 14px;
  margin: 0;
  font-size: 14px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  border-radius: 5px 5px 0 0;
}
.popover-content {
  padding: 9px 14px;
}
.popover > .arrow,
.popover > .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.popover > .arrow {
  border-width: 11px;
}
.popover > .arrow:after {
  content: "";
  border-width: 10px;
}
.popover.top > .arrow {
  bottom: -11px;
  left: 50%;
  margin-left: -11px;
  border-top-color: #999;
  border-top-color: rgba(0, 0, 0, .25);
  border-bottom-width: 0;
}
.popover.top > .arrow:after {
  bottom: 1px;
  margin-left: -10px;
  content: " ";
  border-top-color: #fff;
  border-bottom-width: 0;
}
.popover.right > .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-right-color: #999;
  border-right-color: rgba(0, 0, 0, .25);
  border-left-width: 0;
}
.popover.right > .arrow:after {
  bottom: -10px;
  left: 1px;
  content: " ";
  border-right-color: #fff;
  border-left-width: 0;
}
.popover.bottom > .arrow {
  top: -11px;
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999;
  border-bottom-color: rgba(0, 0, 0, .25);
}
.popover.bottom > .arrow:after {
  top: 1px;
  margin-left: -10px;
  content: " ";
  border-top-width: 0;
  border-bottom-color: #fff;
}
.popover.left > .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999;
  border-left-color: rgba(0, 0, 0, .25);
}
.popover.left > .arrow:after {
  right: 1px;
  bottom: -10px;
  content: " ";
  border-right-width: 0;
  border-left-color: #fff;
}
.carousel {
  position: relative;
}
.carousel-inner {
  position: relative;
  width: 100%;
  overflow: hidden;
}
.carousel-inner > .item {
  position: relative;
  display: none;
  -webkit-transition: .6s ease-in-out left;
       -o-transition: .6s ease-in-out left;
          transition: .6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform .6s ease-in-out;
         -o-transition:      -o-transform .6s ease-in-out;
            transition:         transform .6s ease-in-out;

    -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
    -webkit-perspective: 1000px;
            perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    left: 0;
    -webkit-transform: translate3d(100%, 0, 0);
            transform: translate3d(100%, 0, 0);
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    left: 0;
    -webkit-transform: translate3d(-100%, 0, 0);
            transform: translate3d(-100%, 0, 0);
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    left: 0;
    -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 15%;
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
  background-color: rgba(0, 0, 0, 0);
  filter: alpha(opacity=50);
  opacity: .5;
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .5) 0%, rgba(0, 0, 0, .0001) 100%);
  background-image:      -o-linear-gradient(left, rgba(0, 0, 0, .5) 0%, rgba(0, 0, 0, .0001) 100%);
  background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .5)), to(rgba(0, 0, 0, .0001)));
  background-image:         linear-gradient(to right, rgba(0, 0, 0, .5) 0%, rgba(0, 0, 0, .0001) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
  background-repeat: repeat-x;
}
.carousel-control.right {
  right: 0;
  left: auto;
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .0001) 0%, rgba(0, 0, 0, .5) 100%);
  background-image:      -o-linear-gradient(left, rgba(0, 0, 0, .0001) 0%, rgba(0, 0, 0, .5) 100%);
  background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .0001)), to(rgba(0, 0, 0, .5)));
  background-image:         linear-gradient(to right, rgba(0, 0, 0, .0001) 0%, rgba(0, 0, 0, .5) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
  background-repeat: repeat-x;
}
.carousel-control:hover,
.carousel-control:focus {
  color: #fff;
  text-decoration: none;
  filter: alpha(opacity=90);
  outline: 0;
  opacity: .9;
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  z-index: 5;
  display: inline-block;
  margin-top: -10px;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  font-family: serif;
  line-height: 1;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}
.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  padding-left: 0;
  margin-left: -30%;
  text-align: center;
  list-style: none;
}
.carousel-indicators li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 1px;
  text-indent: -999px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: rgba(0, 0, 0, 0);
  border: 1px solid #fff;
  border-radius: 10px;
}
.carousel-indicators .active {
  width: 12px;
  height: 12px;
  margin: 0;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  right: 15%;
  bottom: 20px;
  left: 15%;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -10px;
  }
  .carousel-caption {
    right: 20%;
    left: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: 20px;
  }
}
.clearfix:before,
.clearfix:after,
.dl-horizontal dd:before,
.dl-horizontal dd:after,
.container:before,
.container:after,
.container-fluid:before,
.container-fluid:after,
.row:before,
.row:after,
.form-horizontal .form-group:before,
.form-horizontal .form-group:after,
.btn-toolbar:before,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:before,
.btn-group-vertical > .btn-group:after,
.nav:before,
.nav:after,
.navbar:before,
.navbar:after,
.navbar-header:before,
.navbar-header:after,
.navbar-collapse:before,
.navbar-collapse:after,
.pager:before,
.pager:after,
.panel-body:before,
.panel-body:after,
.modal-header:before,
.modal-header:after,
.modal-footer:before,
.modal-footer:after {
  display: table;
  content: " ";
}
.clearfix:after,
.dl-horizontal dd:after,
.container:after,
.container-fluid:after,
.row:after,
.form-horizontal .form-group:after,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:after,
.nav:after,
.navbar:after,
.navbar-header:after,
.navbar-collapse:after,
.pager:after,
.panel-body:after,
.modal-header:after,
.modal-footer:after {
  clear: both;
}
.center-block {
  display: block;
  margin-right: auto;
  margin-left: auto;
}
.pull-right {
  float: right !important;
}
.pull-left {
  float: left !important;
}
.hide {
  display: none !important;
}
.show {
  display: block !important;
}
.invisible {
  visibility: hidden;
}
.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.hidden {
  display: none !important;
}
.affix {
  position: fixed;
}
@-ms-viewport {
  width: device-width;
}
.visible-xs,
.visible-sm,
.visible-md,
.visible-lg {
  display: none !important;
}
.visible-xs-block,
.visible-xs-inline,
.visible-xs-inline-block,
.visible-sm-block,
.visible-sm-inline,
.visible-sm-inline-block,
.visible-md-block,
.visible-md-inline,
.visible-md-inline-block,
.visible-lg-block,
.visible-lg-inline,
.visible-lg-inline-block {
  display: none !important;
}
@media (max-width: 767px) {
  .visible-xs {
    display: block !important;
  }
  table.visible-xs {
    display: table !important;
  }
  tr.visible-xs {
    display: table-row !important;
  }
  th.visible-xs,
  td.visible-xs {
    display: table-cell !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important;
  }
  table.visible-sm {
    display: table !important;
  }
  tr.visible-sm {
    display: table-row !important;
  }
  th.visible-sm,
  td.visible-sm {
    display: table-cell !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important;
  }
  table.visible-md {
    display: table !important;
  }
  tr.visible-md {
    display: table-row !important;
  }
  th.visible-md,
  td.visible-md {
    display: table-cell !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg {
    display: block !important;
  }
  table.visible-lg {
    display: table !important;
  }
  tr.visible-lg {
    display: table-row !important;
  }
  th.visible-lg,
  td.visible-lg {
    display: table-cell !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important;
  }
}
@media (max-width: 767px) {
  .hidden-xs {
    display: none !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important;
  }
}
@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important;
  }
}
.visible-print {
  display: none !important;
}
@media print {
  .visible-print {
    display: block !important;
  }
  table.visible-print {
    display: table !important;
  }
  tr.visible-print {
    display: table-row !important;
  }
  th.visible-print,
  td.visible-print {
    display: table-cell !important;
  }
}
.visible-print-block {
  display: none !important;
}
@media print {
  .visible-print-block {
    display: block !important;
  }
}
.visible-print-inline {
  display: none !important;
}
@media print {
  .visible-print-inline {
    display: inline !important;
  }
}
.visible-print-inline-block {
  display: none !important;
}
@media print {
  .visible-print-inline-block {
    display: inline-block !important;
  }
}
@media print {
  .hidden-print {
    display: none !important;
  }
}
/*# sourceMappingURL=bootstrap.css.map */
/*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
.btn-default,
.btn-primary,
.btn-success,
.btn-info,
.btn-warning,
.btn-danger {
  text-shadow: 0 -1px 0 rgba(0, 0, 0, .2);
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 1px rgba(0, 0, 0, .075);
}
.btn-default:active,
.btn-primary:active,
.btn-success:active,
.btn-info:active,
.btn-warning:active,
.btn-danger:active,
.btn-default.active,
.btn-primary.active,
.btn-success.active,
.btn-info.active,
.btn-warning.active,
.btn-danger.active {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
}
.btn-default.disabled,
.btn-primary.disabled,
.btn-success.disabled,
.btn-info.disabled,
.btn-warning.disabled,
.btn-danger.disabled,
.btn-default[disabled],
.btn-primary[disabled],
.btn-success[disabled],
.btn-info[disabled],
.btn-warning[disabled],
.btn-danger[disabled],
fieldset[disabled] .btn-default,
fieldset[disabled] .btn-primary,
fieldset[disabled] .btn-success,
fieldset[disabled] .btn-info,
fieldset[disabled] .btn-warning,
fieldset[disabled] .btn-danger {
  -webkit-box-shadow: none;
          box-shadow: none;
}
.btn-default .badge,
.btn-primary .badge,
.btn-success .badge,
.btn-info .badge,
.btn-warning .badge,
.btn-danger .badge {
  text-shadow: none;
}
.btn:active,
.btn.active {
  background-image: none;
}
.btn-default {
  text-shadow: 0 1px 0 #fff;
  background-image: -webkit-linear-gradient(top, #fff 0%, #e0e0e0 100%);
  background-image:      -o-linear-gradient(top, #fff 0%, #e0e0e0 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#e0e0e0));
  background-image:         linear-gradient(to bottom, #fff 0%, #e0e0e0 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#ffe0e0e0', GradientType=0);
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  background-repeat: repeat-x;
  border-color: #dbdbdb;
  border-color: #ccc;
}
.btn-default:hover,
.btn-default:focus {
  background-color: #e0e0e0;
  background-position: 0 -15px;
}
.btn-default:active,
.btn-default.active {
  background-color: #e0e0e0;
  border-color: #dbdbdb;
}
.btn-default.disabled,
.btn-default[disabled],
fieldset[disabled] .btn-default,
.btn-default.disabled:hover,
.btn-default[disabled]:hover,
fieldset[disabled] .btn-default:hover,
.btn-default.disabled:focus,
.btn-default[disabled]:focus,
fieldset[disabled] .btn-default:focus,
.btn-default.disabled.focus,
.btn-default[disabled].focus,
fieldset[disabled] .btn-default.focus,
.btn-default.disabled:active,
.btn-default[disabled]:active,
fieldset[disabled] .btn-default:active,
.btn-default.disabled.active,
.btn-default[disabled].active,
fieldset[disabled] .btn-default.active {
  background-color: #e0e0e0;
  background-image: none;
}
.btn-primary {
  background-image: -webkit-linear-gradient(top, #337ab7 0%, #265a88 100%);
  background-image:      -o-linear-gradient(top, #337ab7 0%, #265a88 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#337ab7), to(#265a88));
  background-image:         linear-gradient(to bottom, #337ab7 0%, #265a88 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff337ab7', endColorstr='#ff265a88', GradientType=0);
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  background-repeat: repeat-x;
  border-color: #245580;
}
.btn-primary:hover,
.btn-primary:focus {
  background-color: #265a88;
  background-position: 0 -15px;
}
.btn-primary:active,
.btn-primary.active {
  background-color: #265a88;
  border-color: #245580;
}
.btn-primary.disabled,
.btn-primary[disabled],
fieldset[disabled] .btn-primary,
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled.focus,
.btn-primary[disabled].focus,
fieldset[disabled] .btn-primary.focus,
.btn-primary.disabled:active,
.btn-primary[disabled]:active,
fieldset[disabled] .btn-primary:active,
.btn-primary.disabled.active,
.btn-primary[disabled].active,
fieldset[disabled] .btn-primary.active {
  background-color: #265a88;
  background-image: none;
}
.btn-success {
  background-image: -webkit-linear-gradient(top, #5cb85c 0%, #419641 100%);
  background-image:      -o-linear-gradient(top, #5cb85c 0%, #419641 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#5cb85c), to(#419641));
  background-image:         linear-gradient(to bottom, #5cb85c 0%, #419641 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5cb85c', endColorstr='#ff419641', GradientType=0);
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  background-repeat: repeat-x;
  border-color: #3e8f3e;
}
.btn-success:hover,
.btn-success:focus {
  background-color: #419641;
  background-position: 0 -15px;
}
.btn-success:active,
.btn-success.active {
  background-color: #419641;
  border-color: #3e8f3e;
}
.btn-success.disabled,
.btn-success[disabled],
fieldset[disabled] .btn-success,
.btn-success.disabled:hover,
.btn-success[disabled]:hover,
fieldset[disabled] .btn-success:hover,
.btn-success.disabled:focus,
.btn-success[disabled]:focus,
fieldset[disabled] .btn-success:focus,
.btn-success.disabled.focus,
.btn-success[disabled].focus,
fieldset[disabled] .btn-success.focus,
.btn-success.disabled:active,
.btn-success[disabled]:active,
fieldset[disabled] .btn-success:active,
.btn-success.disabled.active,
.btn-success[disabled].active,
fieldset[disabled] .btn-success.active {
  background-color: #419641;
  background-image: none;
}
.btn-info {
  background-image: -webkit-linear-gradient(top, #5bc0de 0%, #2aabd2 100%);
  background-image:      -o-linear-gradient(top, #5bc0de 0%, #2aabd2 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#5bc0de), to(#2aabd2));
  background-image:         linear-gradient(to bottom, #5bc0de 0%, #2aabd2 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de', endColorstr='#ff2aabd2', GradientType=0);
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  background-repeat: repeat-x;
  border-color: #28a4c9;
}
.btn-info:hover,
.btn-info:focus {
  background-color: #2aabd2;
  background-position: 0 -15px;
}
.btn-info:active,
.btn-info.active {
  background-color: #2aabd2;
  border-color: #28a4c9;
}
.btn-info.disabled,
.btn-info[disabled],
fieldset[disabled] .btn-info,
.btn-info.disabled:hover,
.btn-info[disabled]:hover,
fieldset[disabled] .btn-info:hover,
.btn-info.disabled:focus,
.btn-info[disabled]:focus,
fieldset[disabled] .btn-info:focus,
.btn-info.disabled.focus,
.btn-info[disabled].focus,
fieldset[disabled] .btn-info.focus,
.btn-info.disabled:active,
.btn-info[disabled]:active,
fieldset[disabled] .btn-info:active,
.btn-info.disabled.active,
.btn-info[disabled].active,
fieldset[disabled] .btn-info.active {
  background-color: #2aabd2;
  background-image: none;
}
.btn-warning {
  background-image: -webkit-linear-gradient(top, #f0ad4e 0%, #eb9316 100%);
  background-image:      -o-linear-gradient(top, #f0ad4e 0%, #eb9316 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#f0ad4e), to(#eb9316));
  background-image:         linear-gradient(to bottom, #f0ad4e 0%, #eb9316 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff0ad4e', endColorstr='#ffeb9316', GradientType=0);
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  background-repeat: repeat-x;
  border-color: #e38d13;
}
.btn-warning:hover,
.btn-warning:focus {
  background-color: #eb9316;
  background-position: 0 -15px;
}
.btn-warning:active,
.btn-warning.active {
  background-color: #eb9316;
  border-color: #e38d13;
}
.btn-warning.disabled,
.btn-warning[disabled],
fieldset[disabled] .btn-warning,
.btn-warning.disabled:hover,
.btn-warning[disabled]:hover,
fieldset[disabled] .btn-warning:hover,
.btn-warning.disabled:focus,
.btn-warning[disabled]:focus,
fieldset[disabled] .btn-warning:focus,
.btn-warning.disabled.focus,
.btn-warning[disabled].focus,
fieldset[disabled] .btn-warning.focus,
.btn-warning.disabled:active,
.btn-warning[disabled]:active,
fieldset[disabled] .btn-warning:active,
.btn-warning.disabled.active,
.btn-warning[disabled].active,
fieldset[disabled] .btn-warning.active {
  background-color: #eb9316;
  background-image: none;
}
.btn-danger {
  background-image: -webkit-linear-gradient(top, #d9534f 0%, #c12e2a 100%);
  background-image:      -o-linear-gradient(top, #d9534f 0%, #c12e2a 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#d9534f), to(#c12e2a));
  background-image:         linear-gradient(to bottom, #d9534f 0%, #c12e2a 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffd9534f', endColorstr='#ffc12e2a', GradientType=0);
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  background-repeat: repeat-x;
  border-color: #b92c28;
}
.btn-danger:hover,
.btn-danger:focus {
  background-color: #c12e2a;
  background-position: 0 -15px;
}
.btn-danger:active,
.btn-danger.active {
  background-color: #c12e2a;
  border-color: #b92c28;
}
.btn-danger.disabled,
.btn-danger[disabled],
fieldset[disabled] .btn-danger,
.btn-danger.disabled:hover,
.btn-danger[disabled]:hover,
fieldset[disabled] .btn-danger:hover,
.btn-danger.disabled:focus,
.btn-danger[disabled]:focus,
fieldset[disabled] .btn-danger:focus,
.btn-danger.disabled.focus,
.btn-danger[disabled].focus,
fieldset[disabled] .btn-danger.focus,
.btn-danger.disabled:active,
.btn-danger[disabled]:active,
fieldset[disabled] .btn-danger:active,
.btn-danger.disabled.active,
.btn-danger[disabled].active,
fieldset[disabled] .btn-danger.active {
  background-color: #c12e2a;
  background-image: none;
}
.thumbnail,
.img-thumbnail {
  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .075);
          box-shadow: 0 1px 2px rgba(0, 0, 0, .075);
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  background-color: #e8e8e8;
  background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #e8e8e8 100%);
  background-image:      -o-linear-gradient(top, #f5f5f5 0%, #e8e8e8 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e8e8e8));
  background-image:         linear-gradient(to bottom, #f5f5f5 0%, #e8e8e8 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff5f5f5', endColorstr='#ffe8e8e8', GradientType=0);
  background-repeat: repeat-x;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  background-color: #2e6da4;
  background-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4 100%);
  background-image:      -o-linear-gradient(top, #337ab7 0%, #2e6da4 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#337ab7), to(#2e6da4));
  background-image:         linear-gradient(to bottom, #337ab7 0%, #2e6da4 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff337ab7', endColorstr='#ff2e6da4', GradientType=0);
  background-repeat: repeat-x;
}
.navbar-default {
  background-image: -webkit-linear-gradient(top, #fff 0%, #f8f8f8 100%);
  background-image:      -o-linear-gradient(top, #fff 0%, #f8f8f8 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#f8f8f8));
  background-image:         linear-gradient(to bottom, #fff 0%, #f8f8f8 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#fff8f8f8', GradientType=0);
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  background-repeat: repeat-x;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 5px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 5px rgba(0, 0, 0, .075);
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .active > a {
  background-image: -webkit-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);
  background-image:      -o-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#dbdbdb), to(#e2e2e2));
  background-image:         linear-gradient(to bottom, #dbdbdb 0%, #e2e2e2 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffdbdbdb', endColorstr='#ffe2e2e2', GradientType=0);
  background-repeat: repeat-x;
  -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, .075);
          box-shadow: inset 0 3px 9px rgba(0, 0, 0, .075);
}
.navbar-brand,
.navbar-nav > li > a {
  text-shadow: 0 1px 0 rgba(255, 255, 255, .25);
}
.navbar-inverse {
  background-image: -webkit-linear-gradient(top, #3c3c3c 0%, #222 100%);
  background-image:      -o-linear-gradient(top, #3c3c3c 0%, #222 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#3c3c3c), to(#222));
  background-image:         linear-gradient(to bottom, #3c3c3c 0%, #222 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff3c3c3c', endColorstr='#ff222222', GradientType=0);
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  background-repeat: repeat-x;
  border-radius: 4px;
}
.navbar-inverse .navbar-nav > .open > a,
.navbar-inverse .navbar-nav > .active > a {
  background-image: -webkit-linear-gradient(top, #080808 0%, #0f0f0f 100%);
  background-image:      -o-linear-gradient(top, #080808 0%, #0f0f0f 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#080808), to(#0f0f0f));
  background-image:         linear-gradient(to bottom, #080808 0%, #0f0f0f 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff080808', endColorstr='#ff0f0f0f', GradientType=0);
  background-repeat: repeat-x;
  -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, .25);
          box-shadow: inset 0 3px 9px rgba(0, 0, 0, .25);
}
.navbar-inverse .navbar-brand,
.navbar-inverse .navbar-nav > li > a {
  text-shadow: 0 -1px 0 rgba(0, 0, 0, .25);
}
.navbar-static-top,
.navbar-fixed-top,
.navbar-fixed-bottom {
  border-radius: 0;
}
@media (max-width: 767px) {
  .navbar .navbar-nav .open .dropdown-menu > .active > a,
  .navbar .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4 100%);
    background-image:      -o-linear-gradient(top, #337ab7 0%, #2e6da4 100%);
    background-image: -webkit-gradient(linear, left top, left bottom, from(#337ab7), to(#2e6da4));
    background-image:         linear-gradient(to bottom, #337ab7 0%, #2e6da4 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff337ab7', endColorstr='#ff2e6da4', GradientType=0);
    background-repeat: repeat-x;
  }
}
.alert {
  text-shadow: 0 1px 0 rgba(255, 255, 255, .2);
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .25), 0 1px 2px rgba(0, 0, 0, .05);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, .25), 0 1px 2px rgba(0, 0, 0, .05);
}
.alert-success {
  background-image: -webkit-linear-gradient(top, #dff0d8 0%, #c8e5bc 100%);
  background-image:      -o-linear-gradient(top, #dff0d8 0%, #c8e5bc 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#dff0d8), to(#c8e5bc));
  background-image:         linear-gradient(to bottom, #dff0d8 0%, #c8e5bc 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffdff0d8', endColorstr='#ffc8e5bc', GradientType=0);
  background-repeat: repeat-x;
  border-color: #b2dba1;
}
.alert-info {
  background-image: -webkit-linear-gradient(top, #d9edf7 0%, #b9def0 100%);
  background-image:      -o-linear-gradient(top, #d9edf7 0%, #b9def0 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#d9edf7), to(#b9def0));
  background-image:         linear-gradient(to bottom, #d9edf7 0%, #b9def0 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffd9edf7', endColorstr='#ffb9def0', GradientType=0);
  background-repeat: repeat-x;
  border-color: #9acfea;
}
.alert-warning {
  background-image: -webkit-linear-gradient(top, #fcf8e3 0%, #f8efc0 100%);
  background-image:      -o-linear-gradient(top, #fcf8e3 0%, #f8efc0 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#fcf8e3), to(#f8efc0));
  background-image:         linear-gradient(to bottom, #fcf8e3 0%, #f8efc0 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffcf8e3', endColorstr='#fff8efc0', GradientType=0);
  background-repeat: repeat-x;
  border-color: #f5e79e;
}
.alert-danger {
  background-image: -webkit-linear-gradient(top, #f2dede 0%, #e7c3c3 100%);
  background-image:      -o-linear-gradient(top, #f2dede 0%, #e7c3c3 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#f2dede), to(#e7c3c3));
  background-image:         linear-gradient(to bottom, #f2dede 0%, #e7c3c3 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff2dede', endColorstr='#ffe7c3c3', GradientType=0);
  background-repeat: repeat-x;
  border-color: #dca7a7;
}
.progress {
  background-image: -webkit-linear-gradient(top, #ebebeb 0%, #f5f5f5 100%);
  background-image:      -o-linear-gradient(top, #ebebeb 0%, #f5f5f5 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#ebebeb), to(#f5f5f5));
  background-image:         linear-gradient(to bottom, #ebebeb 0%, #f5f5f5 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffebebeb', endColorstr='#fff5f5f5', GradientType=0);
  background-repeat: repeat-x;
}
.progress-bar {
  background-image: -webkit-linear-gradient(top, #337ab7 0%, #286090 100%);
  background-image:      -o-linear-gradient(top, #337ab7 0%, #286090 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#337ab7), to(#286090));
  background-image:         linear-gradient(to bottom, #337ab7 0%, #286090 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff337ab7', endColorstr='#ff286090', GradientType=0);
  background-repeat: repeat-x;
}
.progress-bar-success {
  background-image: -webkit-linear-gradient(top, #5cb85c 0%, #449d44 100%);
  background-image:      -o-linear-gradient(top, #5cb85c 0%, #449d44 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#5cb85c), to(#449d44));
  background-image:         linear-gradient(to bottom, #5cb85c 0%, #449d44 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5cb85c', endColorstr='#ff449d44', GradientType=0);
  background-repeat: repeat-x;
}
.progress-bar-info {
  background-image: -webkit-linear-gradient(top, #5bc0de 0%, #31b0d5 100%);
  background-image:      -o-linear-gradient(top, #5bc0de 0%, #31b0d5 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#5bc0de), to(#31b0d5));
  background-image:         linear-gradient(to bottom, #5bc0de 0%, #31b0d5 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de', endColorstr='#ff31b0d5', GradientType=0);
  background-repeat: repeat-x;
}
.progress-bar-warning {
  background-image: -webkit-linear-gradient(top, #f0ad4e 0%, #ec971f 100%);
  background-image:      -o-linear-gradient(top, #f0ad4e 0%, #ec971f 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#f0ad4e), to(#ec971f));
  background-image:         linear-gradient(to bottom, #f0ad4e 0%, #ec971f 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff0ad4e', endColorstr='#ffec971f', GradientType=0);
  background-repeat: repeat-x;
}
.progress-bar-danger {
  background-image: -webkit-linear-gradient(top, #d9534f 0%, #c9302c 100%);
  background-image:      -o-linear-gradient(top, #d9534f 0%, #c9302c 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#d9534f), to(#c9302c));
  background-image:         linear-gradient(to bottom, #d9534f 0%, #c9302c 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffd9534f', endColorstr='#ffc9302c', GradientType=0);
  background-repeat: repeat-x;
}
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.list-group {
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .075);
          box-shadow: 0 1px 2px rgba(0, 0, 0, .075);
}
.list-group-item.active,
.list-group-item.active:hover,
.list-group-item.active:focus {
  text-shadow: 0 -1px 0 #286090;
  background-image: -webkit-linear-gradient(top, #337ab7 0%, #2b669a 100%);
  background-image:      -o-linear-gradient(top, #337ab7 0%, #2b669a 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#337ab7), to(#2b669a));
  background-image:         linear-gradient(to bottom, #337ab7 0%, #2b669a 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff337ab7', endColorstr='#ff2b669a', GradientType=0);
  background-repeat: repeat-x;
  border-color: #2b669a;
}
.list-group-item.active .badge,
.list-group-item.active:hover .badge,
.list-group-item.active:focus .badge {
  text-shadow: none;
}
.panel {
  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
          box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}
.panel-default > .panel-heading {
  background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #e8e8e8 100%);
  background-image:      -o-linear-gradient(top, #f5f5f5 0%, #e8e8e8 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e8e8e8));
  background-image:         linear-gradient(to bottom, #f5f5f5 0%, #e8e8e8 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff5f5f5', endColorstr='#ffe8e8e8', GradientType=0);
  background-repeat: repeat-x;
}
.panel-primary > .panel-heading {
  background-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4 100%);
  background-image:      -o-linear-gradient(top, #337ab7 0%, #2e6da4 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#337ab7), to(#2e6da4));
  background-image:         linear-gradient(to bottom, #337ab7 0%, #2e6da4 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff337ab7', endColorstr='#ff2e6da4', GradientType=0);
  background-repeat: repeat-x;
}
.panel-success > .panel-heading {
  background-image: -webkit-linear-gradient(top, #dff0d8 0%, #d0e9c6 100%);
  background-image:      -o-linear-gradient(top, #dff0d8 0%, #d0e9c6 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#dff0d8), to(#d0e9c6));
  background-image:         linear-gradient(to bottom, #dff0d8 0%, #d0e9c6 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffdff0d8', endColorstr='#ffd0e9c6', GradientType=0);
  background-repeat: repeat-x;
}
.panel-info > .panel-heading {
  background-image: -webkit-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);
  background-image:      -o-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#d9edf7), to(#c4e3f3));
  background-image:         linear-gradient(to bottom, #d9edf7 0%, #c4e3f3 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffd9edf7', endColorstr='#ffc4e3f3', GradientType=0);
  background-repeat: repeat-x;
}
.panel-warning > .panel-heading {
  background-image: -webkit-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);
  background-image:      -o-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#fcf8e3), to(#faf2cc));
  background-image:         linear-gradient(to bottom, #fcf8e3 0%, #faf2cc 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffcf8e3', endColorstr='#fffaf2cc', GradientType=0);
  background-repeat: repeat-x;
}
.panel-danger > .panel-heading {
  background-image: -webkit-linear-gradient(top, #f2dede 0%, #ebcccc 100%);
  background-image:      -o-linear-gradient(top, #f2dede 0%, #ebcccc 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#f2dede), to(#ebcccc));
  background-image:         linear-gradient(to bottom, #f2dede 0%, #ebcccc 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff2dede', endColorstr='#ffebcccc', GradientType=0);
  background-repeat: repeat-x;
}
.well {
  background-image: -webkit-linear-gradient(top, #e8e8e8 0%, #f5f5f5 100%);
  background-image:      -o-linear-gradient(top, #e8e8e8 0%, #f5f5f5 100%);
  background-image: -webkit-gradient(linear, left top, left bottom, from(#e8e8e8), to(#f5f5f5));
  background-image:         linear-gradient(to bottom, #e8e8e8 0%, #f5f5f5 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffe8e8e8', endColorstr='#fff5f5f5', GradientType=0);
  background-repeat: repeat-x;
  border-color: #dcdcdc;
  -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, .05), 0 1px 0 rgba(255, 255, 255, .1);
          box-shadow: inset 0 1px 3px rgba(0, 0, 0, .05), 0 1px 0 rgba(255, 255, 255, .1);
}
/*# sourceMappingURL=bootstrap-theme.css.map */
.rangeslider,
.rangeslider__fill {
  display: block;
}

.rangeslider {
  background: #444d63;
  border:1px solid #626c84;
  position: relative;
  border-radius:6px;
}

.rangeslider--horizontal {
  height: 9px;
  width: 100%;
  border-radius:6px;
}

.rangeslider--vertical {
  width: 20px;
  min-height: 150px;
  max-height: 100%;
}

.rangeslider--disabled {
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=40);
  opacity: 0.4;
}

.rangeslider__fill {
  background: #ffba66;
  position: absolute;
  border-radius:6px;
}
.rangeslider--horizontal .rangeslider__fill {
  top: 0;
  height: 100%;
}
.rangeslider--vertical .rangeslider__fill {
  bottom: 0;
  width: 100%;
}

.rangeslider__handle {
  background: #fbbe1b;
  cursor: pointer;
  display: inline-block;
  width: 37px;
  height: 37px;
  position: absolute;
  background: url('img/calc-handle.png');
}

.rangeslider__handle:active, .rangeslider--active .rangeslider__handle {
 
}
.rangeslider--horizontal .rangeslider__handle {
  top: -18px;
  touch-action: pan-y;
  -ms-touch-action: pan-y;
}
.rangeslider--vertical .rangeslider__handle {
  left: -18px;
  touch-action: pan-x;
  -ms-touch-action: pan-x;
}

input[type="range"]:focus + .rangeslider .rangeslider__handle {

}
@import "/font-awesome.min.css";
/* ==========================================================================
   Author's custom styles
   ========================================================================== */
/* font-family: "HelveticaNeue"; */
@font-face {
  font-family: "HelveticaNeue";
  src: url("assets/fonts/HelveticaRegular/HelveticaRegular.eot");
  src: url("assets/fonts/HelveticaRegular/HelveticaRegular.eot@") format("embedded-opentype"), url("assets/fonts/HelveticaRegular/HelveticaRegular.woff") format("woff"), url("assets/fonts/HelveticaRegular/HelveticaRegular.ttf") format("truetype");
  font-style: normal;
  font-weight: normal;
}
/* font-family: "HelveticaNeue"; */
@font-face {
  font-family: "HelveticaNeue";
  src: url("assets/fonts/HelveticaMedium/HelveticaMedium.eot");
  src: url("assets/fonts/HelveticaMedium/HelveticaMedium.eot@") format("embedded-opentype"), url("assets/fonts/HelveticaMedium/HelveticaMedium.woff") format("woff"), url("assets/fonts/HelveticaMedium/HelveticaMedium.ttf") format("truetype");
  font-style: normal;
  font-weight: 600;
}
/* font-family: "HelveticaBold"; */
@font-face {
  font-family: "HelveticaNeue";
  src: url("assets/fonts/HelveticaBold/HelveticaBold.eot");
  src: url("assets/fonts/HelveticaBold/HelveticaBold.eot@") format("embedded-opentype"), url("assets/fonts/HelveticaBold/HelveticaBold.woff") format("woff"), url("assets/fonts/HelveticaBold/HelveticaBold.ttf") format("truetype");
  font-style: normal;
  font-weight: bold;
}
/* font-family: "HelveticaItalic"; */
@font-face {
  font-family: "HelveticaNeue";
  src: url("assets/fonts/HelveticaItalic/HelveticaItalic.eot");
  src: url("assets/fonts/HelveticaItalic/HelveticaItalic.eot@") format("embedded-opentype"), url("assets/fonts/HelveticaItalic/HelveticaItalic.woff") format("woff"), url("assets/fonts/HelveticaItalic/HelveticaItalic.ttf") format("truetype");
  font-style: italic;
  font-weight: normal;
}
/* font-family: "HelveticaBoldItalic"; */
@font-face {
  font-family: "HelveticaNeue";
  src: url("assets/fonts/HelveticaBoldItalic/HelveticaBoldItalic.eot");
  src: url("assets/fonts/HelveticaBoldItalic/HelveticaBoldItalic.eot@") format("embedded-opentype"), url("assets/fonts/HelveticaBoldItalic/HelveticaBoldItalic.woff") format("woff"), url("assets/fonts/HelveticaBoldItalic/HelveticaBoldItalic.ttf") format("truetype");
  font-style: italic;
  font-weight: bold;
}
/* font-family: "HelveticaLight"; */
@font-face {
  font-family: "HelveticaNeue";
  src: url("assets/fonts/HelveticaLight/HelveticaLight.eot");
  src: url("assets/fonts/HelveticaLight/HelveticaLight.eot@") format("embedded-opentype"), url("assets/fonts/HelveticaLight/HelveticaLight.woff") format("woff"), url("assets/fonts/HelveticaLight/HelveticaLight.ttf") format("truetype");
  font-style: normal;
  font-weight: 300;
}
/* font-family: "HelveticaLightItalic"; */
@font-face {
  font-family: "HelveticaNeue";
  src: url("assets/fonts/HelveticaLightItalic/HelveticaLightItalic.eot");
  src: url("assets/fonts/HelveticaLightItalic/HelveticaLightItalic.eot@") format("embedded-opentype"), url("assets/fonts/HelveticaLightItalic/HelveticaLightItalic.woff") format("woff"), url("assets/fonts/HelveticaLightItalic/HelveticaLightItalic.ttf") format("truetype");
  font-style: italic;
  font-weight: 300;
}
/* font-family: "HelveticaThin"; */
@font-face {
  font-family: "HelveticaNeue";
  src: url("assets/fonts/HelveticaThin/HelveticaThin.eot");
  src: url("assets/fonts/HelveticaThin/HelveticaThin.eot@") format("embedded-opentype"), url("assets/fonts/HelveticaThin/HelveticaThin.woff") format("woff"), url("assets/fonts/HelveticaThin/HelveticaThin.ttf") format("truetype");
  font-style: normal;
  font-weight: 100;
}
.transition {
  -webkit-transition: all 300ms;
  -moz-transition: all 300ms;
  -o-transition: all 300ms;
  transition: all 300ms;
}
a {
  text-decoration: underline;
}
a:hover {
  text-decoration: none;
}
a:focus,
input:focus,
button:focus,
textarea:focus {
  outline: none;
}
body {
  font-size: 16px;
  font-family: 'HelveticaNeue', sans-serif;
  color: #000;
  background: #fff;
}
html,
body {
  overflow-x: hidden;
}
.container-fluid {
  position: relative;
  margin: 0 auto;
  max-width: 1204px;
}
.header-top {
  background: #323949 url('img/bg-header.jpg') left top no-repeat;
}
.header-top .col {
  border-right: 1px solid rgba(255, 255, 255, 0.5);
  height: 60px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding-left: 0;
  padding-right: 0;
}
.header-top .col-1 {
  z-index: 200;
  position: relative;
}
.header-top .col-1:before {
  content: '';
  display: block;
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 1px;
  background: rgba(255, 255, 255, 0.5);
}
.header-top .col-3 {
  background: #757c91;
}
.header-top .col-4 {
  background: #757c91;
}
.header-top .col-4:after {
  content: '';
  background: #757c91;
  position: absolute;
  right: -100%;
  width: 100%;
  height: 60px;
  display: block;
  border-left: 1px solid rgba(255, 255, 255, 0.5);
}
@media only screen and (max-width: 767px) {
  .header-top .col-1,
  .header-top .col-2,
  .header-top .col-3 {
    display: none;
  }
  .header-top .col-4 {
    background: #323949;
  }
}
.money {
  color: #fff;
  font-size: 14px;
  font-weight: 100;
  text-align: center;
}
.hours24 {
  color: #fff;
  font-size: 14px;
  font-weight: 100;
  text-align: center;
}
.hours24 b {
  font-weight: normal;
  color: #ffbc6b;
}
.years {
  color: #fff;
  font-size: 14px;
  font-weight: 100;
  text-align: center;
}
.phone-call {
  padding-left: 40px;
  background: url('img/phone.png') left center no-repeat;
}
.phone-call span {
  display: block;
  color: #fff;
  font-weight: bold;
}
.phone-call a {
  display: block;
  font-size: 14px;
  color: #ffbc6b;
  text-transform: uppercase;
}
.header-bottom-inner {
  padding: 15px 0;
}
.logo {
  display: block;
}
.logo img {
  max-width: 100%;
}
@media only screen and (max-width: 767px) {
  .logo {
    text-align: center;
  }
}
.main-menu ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 40px;
}
.main-menu ul li a {
  font-weight: 300;
  text-transform: uppercase;
  text-decoration: none;
  color: #202739;
  display: block;
  font-size: 14px;
}
.main-menu ul li a:hover {
  text-decoration: underline;
}
@media only screen and (max-width: 992px) {
  .main-menu ul li a {
    text-transform: none;
    font-size: 12px;
  }
}
@media only screen and (max-width: 767px) {
  .main-menu {
    display: none;
  }
}
.intro {
  height: 775px;
  background: url('img/bg-intro.jpg') center center no-repeat;
  background-size: cover;
  position: relative;
}
.intro .container-fluid,
.intro .row,
.intro .col-2 {
  height: 100%;
}
@media only screen and (max-width: 1190px) {
  .intro .col-1 {
    z-index: 100;
  }
}
@media only screen and (max-width: 767px) {
  .intro {
    background: url('img/bg-intro-2.jpg') center top;
    height: auto;
  }
  .intro .col-1 {
    text-align: center;
  }
}
.intro-title {
  line-height: 1;
  margin: 80px 0 40px 0;
}
.intro-title .span-1 {
  font-weight: bold;
  color: #ffbc6b;
  text-transform: uppercase;
  font-size: 66px;
  display: block;
}
@media only screen and (max-width: 767px) {
  .intro-title .span-1 {
    font-size: 45px;
  }
}
.intro-title .span-2 {
  font-weight: bold;
  color: #ffbc6b;
  text-transform: uppercase;
  font-size: 83px;
}
@media only screen and (max-width: 767px) {
  .intro-title .span-2 {
    font-size: 61px;
  }
}
.intro-title .span-3 {
  font-weight: 300;
  color: #fff;
  font-size: 78px;
  display: block;
}
@media only screen and (max-width: 767px) {
  .intro-title .span-3 {
    font-size: 53px;
  }
}
.intro-title .span-4 {
  font-weight: 300;
  color: #fff;
  font-size: 50px;
  display: block;
}
@media only screen and (max-width: 767px) {
  .intro-title .span-4 {
    font-size: 34px;
  }
}
@media only screen and (max-width: 767px) {
  .intro-title {
    margin-top: 40px;
    margin-bottom: 40px;
    text-align: center;
  }
}
.intro-features {
  margin-top: 40px;
}
@media only screen and (max-width: 767px) {
  .intro-features {
    margin-top: -15px;
    display: inline-block;
  }
}
.intro-feature {
  padding-left: 75px;
  background: url('img/check.png') left center no-repeat;
  color: #fff;
  font-weight: 100;
  min-height: 52px;
  line-height: 1.3;
  font-size: 21px;
  margin-top: 30px;
  text-align: left;
}
.intro-feature b {
  font-weight: normal;
  color: #ffbc6b;
}
@media only screen and (max-width: 767px) {
  .intro-feature {
    font-size: 16px;
  }
}
.man {
  position: absolute;
  left: 50%;
  transform: translate(-50%, 0);
  bottom: 100px;
  z-index: 200;
  margin-left: -50px;
}
@media only screen and (max-width: 1190px) {
  .man {
    left: 40%;
    z-index: 1;
    opacity: .5;
  }
}
@media only screen and (max-width: 767px) {
  .man {
    display: none;
  }
}
.intro-form {
  background: #614483;
  padding: 45px;
  margin-left: -15px;
  position: absolute;
  left: 15px;
  right: 0px;
  bottom: 100px;
}
.intro-form.popup-form {
  margin: 0;
  padding: 0;
  position: static;
}
@media only screen and (max-width: 767px) {
  .intro-form {
    position: static;
    margin: 30px -15px 0 -15px;
    padding-bottom: 60px;
    padding-left: 30px;
    padding-right: 30px;
  }
}
#calc-tabs-select {
  display: none;
}
@media only screen and (max-width: 480px) {
  .calc-tabs {
    display: none;
  }
  #calc-tabs-select {
    display: block;
  }
}
.intro-form-title {
  text-transform: uppercase;
  color: #ffbc6b;
  font-weight: bold;
  font-size: 24px;
  text-align: center;
}
.intro-form-subtitle {
  text-align: center;
  color: #fff;
  font-weight: 100;
  font-size: 18px;
}
.form-down {
  margin: 30px 0 15px 0;
  text-align: center;
}
.intro-form-wrap {
  max-width: 340px;
  margin-left: auto;
  margin-right: auto;
}
.intro-form-wrap button {
  margin-top: 20px;
}
.lbl {
  color: #fff;
  font-weight: 100;
  font-size: 14px;
  margin: 15px 0 10px 0;
}
form input {
  display: block;
  width: 100%;
  height: 50px;
  border: 1px solid #9e6fd4;
  background-color: #9165c6;
  background-repeat: repeat-x;
  background-image: -khtml-gradient(linear, left top, left bottom, from(#805cad), to(#9165c6));
  /* Konqueror */
  background-image: -moz-linear-gradient(#805cad, #9165c6);
  /* FF 3.6+ */
  background-image: -ms-linear-gradient(#805cad, #9165c6);
  /* IE10 */
  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #805cad), color-stop(100%, #9165c6));
  /* Safari 4+, Chrome 2+ */
  background-image: -webkit-linear-gradient(#805cad, #9165c6);
  /* Safari 5.1+, Chrome 10+ */
  background-image: -o-linear-gradient(#805cad, #9165c6);
  /* Opera 11.10 */
  background-image: -ms-linear-gradient(top, #805cad 0%, #9165c6 100%);
  /* IE10+ */
  background-image: linear-gradient(#805cad, #9165c6);
  /* the standard */
  padding: 0 15px;
  color: #fff;
  font-weight: 300;
  font-size: 14px;
}
button {
  display: block;
  width: 100%;
  height: 50px;
  border: none;
  background-color: #e3973b;
  background-repeat: repeat-x;
  background-image: -khtml-gradient(linear, left top, left bottom, from(#ffc682), to(#e3973b));
  /* Konqueror */
  background-image: -moz-linear-gradient(#ffc682, #e3973b);
  /* FF 3.6+ */
  background-image: -ms-linear-gradient(#ffc682, #e3973b);
  /* IE10 */
  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #ffc682), color-stop(100%, #e3973b));
  /* Safari 4+, Chrome 2+ */
  background-image: -webkit-linear-gradient(#ffc682, #e3973b);
  /* Safari 5.1+, Chrome 10+ */
  background-image: -o-linear-gradient(#ffc682, #e3973b);
  /* Opera 11.10 */
  background-image: -ms-linear-gradient(top, #ffc682 0%, #e3973b 100%);
  /* IE10+ */
  background-image: linear-gradient(#ffc682, #e3973b);
  /* the standard */
  text-transform: uppercase;
  font-weight: bold;
  font-size: 14px;
  color: #fff;
}
button:hover {
  -webkit-filter: brightness(1.1);
  filter: brightness(1.1);
}
.checks {
  margin-top: 25px;
}
.check {
  display: block;
  font-weight: 300;
  font-size: 18px;
  color: #ffbc6b;
  text-decoration: none;
  margin-top: 20px;
}
.check span {
  display: inline-block;
  vertical-align: middle;
}
.check .checkbox {
  width: 30px;
  height: 30px;
  background: url('img/checkbox.png');
  display: inline-block;
  vertical-align: middle;
  margin-right: 15px;
  margin-top: 0;
  margin-bottom: 0;
}
.check .checkbox:hover {
  -webkit-filter: brightness(1.1);
  filter: brightness(1.1);
}
.check.active .checkbox {
  background: url('img/checkbox-checked.png');
}
.check:hover {
  color: #ffbc6b;
}
.check:active,
.check:visited,
.check:focus {
  color: #ffbc6b;
}
@media only screen and (max-width: 767px) {
  .check {
    font-size: 14px;
  }
}
.confidence {
  text-align: center;
  color: #fff;
  font-size: 12px;
  font-weight: 100;
  margin-top: 25px;
}
.bg-gray {
  background: #323949;
  padding-bottom: 60px;
}
.features {
  position: relative;
  top: -100px;
  margin-bottom: -60px;
}
.features .col {
  background: #626d86;
  min-height: 180px;
}
.features .col:nth-child(odd) {
  background: #909cb7;
}
@media only screen and (max-width: 767px) {
  .features {
    top: 0;
    margin-bottom: 0;
  }
  .features .col {
    min-height: auto;
  }
  .features .col:nth-child(1) {
    background: #626d86;
  }
  .features .col:nth-child(2) {
    background: #909cb7;
  }
  .features .col:nth-child(3) {
    background: #909cb7;
  }
  .features .col:nth-child(4) {
    background: #626d86;
  }
}
.feature {
  padding: 20px;
}
.feature .feature-ico {
  line-height: 64px;
}
.feature img {
  display: block;
}
.feature span {
  display: block;
  color: #fff;
  font-size: 18px;
  margin-top: 10px;
}
@media only screen and (max-width: 992px) {
  .feature span {
    font-size: 14px;
  }
}
@media only screen and (max-width: 767px) {
  .feature span {
    font-size: 12px;
  }
}
.calc-title {
  text-align: center;
  text-transform: uppercase;
  font-weight: bold;
  font-size: 24px;
  color: #ffbc6b;
}
@media only screen and (max-width: 767px) {
  .calc-title {
    margin-top: 30px;
  }
}
.calc-subtitle {
  text-align: center;
  color: #fff;
  font-weight: 300;
  font-size: 24px;
  margin-bottom: 30px;
}
.calc-down {
  text-align: center;
  margin: 30px 0;
}
.calc-wrap {
  border: 1px solid #555f75;
  position: relative;
  padding: 45px;
}
@media only screen and (max-width: 767px) {
  .calc-wrap {
    padding-left: 20px;
    padding-right: 20px;
  }
}
.calc-wrap-title {
  position: absolute;
  left: 50%;
  transform: translate(-50%, 0);
  top: -10px;
  padding: 0 10px;
  background: #323949;
  text-transform: uppercase;
  font-weight: 100;
  font-size: 14px;
  color: #c8cfe2;
  white-space: nowrap;
}
@media only screen and (max-width: 767px) {
  .calc-wrap-title {
    white-space: normal;
    text-align: center;
    font-size: 12px;
    width: 90%;
  }
}
.calc-tabs {
  text-align: center;
  margin-bottom: 70px;
}
.calc-tabs .calc-tabs-title {
  display: inline-block;
  vertical-align: middle;
  color: #fff;
  font-weight: 300;
  font-size: 14px;
  margin-right: 10px;
}
.calc-tabs .calc-tabs-tabs {
  width: 317px;
  height: 38px;
  background: url('img/calc-tabs.png');
  display: inline-block;
  vertical-align: middle;
  position: relative;
}
.calc-tabs .calc-tabs-tabs a {
  width: 39px;
  height: 37px;
  display: block;
  position: absolute;
  top: 0px;
  color: #fff;
}
.calc-tabs .calc-tabs-tabs a span {
  color: #fff;
  display: block;
  position: absolute;
  top: 50px;
  left: 50%;
  transform: translate(-50%, 0);
  white-space: nowrap;
  font-weight: bold;
  font-size: 12px;
}
.calc-tabs .calc-tabs-tabs a:hover,
.calc-tabs .calc-tabs-tabs a.active {
  background: url('img/gold.png') center center no-repeat;
}
.calc-tabs .calc-tabs-tabs a:hover span,
.calc-tabs .calc-tabs-tabs a.active span {
  color: #ffbc6b;
}
.calc-tabs .calc-tabs-tabs .a-1 {
  left: -1px;
}
.calc-tabs .calc-tabs-tabs .a-2 {
  left: 69px;
}
.calc-tabs .calc-tabs-tabs .a-3 {
  left: 139px;
}
.calc-tabs .calc-tabs-tabs .a-4 {
  left: 209px;
}
.calc-tabs .calc-tabs-tabs .a-5 {
  left: 279px;
}
.calc-tabs .calc-tabs-tabs .a-5 span {
  left: 60%;
}
.calc-form {
  max-width: 1000px;
  margin-left: auto;
  margin-right: auto;
}
.calc-form input {
  border: 1px solid #7a8cb2;
  background-color: #6b7a98;
  background-repeat: repeat-x;
  background-image: -khtml-gradient(linear, left top, left bottom, from(#56627b), to(#6b7a98));
  /* Konqueror */
  background-image: -moz-linear-gradient(#56627b, #6b7a98);
  /* FF 3.6+ */
  background-image: -ms-linear-gradient(#56627b, #6b7a98);
  /* IE10 */
  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #56627b), color-stop(100%, #6b7a98));
  /* Safari 4+, Chrome 2+ */
  background-image: -webkit-linear-gradient(#56627b, #6b7a98);
  /* Safari 5.1+, Chrome 10+ */
  background-image: -o-linear-gradient(#56627b, #6b7a98);
  /* Opera 11.10 */
  background-image: -ms-linear-gradient(top, #56627b 0%, #6b7a98 100%);
  /* IE10+ */
  background-image: linear-gradient(#56627b, #6b7a98);
  /* the standard */
  margin-bottom: 10px;
}
.calc-form .col-l {
  padding-right: 30px;
}
@media only screen and (max-width: 767px) {
  .calc-form .col-l {
    padding-right: 15px;
  }
}
.calc-form .col-r {
  padding-left: 30px;
}
@media only screen and (max-width: 767px) {
  .calc-form .col-r {
    padding-left: 15px;
  }
}
.calc-form .col {
  padding-left: 80px;
  position: relative;
}
.calc-form .col .lbl {
  position: absolute;
  line-height: 50px;
  left: 0;
  top: 0;
  color: #fff;
  font-weight: 300;
  font-size: 14px;
  margin: 0;
}
@media only screen and (max-width: 767px) {
  .calc-form .col {
    padding-left: 15px;
  }
  .calc-form .col .lbl {
    line-height: auto;
    position: static;
  }
}
.select-wrap {
  overflow: hidden;
  border: 1px solid #7a8cb2;
  background: url('img/select.png') right top no-repeat;
  margin-bottom: 10px;
  display: block;
  height: 50px;
  font-size: 14px;
  color: #fff;
  font-weight: 300;
  cursor: pointer;
}
.select-wrap:focus {
  outline: none;
}
.select-wrap select {
  padding: 0 15px;
  border: none;
  width: 106%;
  height: 48px;
  background: #697795;
  background: none;
  color: #ffbc6b;
}
.select-wrap select option {
  background: #56627b;
  color: #ffbc6b;
}
.select-wrap select:focus {
  outline: none;
}
@media only screen and (max-width: 991px) {
  .select-wrap select {
    width: 110%;
  }
}
.credits {
  background: #ebeef5;
  padding-bottom: 50px;
}
.credits-title {
  text-align: center;
  text-transform: uppercase;
  font-weight: bold;
  font-size: 24px;
  color: #ffbc6b;
  margin-top: 60px;
}
.credits-subtitle {
  text-align: center;
  color: #323949;
  font-weight: 300;
  font-size: 24px;
  margin-bottom: 30px;
}
.credits-down {
  text-align: center;
  margin: 30px 0;
}
.credits-wrap {
  border: 1px solid #cdd1da;
  position: relative;
  padding: 45px;
  padding-bottom: 100px;
}
@media only screen and (max-width: 767px) {
  .credits-wrap {
    padding-bottom: 45px;
    padding-left: 20px;
    padding-right: 20px;
  }
}
.credits-wrap-title {
  position: absolute;
  left: 50%;
  transform: translate(-50%, 0);
  top: -10px;
  padding: 0 10px;
  background: #ebeef5;
  text-transform: uppercase;
  font-size: 14px;
  color: #323949;
  white-space: nowrap;
}
@media only screen and (max-width: 767px) {
  .credits-wrap-title {
    white-space: normal;
    text-align: center;
    font-size: 12px;
    width: 90%;
  }
}
.credit {
  height: 285px;
  position: relative;
}
.credit-1 {
  background: url('img/bg-credits-1.jpg') center center no-repeat;
  background-size: cover;
}
.credit-2 {
  background: url('img/bg-credits-2.jpg') center center no-repeat;
  background-size: cover;
}
@media only screen and (max-width: 767px) {
  .credit-2 {
    margin-top: 30px;
  }
}
.credit-inner {
  position: absolute;
  left: 15px;
  top: 15px;
  right: 15px;
  bottom: 15px;
  border: 1px solid #fff;
  display: flex;
  justify-content: center;
  flex-direction: column;
  padding: 30px;
}
.credit-inner button {
  width: 200px;
  height: 40px;
  margin-left: auto;
  margin-right: auto;
}
@media only screen and (max-width: 767px) {
  .credit-inner button {
    width: auto;
    padding-left: 40px;
    padding-right: 40px;
  }
}
.credit-inner .credit-title {
  color: #fff;
  text-align: center;
  font-weight: bold;
  font-size: 18px;
}
.credit-inner .credit-subtitle {
  text-align: center;
  color: #fff;
  font-weight: 300;
  font-size: 14px;
  margin-bottom: 30px;
}
.credit-title-subtitle {
  min-height: 80px;
}
.clients-slider-wrapper {
  position: relative;
  background: #fff;
  max-width: 970px;
  margin-left: auto;
  margin-right: auto;
  padding-left: 75px;
  padding-right: 75px;
  margin-top: -50px;
  max-height: 100px;
  overflow: hidden;
}
.clients-slider-wrapper button.nav {
  background: none;
  border: none;
  display: block;
  position: absolute;
  width: auto;
  top: 50%;
  transform: translate(0, -50%);
  padding: 0;
  z-index: 200;
}
.clients-slider-wrapper button.nav.prev {
  left: 15px;
}
.clients-slider-wrapper button.nav.next {
  right: 15px;
}
@media only screen and (max-width: 767px) {
  .clients-slider-wrapper {
    margin-top: 30px;
    margin-bottom: 0px;
  }
}
#clients-slider .slide {
  float: left;
  line-height: 100px;
  margin: 0 30px;
}
#clients-slider .slide img {
  max-height: 60px;
  max-width: 200px;
}
.calc2 {
  background: url('img/bg-calc.png') center center no-repeat;
  background-size: cover;
  padding: 60px 0 150px 0;
  position: relative;
}
@media only screen and (max-width: 767px) {
  .calc2 {
    background: #323949;
    padding-bottom: 30px;
  }
}
.house {
  position: absolute;
  left: 50%;
  transform: translate(-50%, 0);
  bottom: -50px;
}
@media only screen and (max-width: 767px) {
  .house {
    display: none;
  }
}
.calc2-title {
  text-align: center;
  text-transform: uppercase;
  font-weight: bold;
  font-size: 24px;
  color: #ffbc6b;
}
.calc2-subtitle {
  text-align: center;
  color: #fff;
  font-weight: 300;
  font-size: 24px;
  margin-bottom: 30px;
}
.calc2-down {
  text-align: center;
  margin: 30px 0;
}
.calc2-wrap {
  border: 1px solid #5a657c;
  position: relative;
  padding: 45px;
  height: 370px;
}
@media only screen and (max-width: 768px) {
  .calc2-wrap {
    height: auto;
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 0px;
  }
}
.calc2-wrap-title {
  position: absolute;
  left: 50%;
  transform: translate(-50%, 0);
  top: -10px;
  padding: 0 10px;
  background: #323949;
  text-transform: uppercase;
  font-weight: 100;
  font-size: 14px;
  color: #fff;
  white-space: nowrap;
}
.calc2-wrap-2 {
  border: 1px solid #99a4c3;
  position: relative;
  padding: 45px;
  height: 370px;
}
@media only screen and (max-width: 768px) {
  .calc2-wrap-2 {
    background: #6d758c;
    height: auto;
    padding-left: 20px;
    padding-right: 20px;
    margin-top: 15px;
  }
}
.calc2-wrap-2-title {
  position: absolute;
  left: 50%;
  transform: translate(-50%, 0);
  top: -10px;
  padding: 0 10px;
  background: #6d758c;
  text-transform: uppercase;
  font-weight: 100;
  font-size: 14px;
  color: #fff;
  white-space: nowrap;
}
@media only screen and (max-width: 768px) {
  .calc2-wrap-2-title {
    top: 20px;
  }
}
.calc-row {
  margin-bottom: 45px;
}
.calc-legend {
  overflow: hidden;
  margin-bottom: 30px;
}
.calc-row-left {
  float: left;
  color: #fff;
  font-weight: 100;
  font-size: 18px;
}
.calc-row-right {
  float: right;
  color: #fff;
  font-weight: 100;
  font-size: 18px;
}
.range-legend {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.range-legend .col {
  color: #fff;
  font-weight: bold;
  font-size: 12px;
  text-align: center;
  line-height: 1.2;
}
.range-legend .col:before {
  content: '';
  height: 20px;
  width: 1px;
  background: #545f79;
  display: block;
  margin-left: auto;
  margin-right: auto;
  margin-top: 5px;
  margin-bottom: 5px;
}
.range-legend .col span {
  display: block;
}
#calc-summary {
  margin-bottom: 30px;
  margin-top: 15px;
  text-align: center;
  line-height: 1.2;
}
#calc-summary b {
  font-size: 60px;
  font-weight: 100;
  color: #fff;
  display: block;
}
#calc-summary span {
  display: block;
  text-align: center;
  font-weight: 100;
  color: #fff;
  text-transform: uppercase;
  font-size: 24px;
}
.calc-info {
  text-align: center;
  color: #fff;
  font-size: 14px;
  font-weight: 100;
}
.calc-get-call {
  max-width: 340px;
  margin-left: auto;
  margin-right: auto;
  margin-top: 30px;
}
.reviews {
  background: #485062;
  padding-top: 60px;
  padding-bottom: 70px;
}
.reviews-title {
  text-align: center;
  text-transform: uppercase;
  font-weight: bold;
  font-size: 24px;
  color: #ffbc6b;
}
.reviews-subtitle {
  text-align: center;
  color: #fff;
  font-weight: 300;
  font-size: 24px;
  margin-bottom: 30px;
}
.reviews-down {
  text-align: center;
  margin: 30px 0;
}
.reviews-slider-wrapper {
  border: 1px solid #5a657c;
  position: relative;
  padding: 100px;
  padding-left: 100px;
  padding-right: 100px;
}
.reviews-slider-wrapper button.nav {
  background: none;
  border: none;
  display: block;
  position: absolute;
  width: auto;
  top: 50%;
  transform: translate(0, -50%);
  margin: 0;
  padding: 0;
  z-index: 200;
}
.reviews-slider-wrapper button.nav.prev {
  left: 0px;
}
.reviews-slider-wrapper button.nav.next {
  right: 0px;
}
.reviews-slider-wrapper button.nav:hover {
  -webkit-filter: brightness(1.1);
  filter: brightness(1.1);
}
.reviews-slider-wrapper .dots {
  position: absolute;
  left: 0;
  bottom: 25px;
  width: 100%;
  text-align: center;
}
.reviews-slider-wrapper .dots a {
  display: inline-block;
  vertical-align: middle;
  width: 6px;
  height: 6px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  background: #7d859c;
  margin: 0 6px;
}
.reviews-slider-wrapper .dots a span {
  display: none;
}
.reviews-slider-wrapper .dots a.selected {
  background: none;
  border: 1px solid #fff;
  width: 14px;
  height: 14px;
}
@media only screen and (max-width: 768px) {
  .reviews-slider-wrapper {
    padding-left: 20px;
    padding-right: 20px;
  }
  .reviews-slider-wrapper .nav {
    display: none !important;
  }
}
.reviews-slider-title {
  position: absolute;
  left: 50%;
  transform: translate(-50%, 0);
  top: -10px;
  padding: 0 10px;
  background: #485062;
  text-transform: uppercase;
  font-weight: 100;
  font-size: 14px;
  color: #c8cfe2;
  white-space: nowrap;
}
@media only screen and (max-width: 767px) {
  .reviews-slider-title {
    white-space: normal;
    text-align: center;
    font-size: 12px;
    width: 90%;
  }
}
#reviews-slider .review {
  float: left;
}
.review {
  text-align: center;
}
.review p {
  font-weight: 300;
  font-size: 14px;
  color: #fff;
  margin: 30px 0;
}
.review-inner {
  max-width: 760px;
  margin-left: auto;
  margin-right: auto;
}
.review-author {
  margin-bottom: 15px;
}
.review-author:before {
  content: '';
  display: inline-block;
  vertical-align: middle;
  height: 1px;
  width: 100px;
  background: #7d859c;
  margin-right: 10px;
}
@media only screen and (max-width: 767px) {
  .review-author:before {
    width: 50px;
  }
}
.review-author:after {
  content: '';
  display: inline-block;
  vertical-align: middle;
  height: 1px;
  width: 100px;
  background: #7d859c;
  margin-left: 10px;
}
@media only screen and (max-width: 767px) {
  .review-author:after {
    width: 50px;
  }
}
.review-author img {
  display: inline-block;
  vertical-align: middle;
}
.review-name {
  text-align: center;
  font-weight: bold;
  color: #ffbc6b;
}
.review-occupation {
  color: #fff;
  text-align: center;
  font-weight: 300;
  font-size: 14px;
}
.weoffer {
  background: url('img/bg-offer.jpg') center center no-repeat;
  background-size: cover;
  padding-top: 60px;
  padding-bottom: 70px;
}
.weoffer .table-wrap {
  padding-right: 390px;
}
@media only screen and (max-width: 992px) {
  .weoffer .table-wrap {
    padding-right: 0;
  }
}
@media only screen and (max-width: 768px) {
  .weoffer .table-wrap {
    display: none;
  }
}
.weoffer-title {
  text-align: center;
  text-transform: uppercase;
  font-weight: bold;
  font-size: 24px;
  color: #ffbc6b;
}
.weoffer-subtitle {
  text-align: center;
  color: #fff;
  font-weight: 300;
  font-size: 24px;
  margin-bottom: 30px;
}
.weoffer-down {
  text-align: center;
  margin: 30px 0;
}
.weoffer-table {
  max-width: 770px;
}
.weoffer-table td {
  border: 1px solid #fff;
  text-align: center;
  vertical-align: top;
  padding: 10px;
  font-weight: 100;
  font-size: 14px;
  color: #fff;
  width: 20%;
  line-height: 1.2;
}
.weoffer-table td .ico {
  line-height: 90px;
}
@media only screen and (max-width: 992px) {
  .weoffer-table {
    max-width: 99999px;
  }
}
.weoffer-hidden {
  margin: 0;
  padding: 0;
  list-style-type: none;
  display: none;
}
.weoffer-hidden li {
  font-weight: 100;
  color: #fff;
  background: url('img/li.png') left center no-repeat;
  padding-left: 30px;
  padding-top: 5px;
  padding-bottom: 5px;
}
@media only screen and (max-width: 767px) {
  .weoffer-hidden {
    display: block;
  }
}
.man2 {
  right: 0px;
  bottom: -70px;
  position: absolute;
}
@media only screen and (max-width: 992px) {
  .man2 {
    display: none;
  }
}
.onecall {
  background: #ffa02d;
  padding-top: 40px;
  padding-bottom: 40px;
}
.onecall .container-fluid {
  padding-left: 30px;
  padding-right: 30px;
}
.onecall img {
  position: absolute;
  left: 0;
  top: -35px;
  display: block;
}
@media only screen and (max-width: 992px) {
  .onecall img {
    display: none;
  }
}
.onecall-inner {
  border: 1px solid #ffd29b;
  padding: 30px;
  min-height: 259px;
  padding-left: 475px;
}
@media only screen and (max-width: 992px) {
  .onecall-inner {
    padding-left: 30px;
    text-align: center;
  }
  .onecall-inner button {
    max-width: 320px;
    margin-left: auto;
    margin-right: auto;
  }
}
.onecall-title {
  color: #603f83;
  font-weight: 100;
  font-size: 24px;
  line-height: 1.2;
}
.onecall-title b {
  font-weight: 100;
  font-size: 64px;
}
@media only screen and (max-width: 768px) {
  .onecall-title b {
    font-size: 24px;
  }
}
@media only screen and (max-width: 768px) {
  .onecall-title {
    font-size: 18px;
  }
}
.onecall-row {
  margin-top: 15px;
}
.onecall-phone {
  color: #fff;
  font-size: 32px;
  font-weight: 100;
}
@media only screen and (max-width: 768px) {
  .onecall-phone {
    font-size: 24px;
  }
}
.onecall-work {
  color: #fff;
  font-weight: 100;
}
.onecall-getcall {
  background-color: #614084;
  background-repeat: repeat-x;
  background-image: -khtml-gradient(linear, left top, left bottom, from(#7c55a5), to(#614084));
  /* Konqueror */
  background-image: -moz-linear-gradient(#7c55a5, #614084);
  /* FF 3.6+ */
  background-image: -ms-linear-gradient(#7c55a5, #614084);
  /* IE10 */
  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #7c55a5), color-stop(100%, #614084));
  /* Safari 4+, Chrome 2+ */
  background-image: -webkit-linear-gradient(#7c55a5, #614084);
  /* Safari 5.1+, Chrome 10+ */
  background-image: -o-linear-gradient(#7c55a5, #614084);
  /* Opera 11.10 */
  background-image: -ms-linear-gradient(top, #7c55a5 0%, #614084 100%);
  /* IE10+ */
  background-image: linear-gradient(#7c55a5, #614084);
  /* the standard */
  width: 100%;
  margin-top: 15px;
}
.contacts {
  overflow: hidden;
}
.contacts .container-fluid {
  height: 0;
}
@media only screen and (max-width: 767px) {
  .contacts .container-fluid {
    height: auto;
    padding-left: 0;
    padding-right: 0;
  }
}
.contacts-inner {
  width: 591px;
  height: 520px;
  background: url('img/bg-contacts.png');
  position: absolute;
  right: 0;
  top: 45px;
  z-index: 200;
}
@media only screen and (max-width: 767px) {
  .contacts-inner {
    position: relative;
    width: 100%;
    height: 406px;
    background: url('img/bg-contacts-2.png');
    background-size: 100% 100%;
    margin-bottom: -20px;
    top: auto;
    right: auto;
    z-index: 500;
  }
}
.contacts-inner-2 {
  padding: 60px;
  position: absolute;
  left: 37px;
  top: 0;
  right: 0;
  bottom: 0;
  text-align: center;
}
@media only screen and (max-width: 767px) {
  .contacts-inner-2 {
    position: static;
    width: 100%;
    height: auto;
    padding: 30px;
  }
}
.contacts-title {
  text-transform: uppercase;
  font-weight: bold;
  font-size: 24px;
  color: #ffbc6b;
}
@media only screen and (max-width: 767px) {
  .contacts-title {
    font-size: 18px;
  }
}
.contacts-down {
  margin-bottom: 30px;
}
@media only screen and (max-width: 767px) {
  .contacts-down {
    margin-bottom: 15px;
  }
}
.contacts-item {
  margin-top: 30px;
}
.contacts-item p {
  margin: 15px 0 0 0;
  color: #fff;
  font-weight: 100;
}
@media only screen and (max-width: 766px) {
  .contacts-item p {
    margin-top: 10px;
  }
}
.contacts-item a {
  color: #ffbc6b;
}
@media only screen and (max-width: 767px) {
  .contacts-item {
    margin-top: 15px;
    font-size: 12px;
  }
}
.popform-section {
  display: flex;
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  z-index: 999;
  background: rgba(32, 37, 47, 0.95);
  padding: 15px;
  padding-left: 0;
  padding-right: 0;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  opacity: 0;
  visibility: hidden;
  -webkit-transition: all 300ms;
  -moz-transition: all 300ms;
  -o-transition: all 300ms;
  transition: all 300ms;
}
.popform-section .container-fluid {
  max-width: 100%;
  padding: 0;
}
@media only screen and (max-width: 991px) {
  .popform-section {
    position: static;
    display: block !important;
    visibility: visible !important;
    opacity: 1 !important;
    background: #323949;
    padding: 80px 0 30px 0;
  }
}
@media only screen and (max-width: 767px) {
  .popform-section {
    padding: 0px 0 30px 0;
  }
}
.popform-title {
  text-align: center;
  text-transform: uppercase;
  font-weight: bold;
  font-size: 24px;
  color: #ffbc6b;
  line-height: 1.2;
}
@media only screen and (max-width: 991px) {
  .popform-title {
    font-size: 18px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-title {
    font-size: 12px;
  }
}
.popform-subtitle {
  font-weight: 300;
  color: #fff;
  text-align: center;
  font-size: 24px;
  line-height: 1.2;
  margin-top: 10px;
}
@media only screen and (max-width: 991px) {
  .popform-subtitle {
    font-size: 18px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-subtitle {
    font-size: 12px;
  }
}
.popform-down {
  text-align: center;
  margin: 15px 0 30px 0;
}
@media only screen and (max-width: 991px) {
  .popform-down {
    margin-top: 15px;
    margin-bottom: 15px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-down {
    margin-bottom: 10px;
    margin-top: 10px;
  }
}
.popform-wrap {
  position: relative;
  padding: 10px 70px 0 70px;
}
@media only screen and (max-width: 991px) {
  .popform-wrap {
    padding-left: 0;
    padding-right: 0;
  }
}
.popform-close {
  position: absolute;
  cursor: pointer;
  right: 70px;
  top: -40px;
}
.popform-close:hover {
  opacity: .75;
}
@media only screen and (max-width: 991px) {
  .popform-close {
    right: 0;
  }
}
@media only screen and (max-width: 991px) {
  .popform-close {
    display: none;
  }
}
.popform-inner {
  background: #485062;
  border: 1px solid #5a657c;
  overflow: hidden;
  width: 1029px;
  display: flex;
  margin-left: auto;
  margin-right: auto;
}
@media only screen and (max-width: 1200px) {
  .popform-inner {
    width: 840px;
  }
}
@media only screen and (max-width: 991px) {
  .popform-inner {
    width: 724px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-inner {
    display: block;
    width: 300px;
    margin-left: auto;
    margin-right: auto;
  }
}
.popform-inner-left {
  flex: 66.666% 0 0;
  display: flex;
}
@media only screen and (max-width: 767px) {
  .popform-inner-left {
    width: 100%;
    float: none;
  }
}
.popform-inner-left-content {
  display: none;
  overflow: hidden;
  width: 100%;
}
.popform-inner-left-content.on {
  display: flex;
}
@media only screen and (max-width: 767px) {
  .popform-inner-left-content.on {
    display: block;
  }
}
@media only screen and (max-width: 767px) {
  .popform-inner-left-content {
    display: none;
  }
  .popform-inner-left-content.on {
    display: block;
  }
}
.popform-inner-left-left {
  flex: 50% 0 0;
  border-right: 1px solid #5a657c;
  padding: 30px;
}
@media only screen and (max-width: 991px) {
  .popform-inner-left-left {
    padding: 20px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-inner-left-left {
    padding: 15px;
    border-right: none;
    border-bottom: 1px solid #5a657c;
    width: 100%;
    float: none;
  }
}
.popform-man {
  display: flex;
  align-items: center;
}
@media only screen and (max-width: 767px) {
  .popform-man {
    padding-left: 20px;
    padding-right: 20px;
  }
}
.popform-man-thumb {
  margin-right: 25px;
}
.popform-man-thumb img {
  width: 90px;
  height: 90px;
  -webkit-border-radius: 100%;
  -moz-border-radius: 100%;
  border-radius: 100%;
}
@media only screen and (max-width: 1200px) {
  .popform-man-thumb {
    margin-right: 15px;
  }
  .popform-man-thumb img {
    width: 60px;
    height: 60px;
  }
}
@media only screen and (max-width: 991px) {
  .popform-man-thumb {
    margin-right: 15px;
  }
}
.popform-man-name {
  font-weight: bold;
  color: #ffbc6b;
  -webkit-transition: all 300ms;
  -moz-transition: all 300ms;
  -o-transition: all 300ms;
  transition: all 300ms;
}
@media only screen and (max-width: 991px) {
  .popform-man-name {
    font-size: 14px;
  }
}
.popform-specs {
  margin-top: 30px;
}
@media only screen and (max-width: 767px) {
  .popform-specs {
    margin-top: 20px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-specs {
    display: flex;
    flex-wrap: wrap;
    align-items: flex-start;
  }
}
.popform-spec {
  display: flex;
  margin-top: 15px;
}
.popform-spec:first-child {
  margin-top: 0;
}
@media only screen and (max-width: 767px) {
  .popform-spec {
    margin-top: 15px;
    flex: 50%;
    padding-right: 5px;
  }
  .popform-spec:nth-child(2) {
    margin-top: 0;
  }
}
.popform-spec-icon {
  margin-right: 20px;
}
@media only screen and (max-width: 991px) {
  .popform-spec-icon {
    margin-right: 15px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-spec-icon {
    display: none;
  }
}
.popform-spec-title {
  color: #bac0d2;
  font-size: 14px;
  font-weight: bold;
}
.popform-spec-text {
  color: #ffbc6b;
  font-weight: 300;
  font-size: 14px;
  line-height: 1.2;
  margin-top: 0px;
}
@media only screen and (max-width: 767px) {
  .popform-spec-text {
    margin-top: 0;
  }
}
.popform-inner-left-right {
  flex: 50% 0 0;
  border-right: 1px solid #5a657c;
  padding: 30px;
}
@media only screen and (max-width: 991px) {
  .popform-inner-left-right {
    padding: 20px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-inner-left-right {
    padding: 15px;
    border-right: none;
    border-bottom: 1px solid #5a657c;
    float: none;
    width: 100%;
  }
}
.popform-calend-title {
  font-weight: bold;
  color: #ffbc6b;
  text-align: center;
}
@media only screen and (max-width: 991px) {
  .popform-calend-title {
    font-size: 14px;
  }
}
.popform-calend {
  margin-top: 20px;
}
.popform-calend-date {
  color: #fff;
  text-align: center;
  width: 100%;
  font-size: 14px;
}
@media only screen and (max-width: 767px) {
  .popform-calend-date {
    font-size: 14px;
  }
}
.popform-calend-prev {
  border-right: 1px solid #717e98;
  display: none;
}
.popform-calend-next {
  border-left: 1px solid #717e98;
}
.popform-calend-prev-button {
  display: block;
  width: 100%;
  height: 38px;
  border: none;
  background: none;
  padding: 0;
  display: none;
}
.popform-calend-prev-button:hover {
  opacity: .5;
}
.popform-calend-next-button {
  display: block;
  width: 100%;
  height: 38px;
  border: none;
  background: none;
  padding: 0;
}
.popform-calend-next-button:hover {
  opacity: .5;
}
.popform-calend-table {
  width: 100%;
}
.popform-calend-table th {
  border: 1px solid #717e98;
  height: 40px;
  text-align: center;
  font-size: 14px;
  color: #fff;
  cursor: pointer;
  font-weight: normal;
}
.popform-calend-table td {
  border: 1px solid #717e98;
  height: 40px;
  text-align: center;
  font-size: 14px;
  color: #fff;
  cursor: pointer;
  -webkit-transition: all 300ms;
  -moz-transition: all 300ms;
  -o-transition: all 300ms;
  transition: all 300ms;
}
.popform-calend-table td:hover,
.popform-calend-table td.on {
  background: #ffbc6b;
}
.popform-calend-table td.zan {
  cursor: default;
  background: #5f677a;
}
.popform-calend-table td.high {
  outline: 5px solid #ffbc6b;
}
@media only screen and (max-width: 991px) {
  .popform-calend-table td {
    font-size: 12px;
  }
}
.popform-calend-table tr:first-child td {
  border-top: none;
}
.popform-inner-right {
  flex: 33.333% 0 0;
  padding: 30px;
  background: #614483;
}
.popform-inner-right .lbl {
  margin-bottom: 4px;
  margin-top: 15px;
}
.popform-inner-right .lbl:first-child {
  margin-top: 0;
}
@media only screen and (max-width: 991px) {
  .popform-inner-right {
    padding: 20px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-inner-right {
    padding: 15px;
    width: 100%;
    float: none;
  }
}
.popform-form .confidence {
  margin-top: 15px;
}
@media only screen and (max-width: 991px) {
  .popform-form .confidence {
    margin-top: 10px;
    font-size: 11px;
  }
}
.popform-form input {
  outline: none !important;
}
@media only screen and (max-width: 767px) {
  .popform-form input {
    height: 40px;
  }
}
.popform-form button {
  margin-top: 25px;
}
@media only screen and (max-width: 767px) {
  .popform-form button {
    margin-top: 15px;
    height: 40px;
  }
}
.popform-form .select-wrap {
  border: 1px solid #a272da;
  background: url('img/select-wrap-2.png') right top no-repeat;
  color: #fff;
}
.popform-form .select-wrap select {
  cursor: pointer;
  color: #fff;
}
.popform-form .select-wrap select option {
  background: #805cad !important;
  color: #fff;
}
@media only screen and (max-width: 767px) {
  .popform-form .select-wrap {
    height: 40px;
    background-position: right center;
  }
  .popform-form .select-wrap select {
    height: 40px;
  }
}
.popform-nav {
  width: 70px;
  height: 56px;
  background: #5a657c;
  display: block;
  position: absolute;
  padding: 0;
  top: 50%;
  transform: translate(0, -50%);
}
.popform-nav:hover {
  -webkit-filter: brightness(1.1);
  filter: brightness(1.1);
}
.popform-prev {
  left: 0;
}
.popform-next {
  right: 0;
}
@media only screen and (max-width: 991px) {
  .popform-navs {
    text-align: center;
  }
  .popform-navs button {
    display: inline-block;
    position: static;
    transform: none;
    margin-top: 10px;
  }
}
@media only screen and (max-width: 767px) {
  .popform-navs button {
    position: absolute;
    top: 18px;
    background: none;
  }
  .popform-navs button:first-child {
    left: 50%;
    transform: translate(-170px, 0);
  }
  .popform-navs button:last-child {
    right: 50%;
    transform: translate(170px, 0);
  }
  .popform-navs button img {
    transform: scale(0.8);
  }
}
input {
  -webkit-box-shadow: none !important;
  -moz-box-shadow: none !important;
  box-shadow: none !important;
}
.footer {
  padding: 40px 0;
  background: #323949;
  color: #fff;
  font-weight: 100;
}
.footer p {
  text-transform: uppercase;
  font-size: 14px;
  margin: 0;
  line-height: 1.2;
}
@media only screen and (max-width: 767px) {
  .footer {
    text-align: center;
    padding: 25px 0;
  }
  .footer .col {
    margin: 15px 0;
  }
}
.contacts-footer b {
  font-size: 14px;
  font-weight: bold;
  color: #fff;
}
.contacts-footer a {
  font-size: 14px;
  color: #ffbc6b;
  font-weight: bold;
}
.contacts-footer a:last-child {
  font-weight: 100;
}
.contacts-footer span {
  font-size: 14px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 100;
  display: block;
}
.popup {
  padding: 40px 60px;
  background: #614483;
  display: none;
}
.popup .popup-title {
  font-size: 24px;
  text-transform: uppercase;
  font-weight: bold;
  color: #fff;
  text-align: center;
}
@media only screen and (max-width: 768px) {
  .popup {
    width: auto;
    padding: 20px;
  }
}
@media only screen and (max-width: 767px) {
  #popup-thanks .popup-title {
    font-size: 18px;
  }
}
.bright:hover {
  -webkit-filter: brightness(1.1);
  filter: brightness(1.1);
}
input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
  opacity: 1 !important;
}
::-webkit-input-placeholder {
  color: #828181;
  opacity: 1;
}
:-moz-placeholder {
  color: #828181;
  opacity: 1;
}
::-moz-placeholder {
  color: #828181;
  opacity: 1;
}
:-ms-input-placeholder {
  color: #828181;
  opacity: 1;
}
/*! fancyBox v2.1.4 fancyapps.com | fancyapps.com/fancybox/#license */
.fancybox-wrap,
.fancybox-skin,
.fancybox-outer,
.fancybox-inner,
.fancybox-image,
.fancybox-wrap iframe,
.fancybox-wrap object,
.fancybox-nav,
.fancybox-nav span,
.fancybox-tmp {
  padding: 0;
  margin: 0;
  border: 0;
  outline: none;
  vertical-align: top;
}
.fancybox-wrap {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 8020;
}
.fancybox-skin {
  position: relative;
  color: #444;
  text-shadow: none;
}
.fancybox-opened {
  z-index: 8030;
}
.fancybox-opened .fancybox-skin {
  -webkit-box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5);
  -moz-box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5);
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5);
}
.fancybox-outer,
.fancybox-inner {
  position: relative;
}
.fancybox-inner {
  overflow: hidden;
}
.fancybox-type-iframe .fancybox-inner {
  -webkit-overflow-scrolling: touch;
}
.fancybox-error {
  color: #444;
  font: 14px/20px "Helvetica Neue", Helvetica, Arial, sans-serif;
  margin: 0;
  padding: 15px;
  white-space: nowrap;
}
.fancybox-image,
.fancybox-iframe {
  display: block;
  width: 100%;
  height: 100%;
}
.fancybox-image {
  max-width: 100%;
  max-height: 100%;
}
#fancybox-loading,
.fancybox-close,
.fancybox-prev span,
.fancybox-next span {
  background-image: url('img/fancybox/fancybox_sprite.png');
}
#fancybox-loading {
  position: fixed;
  top: 50%;
  left: 50%;
  margin-top: -22px;
  margin-left: -22px;
  background-position: 0 -108px;
  opacity: 0.8;
  cursor: pointer;
  z-index: 8060;
}
#fancybox-loading div {
  width: 44px;
  height: 44px;
  background: url('img/fancybox/fancybox_loading.gif') center center no-repeat;
}
.fancybox-close {
  position: absolute;
  top: 0px;
  right: -35px;
  width: 27px;
  height: 27px;
  cursor: pointer;
  z-index: 8040;
  background: url('img/close.png');
}
@media only screen and (max-width: 767px) {
  .fancybox-close {
    right: 0;
    top: -35px;
  }
}
.fancybox-nav {
  position: absolute;
  top: 0;
  width: 40%;
  height: 100%;
  cursor: pointer;
  text-decoration: none;
  background: transparent url('img/fancybox/blank.gif');
  /* helps IE */
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  z-index: 8040;
}
.fancybox-prev {
  left: 0;
}
.fancybox-next {
  right: 0;
}
.fancybox-nav span {
  position: absolute;
  top: 50%;
  width: 36px;
  height: 34px;
  margin-top: -18px;
  cursor: pointer;
  z-index: 8040;
  visibility: hidden;
}
.fancybox-prev span {
  left: 10px;
  background-position: 0 -36px;
}
.fancybox-next span {
  right: 10px;
  background-position: 0 -72px;
}
.fancybox-nav:hover span {
  visibility: visible;
}
.fancybox-tmp {
  position: absolute;
  top: -99999px;
  left: -99999px;
  visibility: hidden;
  max-width: 99999px;
  max-height: 99999px;
  overflow: visible !important;
}
/* Overlay helper */
.fancybox-lock {
  overflow-x: hidden;
  margin: 0 !important;
}
.fancybox-overlay {
  position: absolute;
  top: 0;
  left: 0;
  overflow: hidden;
  display: none;
  z-index: 8010;
  background: rgba(0, 0, 0, 0.5);
}
.fancybox-overlay-fixed {
  position: fixed;
  bottom: 0;
  right: 0;
}
.fancybox-lock .fancybox-overlay {
  overflow: auto;
  overflow: hidden;
}
/* Title helper */
.fancybox-title {
  visibility: hidden;
  font: normal 13px/20px "Helvetica Neue", Helvetica, Arial, sans-serif;
  position: relative;
  text-shadow: none;
  z-index: 8050;
}
.fancybox-opened .fancybox-title {
  visibility: visible;
}
.fancybox-title-float-wrap {
  position: absolute;
  bottom: 0;
  right: 50%;
  margin-bottom: -35px;
  z-index: 8050;
  text-align: center;
}
.fancybox-title-float-wrap .child {
  display: inline-block;
  margin-right: -100%;
  padding: 2px 20px;
  background: transparent;
  /* Fallback for web browsers that doesn't support RGBa */
  background: rgba(0, 0, 0, 0.8);
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
  text-shadow: 0 1px 2px #222;
  color: #FFF;
  font-weight: bold;
  line-height: 24px;
  white-space: nowrap;
}
.fancybox-title-outside-wrap {
  position: relative;
  margin-top: 10px;
  color: #fff;
}
.fancybox-title-inside-wrap {
  padding-top: 10px;
}
.fancybox-title-over-wrap {
  position: absolute;
  bottom: 0;
  left: 0;
  color: #fff;
  padding: 10px;
  background: #000;
  background: rgba(0, 0, 0, 0.8);
}
.phonelink {
  cursor: pointer;
  border-bottom: 1px solid transparent;
  -webkit-transition: all 300ms;
  -moz-transition: all 300ms;
  -o-transition: all 300ms;
}
.phonelink:hover {
  opacity: .5;
}


    </style>
    



  </head>
  <body id="site-top">
    <div id="popup-get-call" class="popup">
      <div class="intro-form popup-form">
        <div class="intro-form-title">Заполните форму</div>
        <div class="intro-form-subtitle">и получите решение по займу в течение 15 минут</div>
        <div class="form-down"><img src="img/down.png" alt=""></div>
        <div class="intro-form-wrap">
          <form action="send.php" method="post" class="validate-form">

          <input type="hidden" name="utm_source" value="<?  echo htmlspecialchars($_COOKIE['utm_source']);  ?>">
          <input type="hidden" name="utm_medium" value="<?  echo htmlspecialchars($_COOKIE['utm_medium']);  ?>">
          <input type="hidden" name="utm_campaign" value="<?  echo htmlspecialchars($_COOKIE['utm_campaign']);  ?>">
           
            <input type="hidden" name="lead_srok" value="1 год">
            <input type="hidden" name="lead_sum" value="500 000 руб.">
            <input type="hidden" name="lead_name" value="Заявка на кредит">
            <input type="hidden" name="tag" value="(google)">
            <input type="hidden" name="utm_source" value="" />
            <input type="hidden" name="landing" value="Под залог недвижимости">
            <input type="hidden" name="form" value="call">
            <div class="lbl">Ваше имя:</div>
            <input type="text" name="name">
            <div class="lbl">Ваш телефон</div>
            <input type="text" name="phone" required>
            <input type="hidden" name="additional" value="Нужна вся сумма сегодня">
            <div class="checks"><a href="index.html#" class="check">
                <div class="checkbox"></div><span>Нужен Аванс в течение часа</span></a><a href="index.html#" class="check active">
                <div class="checkbox"></div><span>Нужна вся сумма сегодня</span></a></div>
            <button onclick="gtag_report_conversion();" type="submit">Получить деньги</button>
            <div class="confidence">Отправляя запрос Вы даете согласие<br>на обработку Ваших персональных данных в соответствии с <a href="/personal_confirm.pdf" style="color:#ffbc6b;" target="_blank">политикой конфиденциальности</a></div>
          </form>
        </div>
      </div>
    </div>
    <div id="popup-thanks" class="popup">
      <div class="popup-title">Спасибо, Ваша заявка принята.</div>
      <div class="conv"></div>
    </div>
    <header id="header" class="header">
      <div class="header-top">
        <div class="container-fluid">
          <div class="header-top-inner">
            <div class="row">
              <div class="col-sm-3 col col-1">
                <div class="money"><span>До 500 000 USD</span></div>
              </div>
              <div class="col-sm-3 col col-2">
                <div class="hours24"><span>Cрок займа от <b>3&nbsp;</b> до <b>60 месяцев!</b></span></div>
              </div>
              <div class="col-sm-3 col col-3">
                <div class="years"><span>&nbsp;1,5 % в месяц<br>Без дополнительных и скрытых комиссий!</span></div>
              </div>
              <div class="col-sm-3 col col-4">
                <div class="phone-call"><span class="phonelink">+38(067)444-0595</span><a href="index.html#" class="get-call">заказать звонок</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="header-bottom">
        <div class="container-fluid">
          <div class="header-bottom-inner">
            <div class="row">
              <div class="col-sm-3"><a href="index.html" class="logo"><img src="img/logo_header.png" alt=""></a></div>
              <div class="col-sm-9">
                <nav class="main-menu">
                  <ul>
                    <li><a href="#calc">Сумма кредита</a></li>
                    <li><a href="#uslk">Условия кредита</a></li>
                    <li><a href="#calc2">Расчет платежа</a></li>
                    <li><a href="#reviews">Отзывы</a></li>
                    <li><a href="#contacts">Контакты</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <div class="intro">
      <div class="man"><img src="img/woman.png" alt=""></div>
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6 col col-1">
            <div class="intro-title">
            
                        <div style="display:none" class="hidden-landing">Под залог недвижимости</div>
            <span class="span-1">Быстрый</span><span class="span-2">Кредит</span>
            <span class="span-3">под залог</span>
            <span class="span-4">недвижимости!</span>
            
            
            
            
            
            
                  

                          

                                      

                                      

                                

                        

                        


                        </div>   

            <div class="intro-features">
              <div class="intro-feature">Выдаём полную сумму залога<br> на руки <b>в день обращения!</b></div>
              <div class="intro-feature">Аванс до 30% от<br> суммы залога <b>в течение часа!</b></div>
              <div class="intro-feature">Работаем только по<br><b>Киеву и областям Украины</b></div>
            </div>
          </div>
          <div class="col-sm-6 col col-2">
            <div class="intro-form">
              <div class="intro-form-title">Заполните форму</div>
              <div class="intro-form-subtitle">и получите решение по займу в течении 15 минут</div>
              <div class="form-down"><img src="img/down.png" alt=""></div>
              <div class="intro-form-wrap">
                <form action="send.php" method="post" class="validate-form">
                 
                 <input type="hidden" name="utm_source" value="<?  echo htmlspecialchars($_COOKIE['utm_source']);  ?>">
                 <input type="hidden" name="utm_medium" value="<?  echo htmlspecialchars($_COOKIE['utm_medium']);  ?>">
                 <input type="hidden" name="utm_campaign" value="<?  echo htmlspecialchars($_COOKIE['utm_campaign']);  ?>">
                 
                  <input type="hidden" name="lead_name" value="Заявка на кредит">
                  <input type="hidden" name="tag" value="(google)">
                  <input type="hidden" name="utm_source" value="" />
                  <input type="hidden" name="landing" value="Под залог недвижимости">
                  <input type="hidden" name="form" value="order">
                  <div class="lbl">Ваше имя:</div>
                  <input type="text" name="name">
                  <div class="lbl">Ваш телефон</div>
                  <input type="text" name="phone" required>
                  <input type="hidden" name="additional" value="Нужна вся сумма сегодня">
                  <div class="checks"><a href="index.html#" class="check">
                      <div class="checkbox"></div><span>Нужен Аванс в течение часа</span></a><a href="index.html#" class="check active">
                      <div class="checkbox"></div><span>Нужна вся сумма сегодня</span></a></div>
                  <button  onclick="gtag_report_conversion();" type="submit">Получить деньги</button>
                  <div class="confidence">Отправляя запрос Вы даете согласие<br>на обработку Ваших персональных данных в соответствии с <a href="/personal_confirm.pdf" style="color:#ffbc6b;" target="_blank">политикой конфиденциальности</a></div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="bg-gray">
      <div class="features">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-3 col-sm-3 col-xs-6 col col-1">
              <div class="feature">
                <div class="feature-ico"><img src="img/feature1.png" alt=""></div><span>Кредитная история<br>не важна!</span>
              </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6 col col-2">
              <div class="feature">
                <div class="feature-ico"><img src="img/feature2.png" alt=""></div><span>Без подтверждения<br>дохода!</span>
              </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6 col col-3">
              <div class="feature">
                <div class="feature-ico"><img src="img/feature3.png" alt=""></div><span>Без подтверждения<br>трудоустройства!<br></span>
              </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6 col col-4">
              <div class="feature">
                <div class="feature-ico"><img src="img/feature4.png" alt=""></div><span>Рассмотрение заявки<br>15 минут!</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid">
        <div id="calc" class="calc">
          <div class="calc-title">Узнайте сумму одобренного вам кредита</div>
          <div class="calc-subtitle">под залог недвижимости</div>
          <div class="calc-down"><img src="img/calc-down.png" alt=""></div>
          <div class="calc-wrap">
            <div class="calc-wrap-title">Оценка проводится дежурным специалистом по оценке недвижимости в течение 5 минут.</div>
            <div class="calc-tabs">
              <div class="calc-tabs-title">Комнат:</div>
              <div class="calc-tabs-tabs">
              <a href="#" class="a-1 active"><span>1</span></a>
              <a href="#" class="a-2"><span>2</span></a>
              <a href="#" class="a-3"><span>3</span></a>
              <a href="#" class="a-4"><span>4 и более</span></a>
              <a href="#" class="a-5"><span>земельный<br>участок</span></a></div>
            </div>
            <div id="calc-tabs-select">
            <div class="lbl">Кол-во комнат:</div>
              <div class="select-wrap">
                <select name="" id="" class="calc-tabs-select">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4 и более</option>
                  <option value="земельный участок">земельный участок</option>
                </select>
              </div>
            </div>
            <div class="calc-form">
              <form action="send.php" method="post" class="validate-form">
                 <input type="hidden" name="utm_source" value="<?  echo htmlspecialchars($_COOKIE['utm_source']);  ?>">
                 <input type="hidden" name="utm_medium" value="<?  echo htmlspecialchars($_COOKIE['utm_medium']);  ?>">
                 <input type="hidden" name="utm_campaign" value="<?  echo htmlspecialchars($_COOKIE['utm_campaign']);  ?>">
                <input type="hidden" name="lead_name" value="Узнать одобренную сумму">
                <input type="hidden" name="tag" value="(google)">
                <input type="hidden" name="utm_source" value="" />
                <input type="hidden" name="landing" value="Под залог недвижимости">
                <input type="hidden" name="form" value="preorder">
                <input type="hidden" name="rooms" value="1">
                <div class="row">
                  <div class="col-sm-6 col col-l">
                    <div class="lbl">Площадь:</div>
                    <input type="text" name="ploshad" required>
                  </div>
                  <div class="col-sm-6 col col-r">
                    <div class="lbl">Адрес:</div>
                    <input type="text" name="adres" required>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6 col col-l">
                    <div class="lbl">Регион:</div>
                    <div class="select-wrap">
                      <select name="region" required>
                        <option value="Киев">Киев</option>
                        <option value="Киевская область">Киевская область</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-sm-6 col col-r">
                    <div class="lbl">Телефон:</div>
                    <input type="text" name="phone" required>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6 col col-l">
                    <div class="lbl">Город:</div>
                    <input type="text" name="town" required>
                  </div>
                  <div class="col-sm-6 col col-r">
                    <button  onclick="gtag_report_conversion();" type="submit">Оценить недвижимость сейчас</button>
                  </div>
                </div>
              </form>
              <div class="confidence">Отправляя запрос Вы даете согласие<br>на обработку Ваших персональных данных в соответствии с <a href="/personal_confirm.pdf" style="color:#ffbc6b;" target="_blank">политикой конфиденциальности</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="credits" class="credits">
      <div class="container-fluid">
        <div class="credits-title">СРОЧНЫЙ КРЕДИТ&nbsp;</div>
        <div class="credits-subtitle">под залог недвижимости</div>
        <div class="credits-down"><img src="img/credits-down.png" alt=""></div>
        <div class="credits-wrap">
          <div class="credits-wrap-title" style="text-align:center">Вы сами можете выбрать форму платежа!<br><span style="text-transform:none">Без дополнительных и скрытых комиссий</span></div>

          <div class="row">
            <div class="col-sm-6">
              <div class="credit credit-1">
                <div class="credit-inner">
                  <div class="credit-title-subtitle">
                    <div class="credit-title">Аннуитетный платёж</div>
                    <div class="credit-subtitle">Включает часть суммы основного долга и месячные проценты</div>
                  </div>
                  <button class="get-call">Выбрать</button>
                </div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="credit credit-2">
                <div class="credit-inner">
                  <div class="credit-title-subtitle">
                    <div class="credit-title">Шаровый платёж</div>
                    <div class="credit-subtitle">Оплата только процентов по займу до его завершения. Возможна пролангация договора займа.</div>
                  </div>
                  <button class="get-call">Выбрать</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="clients-slider-wrapper">
          <button class="nav prev"><img src="img/prev.png" alt=""></button>
          <button class="nav next"><img src="img/next.png" alt=""></button>
          <div id="clients-slider">
            <div class="slide"><img src="img/banks/1.png" alt=""></div>
            <div class="slide"><img src="img/banks/2.png" alt=""></div>
            <div class="slide"><img src="img/banks/3.png" alt=""></div>
            <div class="slide"><img src="img/banks/4.png" alt=""></div>
            <div class="slide"><img src="img/banks/5.png" alt=""></div>
            <div class="slide"><img src="img/banks/6.png" alt=""></div>
          </div>
        </div>
      </div>
    </div>
    <div id="calc2" class="calc2">
      <div class="house"><img src="img/house.png" alt=""></div>
      <div class="container-fluid">
        <div class="calc2-title">Рассчитайте</div>
        <div class="calc2-subtitle">Ваш ежемесячный платеж.</div>
        <div class="calc2-down"><img src="img/calc2-down.png" alt=""></div>
        <div class="row">
          <div class="col-sm-6">
            <div class="calc2-wrap">
              <div class="calc2-wrap-title">Введите сумму и срок займа</div>
              <div class="calc-inputs-wrapper">
                <div class="calc-rows">
                  <div class="calc-row">
                    <div class="calc-legend">
                      <div class="calc-row-left"><span>Срок</span></div>
                      <div id="srok-current" class="calc-row-right"><span>1 год</span></div>
                    </div>
                    <div class="range">
                      <input type="range" min="1" max="5" id="slide-srok" data-rangeslider value="1">
                    </div>
                    <div class="range-legend">
                      <div class="col"><span>1<br>год</span></div>
                      <div class="col"><span>2<br>года</span></div>
                      <div class="col"><span>3<br>года</span></div>
                      <div class="col"><span>4<br>года</span></div>
                      <div class="col"><span>5<br>лет</span></div>
                    </div>
                  </div>
                  <div class="calc-row">
                    <div class="calc-legend">
                      <div class="calc-row-left"><span>Сумма</span></div>
                      <div id="sum-current" class="calc-row-right"><span> 10 000 $ </span></div>
                    </div>
                    <div class="range">
                      <input type="range" min="1000" max="100000" step="500" id="slide-sum" data-rangeslider value="10000">
                    </div>
                    <div class="range-legend">
                      <div class="col"><span>1000 $<br></span></div>
                      <div class="col"><span>100 000<br>$</span></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="calc2-wrap-2">
              <div class="calc2-wrap-2-title">Ваш ежеесячный платеж</div>
              <div id="calc-summary"><b>90 258</b><span>$ в месяц</span></div>
              <div class="calc-info"> Шаровый платеж </div>
              <button class="get-call calc-get-call">оформить займ сейчас</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!--
    <div class="popform-section">
      <div class="container-fluid">
        <div class="popform">
          <div class="popform-title">Нужна вся сумма максимально быстро?</div>
          <div class="popform-subtitle">Не трать время! <br>Запишись на приём к частному инвестору прямо сейчас!</div>
          <div class="popform-down"><img src="img/popform-down.png" alt=""></div>
          <div class="popform-wrap">
            <div class="popform-close"><img src="img/popform-close.png" alt=""></div>
            <div class="popform-inner">
              <div class="popform-inner-left">
                <div id="popform-inner-left-content-1" class="popform-inner-left-content on">
                  <div class="popform-inner-left-left">
                    <div class="popform-man">
                      <div class="popform-man-thumb"><img src="img/popform-man-1.png" alt=""></div>
                      <div class="popform-man-name">Константинова <br>Роза Тимофеевна</div>
                    </div>
                    <div class="popform-specs">
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-1.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Объекты залога:</div>
                          <div class="popform-spec-text">квартиры, доли квартиры.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-2.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Поцентная ставка:</div>
                          <div class="popform-spec-text">от 8,2% годовых.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-3.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Максимальная сумма:</div>
                          <div class="popform-spec-text">10 000 000 руб.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-4.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Переоформление собственности:</div>
                          <div class="popform-spec-text">нет.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-5.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Выдача аванса:</div>
                          <div class="popform-spec-text">да.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-6.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Размер аванса:</div>
                          <div class="popform-spec-text">до 30% суммы залога.</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="popform-inner-left-right">
                    <div class="popform-calend-title">Свободное время записи:</div>
                    <div class="popform-calend">
                      <div class="popform-calend-bottom">
                        <table class="popform-calend-table">
                          <thead>
                            <tr>
                              <th>
                                <button class="popform-calend-prev-button"><img src="img/popform-calend-prev.png" alt=""></button>
                              </th>
                              <th>
                                <div class="popform-calend-date">21.07.2018</div>
                              </th>
                              <th>
                                <button class="popform-calend-next-button"><img src="img/popform-calend-next.png" alt=""></button>
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td class="zan">10:00</td>
                              <td class="zan">10:30</td>
                              <td>11:00</td>
                            </tr>
                            <tr>
                              <td>12:00</td>
                              <td>12:30</td>
                              <td>13:00</td>
                            </tr>
                            <tr>
                              <td>13:30</td>
                              <td>14:00</td>
                              <td class="zan">14:30</td>
                            </tr>
                            <tr>
                              <td>15:00</td>
                              <td>15:30</td>
                              <td>16:00</td>
                            </tr>
                            <tr>
                              <td>16:30</td>
                              <td>17:00</td>
                              <td>17:30</td>
                            </tr>
                            <tr>
                              <td>18:00</td>
                              <td>18:30</td>
                              <td>19:00</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
                <div id="popform-inner-left-content-2" class="popform-inner-left-content">
                  <div class="popform-inner-left-left">
                    <div class="popform-man">
                      <div class="popform-man-thumb"><img src="img/popform-man-2.png" alt=""></div>
                      <div class="popform-man-name">Морозов <br>Виктор Викторович</div>
                    </div>
                    <div class="popform-specs">
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-1.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Объекты залога:</div>
                          <div class="popform-spec-text">квартиры, комнаты, коттеджи.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-2.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Поцентная ставка:</div>
                          <div class="popform-spec-text">от 9% годовых.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-3.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Максимальная сумма:</div>
                          <div class="popform-spec-text">17 000 000 руб.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-4.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Переоформление собственности:</div>
                          <div class="popform-spec-text">нет.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-5.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Выдача аванса:</div>
                          <div class="popform-spec-text">да.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-6.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Размер аванса:</div>
                          <div class="popform-spec-text">до 50 000 рублей.</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="popform-inner-left-right">
                    <div class="popform-calend-title">Свободное время записи:</div>
                    <div class="popform-calend">
                      <div class="popform-calend-bottom">
                        <table class="popform-calend-table">
                          <thead>
                            <tr>
                              <th>
                                <button class="popform-calend-prev-button"><img src="img/popform-calend-prev.png" alt=""></button>
                              </th>
                              <th>
                                <div class="popform-calend-date">21.07.2018</div>
                              </th>
                              <th>
                                <button class="popform-calend-next-button"><img src="img/popform-calend-next.png" alt=""></button>
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td class="zan">10:00</td>
                              <td>10:30</td>
                              <td>11:00</td>
                            </tr>
                            <tr>
                              <td>12:00</td>
                              <td>12:30</td>
                              <td>13:00</td>
                            </tr>
                            <tr>
                              <td>13:30</td>
                              <td>14:00</td>
                              <td>14:30</td>
                            </tr>
                            <tr>
                              <td>15:00</td>
                              <td class="zan">15:30</td>
                              <td>16:00</td>
                            </tr>
                            <tr>
                              <td>16:30</td>
                              <td>17:00</td>
                              <td>17:30</td>
                            </tr>
                            <tr>
                              <td>18:00</td>
                              <td>18:30</td>
                              <td>19:00                        </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
                <div id="popform-inner-left-content-3" class="popform-inner-left-content">
                  <div class="popform-inner-left-left">
                    <div class="popform-man">
                      <div class="popform-man-thumb"><img src="img/popform-man-3.png" alt=""></div>
                      <div class="popform-man-name">Никифорова <br>Дарья Эдуардовна</div>
                    </div>
                    <div class="popform-specs">
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-1.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Объекты залога:</div>
                          <div class="popform-spec-text">квартиры, дома, коттеджи.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-2.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Поцентная ставка:</div>
                          <div class="popform-spec-text">от 11% годовых.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-3.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Максимальная сумма:</div>
                          <div class="popform-spec-text">50 000 000 руб.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-4.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Переоформление собственности:</div>
                          <div class="popform-spec-text">нет.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-5.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Выдача аванса:</div>
                          <div class="popform-spec-text">да.</div>
                        </div>
                      </div>
                      <div class="popform-spec">
                        <div class="popform-spec-icon"><img src="img/popform-spec-6.png" alt=""></div>
                        <div class="popform-spec-content">
                          <div class="popform-spec-title">Размер аванса:</div>
                          <div class="popform-spec-text">до 15% суммы залога.</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="popform-inner-left-right">
                    <div class="popform-calend-title">Свободное время записи:</div>
                    <div class="popform-calend">
                      <div class="popform-calend-bottom">
                        <table class="popform-calend-table">
                          <thead>
                            <tr>
                              <th>
                                <button class="popform-calend-prev-button"><img src="img/popform-calend-prev.png" alt=""></button>
                              </th>
                              <th>
                                <div class="popform-calend-date">21.07.2018</div>
                              </th>
                              <th>
                                <button class="popform-calend-next-button"><img src="img/popform-calend-next.png" alt=""></button>
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>10:00</td>
                              <td>10:30</td>
                              <td>11:00</td>
                            </tr>
                            <tr>
                              <td>12:00</td>
                              <td>12:30</td>
                              <td>13:00</td>
                            </tr>
                            <tr>
                              <td class="zan">13:30</td>
                              <td>14:00</td>
                              <td>14:30</td>
                            </tr>
                            <tr>
                              <td>15:00</td>
                              <td>15:30</td>
                              <td class="zan">16:00</td>
                            </tr>
                            <tr>
                              <td>16:30</td>
                              <td>17:00</td>
                              <td>17:30</td>
                            </tr>
                            <tr>
                              <td>18:00</td>
                              <td>18:30</td>
                              <td>19:00                        </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="popform-inner-right">
                <div class="popform-form">
                  <form action="sendmail.php" method="post" class="validate-form">
                    <input type="hidden" name="kkomu" value="Константинова Роза Тимофеевна">
                    <input type="hidden" name="time">
                    <input type="hidden" name="date">
                    <input type="hidden" name="lead_name" value="Запись на прием">
                    <input type="hidden" name="tag" value="(google)">
                    <input type="hidden" name="utm_source" value="" />
                    <input type="hidden" name="landing" value="Под залог недвижимости">
                    <input type="hidden" name="form" value="call">

                    <div class="lbl">Ваше имя:</div>
                    <input type="text" name="name" required>
                    <div class="lbl">Ваш телефон:</div>
                    <input type="text" name="phone" required>
                    <div class="lbl">Необходимая сумма:</div>
                    <input type="text" name="sum" required>
                    <div class="lbl">Объект залога:</div>
                    <div class="select-wrap">
                      <select name="object" required>
                        <option value="Квартира" selected>Квартира</option>
                        <option value="Доля квартиры">Доля квартиры</option>
                        <option value="Комната">Комната</option>
                        <option value="Дом">Дом</option>
                        <option value="Земельный участок">Земельный участок</option>
                        <option value="Коммерция">Коммерция</option>
                        <option value="Без залога">Без залога</option>
                      </select>
                    </div>
                    <button  onclick="gtag_report_conversion();" type="submit">Записаться</button>
                    <div class="confidence">100% конфиденциальность.<br>Мы не передаем Ваши данные третьим лицам.</div>
                  </form>
                </div>
              </div>
            </div>
            <div class="popform-navs">
              <button class="popform-nav popform-prev"><img src="img/popform-prev.png" alt=""></button>
              <button class="popform-nav popform-next"><img src="img/popform-next.png" alt=""></button>
            </div>
          </div>
        </div>
      </div>
    </div>
    -->
    
    <div id="reviews" class="reviews">
      <div class="container-fluid">
        <div class="reviews-title">ОТЗЫВЫ НАШИХ КЛИЕНТОВ</div>
        <div class="reviews-subtitle">Уже <b>более 5 000</b> человек получили кредит под залог в день обращения!</div>
        <div class="reviews-down"> <img src="img/reviews-down.png" alt=""></div>
        <div class="reviews-slider-wrapper">
          <div class="reviews-slider-title">Более половины из них получили авансовый платёж уже через час после обращения!</div>
          <button class="nav prev"><img src="img/reviews-prev.png" alt=""></button>
          <button class="nav next"><img src="img/reviews-next.png" alt=""></button>
          <div class="dots"></div>
          <div id="reviews-slider">
            <div class="review">
              <div class="review-inner"><img src="img/quot.png" alt="">
                <p>Спасибо кредитному центру «ДЕМЕЕВСКИЙ», что выручили, когда деньги нужны были мегасрочно! Под развитие бизнеса крупная сумма денег нужна была «на вчера», иначе объект бы достался конкурентам. Получили деньги под залог в течение часа (аванс) с минимальными документами и внесли задаток продавцу. Благодаря «Думеевскому» помещение все-таки досталось нам, и уже вот полгода как работает. Это тот случай, когда последний шанс оказывается выигрышным, ведь все остальные, даже партнеры по бизнесу, отказали, и только здесь нам смогли оказать быструю финансовую поддержку. Рекомендую!</p>
                <div class="review-author"><img src="img/review-author.png" alt=""></div>
                <div class="review-name">Сергей Шаповалов</div>
                <div class="review-occupation">43 года, Киев</div>
              </div>
            </div>
            <div class="review">
              <div class="review-inner"><img src="img/quot.png" alt="">
                <p>Каждый раз с благодарностью вспоминаю ребят из кредитного центра «ДЕМЕЕВСКИЙ», потому как если бы не они, моя жизнь круто бы изменилась и не в лучшую сторону. Когда срочно нужны деньги, понимаешь, что нет ни друзей, ни знакомых, которые бы могли помочь – крупные суммы никто не хочет давать в долг. Остаются только разные финансовые организации, но срок выдачи – несколько недель, а что делать, если деньги нужны сейчас?! Теперь знаю, идти в «Демеевский». Ребята, спасибо, что помогли выбраться из финансового болота. Буду признательна вам всегда, и конечно, всем вас советую!</p>
                <div class="review-author"><img src="img/review-author-2.png" alt=""></div>
                <div class="review-name">Людмила Игнатова</div>
                <div class="review-occupation">35 лет, Буча</div>
              </div>
            </div>
            <div class="review">
              <div class="review-inner"><img src="img/quot.png" alt="">
                <p>Мой отзыв, наверное, поддержат десятки других людей, которые не могли взять займ под залог недвижимости из-за волокиты с документами. На самом деле это просто кошмар, служащие в банках придираются к каждой написанной букве, а самому переделывать и ходить по инстанциям – это уйма времени. Только в «Демеевском» смогли разобраться с документами, и более того, помогли дооформить то, чего не хватало, еще и быстро. А еще – благодаря «Демеевскому» я получил кредит даже на более выгодных условиях, чем рассчитывал. Спасибо вам, уважаемые. </p>
                <div class="review-author"><img src="img/review-author-5.png" alt=""></div>
                <div class="review-name">Николай Васильев</div>
                <div class="review-occupation">44 года, Ирпень</div>
              </div>
            </div>
            <div class="review">
              <div class="review-inner"><img src="img/quot.png" alt="">
                <p>С моей кредитной историей (далеко не положительной), я думала, шансов нет. Но решила попробовать. Обойдя все банки, и везде получив отказ (просрочки по платежам были и солидные), начала оббивать пороги фирм, найденных в сети. Пять попыток были неудачными, и только на шестую я попала к кредитному центру «ДЕМЕЕВСКИЙ». До сих пор не верю, что так быстро можно все решить, еще и при таких условиях. Документы отправляла по электронке, пригласили в офис меня в тот же день – и ура! Мне в тот же день выдали аванс! Невероятно. Спасибо! Надеюсь, не придется больше к вам обращаться, но в случае форс-мажоров, знаю, кто мне поможет.</p>
                <div class="review-author"><img src="img/review-author-4.png" alt=""></div>
                <div class="review-name">Светлана Кириченко</div>
                <div class="review-occupation">38 лет, Бровары</div>
              </div>
            </div>
            <div class="review">
              <div class="review-inner"><img src="img/quot.png" alt="">
                <p>Из-за проблем с работой накопилось много долгов – просрочки по кредитам и долги по коммунальным платежам, начали надоедать звонками, что действовало на нервы. Кредитный центр «ДЕМЕЕВСКИЙ», посоветовали знакомые, без них не знаю, чтоб и делал. В итоге я смог погасить все долги (и очень кстати, потому что начала капать пеня, и немаленькая) еще до заключения договора с компанией – в день обращения мне в «Демеевский» выдали аванс от полной суммы. В общем, пока есть такие организации – не все потеряно. Теперь я нашел работу, сплю спокойно, потому что долги уменьшаются. Большое спасибо.</p>
                <div class="review-author"><img src="img/review-author-3.png" alt=""></div>
                <div class="review-name">Владислав Переверзев</div>
                <div class="review-occupation">28 лет, Киев</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="weoffer">
      <div class="container-fluid">
        <div class="weoffer-title">На тех же условиях</div>
        <div class="weoffer-subtitle">мы предлагаем</div>
        <div class="weoffer-down"> <img src="img/credits-down.png" alt=""></div>
        <div class="man2"><img src="img/woman2.png" alt=""></div>
        <div class="table-wrap">
          <table class="weoffer-table">
            <tr>
              <td>
                <div class="ico"><img src="img/weoffer1.png" alt=""></div><span>Кредит под залог квартиры </span>
              </td>
              <td>
                <div class="ico"><img src="img/weoffer2.png" alt=""></div><span>Кредит под залог коммерческой недвижимости</span>
              </td>
              <td>
                <div class="ico"><img src="img/weoffer3.png" alt=""></div><span>Кредит под залог дачи</span>
              </td>
              <td>
                <div class="ico"><img src="img/weoffer4.png" alt=""></div><span>Кредит под залог комнаты</span>
              </td>
              <td>
                <div class="ico"><img src="img/weoffer5.png" alt=""></div><span>Рефинансирование под залог</span>
              </td>
            </tr>
            <tr>
              <td>
                <div class="ico"><img src="img/weoffer6.png" alt=""></div><span>Кредит под залог доли квартиры</span>
              </td>
              <td>
                <div class="ico"><img src="img/weoffer7.png" alt=""></div><span>Кредит под залог частного дома</span>
              </td>
              <td>
                <div class="ico"><img src="img/weoffer8.png" alt=""></div><span>Кредит под залог коттеджа</span>
              </td>
              <td>
                <div class="ico"><img src="img/weoffer9.png" alt=""></div><span>Срочный выкуп недвижимости</span>
              </td>
              <td>
                <div class="ico"><img src="img/weoffer10.png" alt=""></div><span>Помощь в одобрении кредитов</span>
              </td>
            </tr>
          </table>
        </div>
        <ul class="weoffer-hidden">
          <li>Кредит под залог квартиры </li>
          <li>Кредит под залог коммерческой недвижимости</li>
          <li>Кредит под залог дачи</li>
          <li>Кредит под залог комнаты</li>
          <li>Рефинансирование под залог</li>
          <li>Кредит под залог доли квартиры</li>
          <li>Кредит под залог частного дома</li>
          <li>Кредит под залог коттеджа</li>
          <li>Срочный выкуп недвижимости</li>
          <li>Помощь в одобрении кредитов</li>
        </ul>
      </div>
    </div>
    <div class="onecall">
      <div class="container-fluid">
        <div class="onecall-inner"><img src="img/phone3.png" alt="">
          <div class="onecall-title"><b>Всего один звонок</b><br>и в течение часа вы уже сможете забрать аванс<br>или получить полную сумму кредита уже сегодня!</div>
          <div class="row onecall-row">
            <div class="col-md-7">
              <div class="onecall-phone"><span class="phonelink">+38(067)444-0595 </span></div>
              <div class="onecall-work">Работаем по всему Киеву и Киевской области</div>
            </div>
            <div class="col-md-5">
              <button class="get-call onecall-getcall">Заказать звонок</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="contacts" class="contacts">
      <div class="container-fluid">
        <div class="contacts-inner">
          <div class="contacts-inner-2">
            <div class="contacts-title">Контакты</div>
            <div class="contacts-down"><img src="img/contacts-down.png" alt=""></div>
            <div class="contacts-item"><img src="img/ico-contacts-1.png" alt="">
              <p>  Киев, ст.м.Демеевская, <br> Проспект 40-Летия Октября, 17 </p>
            </div>
            <div class="contacts-item"><img src="img/ico-contacts-2.png" alt="">
              <p><span class="phonelink">+38(067)444-0595 <br> +38(099)329-3314</span></p>
            </div>
            <div class="contacts-item"><img src="img/ico-contacts-3.png" alt="">
              <p><a href="mailto:boguslav.invest@gmail.com">boguslav.invest@gmail.com</a></p>
            </div>
          </div>
        </div>
      </div>
      
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2543.098782978598!2d30.516363715942784!3d50.401996598735856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4cf359283c30d%3A0xa182c14553b240bb!2z0L_RgNC-0YHQvy4gNDAt0LvQtdGC0LjRjyDQntC60YLRj9Cx0YDRjywgMTcsINCa0LjRl9CyLCDQo9C60YDQsNC40L3QsCwgMDIwMDA!5e0!3m2!1sru!2s!4v1555010599451!5m2!1sru!2s" width="100%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
         
          </div>
    <footer id="footer" class="footer">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12 col">
           
            <div id="uslk" class="logo-footer"><img src="img/logo_footer.png" alt=""></div>
             <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Кредитный центр «ДЕМЕЕВСКИЙ»,&nbsp; &nbsp; &nbsp;<br> Адрес: Киев, Проспект 40-Летия Октября, 17&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br><br>Персональные данные пользователей не собираются и не хранятся.&nbsp;Информация на сайте не является публичной офертой и носит информационно-справочный характер.&nbsp;Услуги по выдаче займов и кредитов оказываются организациями, имеющими на это соответствующие лицензии, разрешения, аккредитации, либо включенными в соответствующие реестры.<br></p>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12 col">
            <p><strong>Условия:</strong></p><br>
<p>-СУММА до 500 000 USD;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>-ГОДОВАЯ СТАВКА 18 %;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -СРОК От 3 до 60 месяцев;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ПРИМЕР РАСЧЕТА: При сумме кредита 500$, ежемесячная выплата процентов будет всего 10$&nbsp; без скрытых комиссий и ежеквартальных перерасчётов процента. Итого выплата за год всего: 500$ (тело кредита) + 120$ (процент за пользование кредитом) итого 620$ за год.&nbsp;</p><br>
            <p><strong>Требования к заемщику:</strong></p><br>
            <p>-Возраст от 18 до 80 лет;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -Любая кредитная история; -Недвижимость в собственности.</p><br>
            <p>без штрафов за досрочное погашение кредита</p>

          </div>
          <div class="col-md-3 col-sm-6 col-xs-12 col">
            <p>Работаем 24 часа в день!<br> 7 дней в неделю!</p><br>
            <p><strong>Последствия невыплаты заёмных средств:</strong></p><br>
            <p>В случае невозвращения в условленный срок суммы кредита или суммы процентов за 
            пользование заёмными средствами кредитор вынужден начислить штраф за просрочку платежа. 
            Большинство кредиторов идут на уступки и дают 3 дополнительных рабочих дня для оплаты. 
            Они предусмотрены на случай, к примеру, если банковский перевод занял больше времени, 
            чем обычно.&nbsp;</p><br>
           

          </div>
          <div class="col-md-3 col-sm-6 col-xs-12 col">
            <div class="contacts-footer"><b><span class="phonelink">+38(067)444-0595 <br> +38(099)329-3314</span></b>
            <a href="index.html#" class="get-call">ЗАКАЗАТЬ ЗВОНОК</a><br><span>По вопросам сотрудничества:</span><a href="mailto:boguslav.invest@gmail.com">boguslav.invest@gmail.com</a><br><br><br>
               <p>При несоблюдении Вами условий по погашению кредита, данные о Вас могут быть 
            переданы в реестр должников. О всех приближающихся сроках платежа кредитор МОЖЕТ информирОВАТЬ Вас по СМС или электронной почте. Рекомендуем Вам вносить платеж 
            в день получения данных напоминаний. Погашая задолженность в срок, Вы формируете 
            хорошую кредитную историю, что повышает Ваши шансы в дальнейшем получить кредит 
            на более выгодных условиях.</p>

            </div>
          </div>
        </div>
      </div>
      <span style=" display: block ; text-align: center;" >Copyright 2020 @All Rights Reserved</span>
    </footer>

   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/rangeslider.min.js"></script>
    <script src="js/main.js"></script>

<link rel="stylesheet" href="https://cdn.envybox.io/widget/cbk.css">
    <script type="text/javascript" src="https://cdn.envybox.io/widget/cbk.js?wcb_code=43157471bc64bd10a52dd528999aae42" charset="UTF-8" async ></script>

<!-- Global site tag (gtag.js) - Google Ads: 762012802 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-762012802"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-762012802');
</script>

<!-- Event snippet for Регистрация1 conversion page
In your html page, add the snippet and call gtag_report_conversion when someone clicks on the chosen link or button. -->
<script>
function gtag_report_conversion(url) {
  var callback = function () {
    if (typeof(url) != 'undefined') {
      window.location = url;
    }
  };
  gtag('event', 'conversion', {
      'send_to': 'AW-762012802/Z20DCIf5hpoBEILJresC',
      'event_callback': callback
  });
  return false;
}
</script>

<!--
<script type="text/javascript">
document.write("<a style="display: none ; " href='//www.liveinternet.ru/click' "+
"target=_blank><img style="display: none ; " src='//counter.yadro.ru/hit?t52.6;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: �������� ����� ���������� �"+
" ����������� �� 24 ����' "+
"border='0' width='0' height='0'><\/a>")
</script>
-->

<!-- Yandex.Metrika counter -->
 <script type="text/javascript">
var yaParams = {ip_adress: "<? echo $_SERVER['REMOTE_ADDR'];?>"};
//��������� �������� ip_adress � ���������� � ���� IP ����������
</script> 
 
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter30760493 = new Ya.Metrika({id:30760493, params:window.yaParams,
//�������� ���� �������� ��������� params
                    webvisor:true,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true});
        } catch(e) { }
    });
    var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = "text/javascript";
    s.async = true;
    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";
    if (w.opera == "[object Opera]") {
        d.addEventListener("DOMContentLoaded", f, false);
    } else { f(); }
})(document, window, "yandex_metrika_callbacks");
</script>
   <noscript><div><img src="//mc.yandex.ru/watch/30760493" style="position:absolute; left:-9999px;" alt=""/></div></noscript>
<!-- /Yandex.Metrika counter -->


  </body>
</html>
