
window.onload = function()
{
    var oTop = document.getElementById("to_top");
    var screenh = document.documentElement.clientHeight || document.body.clientHeight;
    oTop.style.right = "0px";
    oTop.style.top = screenh - oTop.offsetHeight + "px";
    window.onscroll = function(){
        var scrolltop = document.documentElement.scrollTop || document.body.scrollTop;
        oTop.style.top = screenh - oTop.offsetHeight + scrolltop +"px";
    }
     oTop.onclick = function(){
        document.documentElement.scrollTop = document.body.scrollTop =0;
    }
}