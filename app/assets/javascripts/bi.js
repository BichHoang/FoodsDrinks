$(document).ready(function() {
    $('.icon').click(function(){
        $('.search').toggleClass('active');
    });
    $('#navigations').localScroll({
        duration: 1000
    });
    $('.sliderwrapper .slider').glide({
    autoplay: 7000,
    animationDuration: 3000,
    arrows: true,

    });
    $('.bestdisheswrapper .slider').glide({
        autoplay: false,
        animationDuration: 700,
        arrows: true,
        navigation: false,

    });
    
    var h = window.innerHeight;
    console.log(h);
    var s = $("#sectionContent").height();
    if((h-160) > s){
        $("#sectionContent").height(h-150);
    }
    console.log(s);
});