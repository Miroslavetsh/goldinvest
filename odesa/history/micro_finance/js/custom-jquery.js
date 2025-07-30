jQuery(function($) {
counter();
cusers();

function counter() {
var dt=new Date();
var hr=dt.getHours();
var mn=dt.getMinutes();
var tmn=hr*60+mn;
var init=parseInt($(".digits").attr("data-init"));
var step=parseInt($(".digits").attr("data-step"));
var interval=parseInt($(".digits").attr("data-int"));
var dig=0;
var add=step*(tmn/30);
dig=Math.round(init+add);
$(".digits").text(dig);
$(".digits").html(function(i,html) {
return html.replace(/(\d)/g,'<span>$1</span>');
});
}
function cusers() {
$(".amount").each(function() {
var dt=new Date();
var hr=dt.getHours();
var mn=dt.getMinutes();
var beg=parseInt($(this).attr("data-days"));
beg=beg*12*60;
var tmn=beg+hr*60+mn;
var init=parseInt($(this).attr("data-init"));
var step=parseInt($(this).attr("data-step"));
var interval=parseInt($(this).attr("data-int"));
var dig=0;
var add=step*(tmn/interval);
dig=Math.round(init+add);
$(this).text(dig);
$(this).html(function(i,html) {
return html.replace(/(\d)/g,'<span>$1</span>');
});
})
}
});