function initMapping() {
    $('header .navbar .navbar-brand').mapping({
        mobileWrapper: 'header  .navbar .main-nav',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .navbar',
        desktopMethod: 'appento',
        breakpoint: 1199.98
    });
    $('header .navbar .list-icons').mapping({
        mobileWrapper: 'header  .navbar .main-nav',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .navbar',
        desktopMethod: 'appento',
        breakpoint: 1199.98
    });
    $('header .navbar .navbar-nav .nav-item').mapping({
        mobileWrapper: 'header  .navbar .main-nav .nav-mobile',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .navbar .navbar-nav',
        desktopMethod: 'appento',
        breakpoint: 1199.98
    })
}
const toggleMenuMobile = () => {
    $('.kv-toggle').on('click', function () {
        $(this).toggleClass('active');
        $('.nav-mobile').toggleClass('active')
        $('#overlay').toggleClass('active')
    });
    $('#overlay').on('click', function () {
        $(this).removeClass('active');
        $('.kv-toggle').removeClass('active')
        $('.nav-mobile').removeClass('active')

    });
    $('.search-icon').on('click', function () {
        $('#search-box').slideToggle()
    })
    $('main').on('click', function () {
        $('#search-box').slideUp()
    })
}

const ListSlide = () => {
    var myswiper = new Swiper('.kv-banner .slide-content', {
        loop: true,
        speed: 1000,
        watchSlidesProgress: true,
        mousewheelControl: true,
        keyboardControl: true,
        effect: 'fade',
        // autoplay: {
        //     delay: 3500,
        //     disableOnInteraction: false
        // },
        pagination: {
            el: '.swiper-pagination',
            type: 'bullets',
            clickable: true,
        },
    });
    $(".single-swiper .swiper-container").each(function (index, element) {
        var $this = $(this);
        $this.addClass("instance-" + index);
        $this.parent().find(".swiper-button-prev").addClass("swiper-button-prev-" + index);
        $this.parent().find(".swiper-button-next").addClass("swiper-button-next-" + index);
        var swiper = new Swiper(".instance-" + index, {
            speed: 750,
            observer: true,
            observeParents: true,
            lazy: true,
            breakpointsInverse: true,
            spaceBetween: 30,
            slidesPerView: 3,
            loop: true,
            navigation: {
                nextEl: ".swiper-button-next-" + index,
                prevEl: ".swiper-button-prev-" + index
            },
            breakpoints: {
                1366: {
                    slidesPerView: 3,
                    spaceBetween: 20,
                },
                767: {
                    slidesPerView: 3,
                    spaceBetween: 10,
                },
                575: {
                    slidesPerView: 2,
                    spaceBetween: 10,
                },
                375: {
                    slidesPerView: 2,
                    spaceBetween: 10,
                },
            },
        });
    });
    var swiper = new Swiper(".swiper-product-other .swiper-container", {
        speed: 750,
        observer: true,
        observeParents: true,
        lazy: true,
        breakpointsInverse: true,
        spaceBetween: 30,
        slidesPerView: 4,
        loop: true,
        navigation: {
            nextEl: ".swiper-product-other .swiper-button-next",
            prevEl: ".swiper-product-other .swiper-button-prev"
        },
        breakpoints: {
            1366: {
                slidesPerView: 4,
                spaceBetween: 20,
            },
            1280: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
            767: {
                slidesPerView: 3,
                spaceBetween: 10,
            },
            575: {
                slidesPerView: 2,
                spaceBetween: 10,
            },
            375: {
                slidesPerView: 1,
                spaceBetween: 10,
            },
        },
    });
    var galleryThumbs = new Swiper('.swiper-product-thumb .gallery-thumbs', {
        el: '.swiper-container-thumbs',
        slidesPerView: 4,
        direction: 'vertical',
        spaceBetween: 10,
        loopedSlides: 4,
        loop: true,
        slideToClickedSlide: true,
        breakpoints: {
            1280: {
                slidesPerView: 4,
                spaceBetween: 20,
            },
            575: {
                slidesPerView: 4,
                spaceBetween: 10,
                direction: 'horizontal',
            },
        },
    });
    var galleryTop = new Swiper('.swiper-product-main .gallery-top', {
        loop: true,
        thumbs: {
            swiper: galleryThumbs,
        },
    });
}
const checkLayoutBanner = () => {
    const pagesBanner = $("#page-banner");
    const heightHeader = $("header").outerHeight();
    const mainBanner = $("#home-banner");
    if (mainBanner.length >= 1) {
        $('main').css('padding-top', 0);
    } else if (pagesBanner.length >= 1) {
        $('main').css('padding-top', heightHeader);
    } else {
        $('main').css('padding-top', heightHeader);
    }
    if ($('.full-page').length >= 1 && $(window).width() < 1280.98) {
        $('footer').css('display', 'none');
    }
};

