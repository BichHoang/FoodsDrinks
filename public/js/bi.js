$(document).ready(function() {
    $('.icon').click(function(){
        $('.search').toggleClass('active');
    });
    $('#navigations').localScroll({
        duration: 1000
    });
});
new WOW().init();

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