function DataBG() {
    $('[data-bg]').each(function () {
        $(this).addClass('data-bg lazyload')
    })
}

function setBackground() {
    if ($(window).width() > 1199.98) {
        $("[setBackground]").each(function () {
            var background = $(this).attr("setBackground");
            $(this).css({
                "background-image": "url(" + background + ")",
                "background-size": "cover",
                "background-position": "center",
                "background-repeat": "no-repeat",
            });
        });
        $("[setBackgroundRepeat]").each(function () {
            var background = $(this).attr("setBackgroundRepeat");
            $(this).css({
                "background-image": "url(" + background + ")",
                "background-repeat": "no-repeat",
            });
        });
    }
}

function tabs() {
    $('.tabs > li').on('click', function () {
        var $panel = $(this).closest('.tab-panels');
        $panel.find('li.active').removeClass('active');
        $(this).addClass('active');
        var panelToShow = $(this).attr('rel');
        $panel.find('.panel.active').fadeOut(300, showNextPanel);

        function showNextPanel() {
            $(this).removeClass('active');
            $('#' + panelToShow).fadeIn(300, function () {
                $(this).addClass('active').fadeIn(300);
            });
        };
    });
    if ($(window).width() < 992 && '.category-nav'.length >= 1) {
        $('.category-nav').on('click', function () {
            $(this).find('.material-icons').toggleClass('active');
            $(this).siblings('.tabs, .filter-content').slideToggle('slow')
        })
    }
}

function phantrang() {
    $('.modulepager').find('.pagination').find('li>a.NextPage, li>a.LastPage, li>a.BackPage, li>a.FirstPage').parent().hide()
}

function changePlaceholder() {
    $('.subscribe .form-group input ').attr('placeholder', 'Nhập email...');
    $('.frm-captcha .frm-captcha-input input').attr('placeholder', 'Nhập mã Capcha');
}

function breadCrumb() {
    $('.global-breadcrumb').appendTo('#page-banner .banner__pages .content .container');
}

function category() {
    if ($(window).width() < 575.98 && '.zone-nav'.length >= 1) {
        $('.zone-nav .box-category').on('click', function (x) {
            x.stopPropagation();
            $(x.currentTarget).siblings('ul').slideToggle();
            $('.zone-nav .box-category .material-icons').toggleClass('active')
        });
    }
    if ($(window).width() < 600 && '.project-filter'.length >= 1) {
        $('.project-filter .filter-mobile').on('click', function (a) {
            a.stopPropagation();
            $(a.currentTarget).siblings('.filter-select').slideToggle('slow');
            $(this).find('.material-icons').toggleClass('active')
        });
    }
    if ($(window).width() < 992 && '.categroly'.length >= 1) {
        $('.categroly .box-category').on('click', function (b) {
            b.stopPropagation();
            $(b.currentTarget).siblings('ul').slideToggle('slow');
            $(this).find('.material-icons').toggleClass('active');
        });
        window.addEventListener("scroll", function () {
            $('.about-nav .categroly ul').css('display', 'none');
            $('.about-nav .categroly').find('.material-icons').removeClass('active');
        })
    }
}

function crollToDiv() {
    $('.about-nav .categroly ul li .nav-link').on('click', function (event) {
        $(this).parents('li').addClass('active');
        if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top - 200
            }, 500, function () {
                window.location.hash = hash;
            });
        }
        $('.about-nav .categroly ul li .nav-link').not(this).parent('li').removeClass('active');
        window.addEventListener("scroll", function () {
            var bannerheight = $('#page-banner').outerHeight();
            if (window.pageYOffset > bannerheight) {
                document.querySelector(".about-nav").classList.add("scolled");
            } else {
                document.querySelector(".about-nav").classList.remove("scolled");
            }
        })
    });
}

function crollTop() {
    if ($('.about-nav').length >= 1) {
        window.addEventListener("scroll", function () {
            var bannerheight = $('#page-banner').outerHeight();
            var heightHeader = $('header').outerHeight();
            if (window.pageYOffset > bannerheight) {
                document.querySelector(".about-nav").classList.add("scolled");
                $('.scolled').css('top', heightHeader)
            } else {
                document.querySelector(".about-nav").classList.remove("scolled");
            }
        })
    }
}
const activeHeaderWhenScroll = () => {
    const heightHeader = document.querySelector('header').offsetHeight;
    if ($('.full-page').length == 0) {
        window.addEventListener('scroll', function () {
            if (window.pageYOffset >= heightHeader) {
                document.querySelector('header .navbar-brand').classList.add('active');
            } else {
                document.querySelector('header .navbar-brand').classList.remove('active');
            }
        });
    }

};

function MultiLevelAccordiion() {
    $('.accordion-title .lnr').click(function (e) {
        e.preventDefault();
        var $this = $(this);
        if ($this.parent().next().hasClass('show')) {
            $this.parent().next().removeClass('show');
            $this.parent().next().slideUp(350);
            $this.parents().removeClass('active');
        } else {
            $this.parent().parents().find('.inner').removeClass('show');
            $this.parent().parents().find('.inner').slideUp(350);
            $this.parent().parents().find('.item').removeClass('active');
            $this.parent().next().toggleClass('show');
            $this.parent().next().slideToggle(350);
            $this.parents().addClass('active');
        }
    });
}

function quantityNumber() {
    $(".qty-minus").click(function () {
        let minus = $(this).parents('.input-group').find('input').val();
        console.log('top')
        console.log(minus)
        if (minus > 0) {
            $(this).parents('.input-group').find('input').val(minus - 1);
        } else {
            $(this).parents('.input-group').find('input').val(0);
        }
    });
    $(".qty-plus").on("click", function () {
        let plus = Number($(this).parents('.input-group').find('input').val());
        console.log('bottom')
        console.log(plus)
        $(this).parents('.input-group').find('input').val(plus + 1);
    });
}
function moveForm() {
    $('.contact-right-col .wrap-form .frm-captcha').appendTo('.contact-right-col .contact-form')
    $('.contact-right-col .wrap-form .frm-btnwrap').appendTo('.contact-right-col .contact-form')
}

// if ($(window).width() > 1025) {
// -- -- -- -- -- -- - VARIABLES-- -- -- -- -- -- - //
var ticking = false;
var isFirefox = (/Firefox/i.test(navigator.userAgent));
var isIe = (/MSIE/i.test(navigator.userAgent)) || (/Trident.*rv\:11\./i.test(navigator.userAgent));
var scrollSensitivitySetting = 30; //Increase/decrease this number to change sensitivity to trackpad gestures (up = less sensitive; down = more sensitive) 
var slideDurationSetting = 600; //Amount of time for which slide is "locked"
var currentSlideNumber = 0;
var pageSlide = $(".full-page section");
var totalSlideNumber = pageSlide.length;
// ------------- DETERMINE DELTA/SCROLL DIRECTION ------------- //
function parallaxScroll(evt) {
    let delta = 0
    if (isFirefox) {
        //Set delta for Firefox
        delta = evt.detail * (-120);
    } else if (isIe) {
        //Set delta for IE
        delta = -evt.deltaY;
    } else {
        //Set delta for all other browsers
        delta = evt.wheelDelta;
    }

    if (ticking != true) {
        if (delta <= -scrollSensitivitySetting) {
            //Down scroll
            ticking = true;
            if (currentSlideNumber !== totalSlideNumber - 1) {
                currentSlideNumber++;
                nextItem();
            }
            slideDurationTimeout(slideDurationSetting);
        }
        if (delta >= scrollSensitivitySetting) {
            //Up scroll
            ticking = true;
            if (currentSlideNumber !== 0) {
                currentSlideNumber--;
                previousItem();
            }
            slideDurationTimeout(slideDurationSetting);
        }
    }
}

// ------------- SET TIMEOUT TO TEMPORARILY "LOCK" SLIDES ------------- //
function slideDurationTimeout(slideDuration) {
    setTimeout(function () {
        ticking = false;
    }, slideDuration);
}

// ------------- ADD EVENT LISTENER ------------- //
var mousewheelEvent = isFirefox ? "DOMMouseScroll" : "wheel";
window.addEventListener(mousewheelEvent, _.throttle(parallaxScroll, 60), false);

// ------------- SLIDE MOTION ------------- //
function nextItem() {
    $('section').removeClass('current-page')
    var $previousSlide = pageSlide.eq(currentSlideNumber - 1);
    var $currentSlide = pageSlide.eq(currentSlideNumber);
    console.log(currentSlideNumber)
    $currentSlide.addClass('current-page')
    $previousSlide.removeClass("up-scroll").addClass("down-scroll");
    $('#nav-pagination ul li').removeClass('active')
    $('#nav-pagination ul li:nth-child(' + (currentSlideNumber + 1) + ')').addClass('active');
    if ($('.full-page').length >= 1) {
        $('header .navbar-brand').addClass('active')
    }
    $('.counter').each(function () {
        var $this = $(this),
            countTo = $this.attr('data-count');
        $({
            countNum: $this.text()
        }).animate({
            countNum: countTo
        }, {
            duration: 3000,
            easing: 'linear',
            step: function () {
                $this.text(Math.floor(this.countNum));
            },
            complete: function () {
                $this.text(this.countNum);
                //alert('finished');
            }

        });
    });
}

function previousItem() {
    $('section').removeClass('current-page')
    var $currentSlide = pageSlide.eq(currentSlideNumber);
    // console.log($currentSlide)
    $currentSlide.addClass('current-page')
    $currentSlide.removeClass("down-scroll").addClass("up-scroll");
    $('#nav-pagination ul li').removeClass('active')
    $('#nav-pagination ul li:nth-child(' + (currentSlideNumber + 1) + ')').addClass('active');
    if ($currentSlide.is(':first-child')) {
        $('header .navbar-brand').removeClass('active')
    }
}

function EqualHeightElement(el) {
    let height = 0;
    let thisHeight = 0;
    $(el).each(function () {
        thisHeight = $(this).height();
        if (thisHeight > height) {
            height = thisHeight;
        }
    });
    $(el).height(height)
}

function scrollToTop() {
    $('footer .button-wrapper').on('click', function () {
        currentSlideNumber = 0
        $('section').removeClass('down-scroll')
        $('.home-banner').addClass('current-page')
    })
}

function createPagination() {
    $('main').append("<div id='nav-pagination'><ul></ul></div>")
    var lstSection = $(".full-page section, footer");
    for (let i = 0; i < totalSlideNumber; i++) {
        var spanHtml = "";
        if ($(lstSection[i]).attr("data-title") != undefined) {
            spanHtml = " <span>" + $(lstSection[i]).attr("data-title") + "</span>";
        }
        if (i == 0) {
            $('#nav-pagination ul').append('<li class=\'active\' data-section=\'' + (i + 1) + '\'>' + (i + 1) + spanHtml + '</li>')
        } else {
            $('#nav-pagination ul').append('<li data-section=\'' + (i + 1) + '\'>' + (i + 1) + spanHtml + '</li>')
        }
    }
    $('#nav-pagination ul li').on('click', function () {
        $('#nav-pagination ul li').removeClass('active')
        $(this).addClass('active')
        let e = $(this).attr('data-section') - 1
        $('.full-page section').removeClass('down-scroll up-scroll')
        if (e < currentSlideNumber) {
            currentSlideNumber = e
            $('.full-page section:nth-child(' + (currentSlideNumber + 1) + ')').addClass('up-scroll current-page')
            $('.full-page section').removeClass('down-scroll')
            for (let i = currentSlideNumber; i < totalSlideNumber; i++) {
                $('.full-page section:nth-child(' + (currentSlideNumber + 1) + ')').addClass('up-scroll')
            }
        } else {
            currentSlideNumber = e
            $('.full-page section').removeClass('current-page')
            $('.full-page section:nth-child(' + (currentSlideNumber + 1) + ')').addClass('current-page')
            for (let i = 0; i < currentSlideNumber; i++) {
                $('.full-page section:nth-child(' + (i + 1) + ')').addClass('down-scroll')
            }
        }
    })
}
document.addEventListener('DOMContentLoaded', () => {
    initMapping();
    toggleMenuMobile();
    DataBG();
    setBackground();
    ListSlide();
    checkLayoutBanner();
    tabs();
    phantrang();
    changePlaceholder();
    breadCrumb();
    category();
    scrollToTop()
    createPagination();
    activeHeaderWhenScroll();
    crollToDiv();
    crollTop();
    MultiLevelAccordiion();
    quantityNumber();
    moveForm();
    setTimeout(() => {
        $('section:first-child').addClass('current-page')
    }, 100);
});