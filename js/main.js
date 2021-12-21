/* -------------------------------------
        CUSTOM FUNCTION WRITE HERE
-------------------------------------- */

jQuery(document).on('ready', function () {
    "use strict";
    //
    $(".typeahead").autocomplete({
        source: function (req, res) {
            $.ajax({
                type: "POST",
                url: "Search.asmx/GetListProduct",
                data: "{'keyword':'" + req.term + "'}",
                contentType: "application/json",
                dataType: "json",
                success: function (data) {
                    res($.map(data.d, function (item) {
                        return {
                            Title: item.Title,
                            Avatar: item.Avatar,
                            Price: item.Price
                        }
                    }))
                }
                , error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        },
        focus: function (event, ui) {
            // this is for when focus of autocomplete item 
            $(".typeahead").val(ui.item.Title);
            return false;
        },
        select: function (event, ui) {
            // this is for when select autocomplete item
            $(".typeahead").val(ui.item.Title);
            return false;
        }
    }).data('ui-autocomplete')._renderItem = function (ul, item) {
        return $('<li  class="header__search-history-item">')
            .append(`
                        <img class="header__search-history-item-img" src="${item.Avatar}" />
                        <div class="header__search-history-item-content">
                            <a class="header__search-history-item-title" href="#">
                                ${item.Title}
                            </a>
                            <span class="header__search-history-item-price"> ${item.Price}</span>
                        </div>`).appendTo(ul);
    }

    jQuery('.tg-themetabnav > li > a').hover(function () {
        jQuery(this).tab('show');
    });
    /*--------------------------------------
            SCROLL TO TOP					
    --------------------------------------*/
    var _tg_btnscrolltop = jQuery("#tg-btnbacktotop");
    _tg_btnscrolltop.on('click', function () {
        var _scrollUp = jQuery('html, body');
        _scrollUp.animate({ scrollTop: 0 }, 'slow');
    })
    /* -------------------------------------
            COLLAPSE MENU SMALL DEVICES
    -------------------------------------- */
    function collapseMenu() {
        jQuery('.menu-item-has-children, .menu-item-has-mega-menu').prepend('<span class="tg-dropdowarrow"><i class="fa  fa-angle-right"></i></span>');
        jQuery('.menu-item-has-children span, .menu-item-has-mega-menu span').on('click', function () {
            jQuery(this).next().next().slideToggle(300);
            jQuery(this).parent('.menu-item-has-children, .menu-item-has-mega-menu').toggleClass('tg-open');
        });
    }
    collapseMenu();
    /*--------------------------------------
            HOME SLIDER						
    --------------------------------------*/
    var _tg_homeslider = jQuery('#tg-homeslider');
    _tg_homeslider.owlCarousel({
        items: 1,
        nav: true,
        loop: true,
        dots: true,
        autoplay: false,
        navText: [
            '<i class="icon-chevron-left"></i>',
            '<i class="icon-chevron-right"></i>'
        ],
        navClass: [
            'owl-prev tg-btnround tg-btnprev',
            'owl-next tg-btnround tg-btnnext'
        ],
    });
    /*--------------------------------------
            BEST BOOK SLIDER				
    --------------------------------------*/
    var _tg_bestsellingbooksslider = jQuery('#tg-bestsellingbooksslider');
    _tg_bestsellingbooksslider.owlCarousel({
        nav: true,
        loop: true,
        margin: 30,
        dots: true,
        navText: [
            '<i class="icon-chevron-left"></i>',
            '<i class="icon-chevron-right"></i>'
        ],
        navClass: [
            'owl-prev tg-btnround tg-btnprev',
            'owl-next tg-btnround tg-btnnext'
        ],
        responsive: {
            0: { items: 1 },
            480: { items: 2 },
            600: { items: 3 },
            1000: { items: 5 },
            1200: { items: 5 },
        }
    });
    /*--------------------------------------
            RELATED PRODUCT SLIDER			
    --------------------------------------*/
    var _tg_relatedproductslider = jQuery('#tg-relatedproductslider');
    _tg_relatedproductslider.owlCarousel({
        nav: true,
        loop: true,
        margin: 30,
        dots: true,
        navText: [
            '<i class="icon-chevron-left"></i>',
            '<i class="icon-chevron-right"></i>'
        ],
        navClass: [
            'owl-prev tg-btnround tg-btnprev',
            'owl-next tg-btnround tg-btnnext'
        ],
        responsive: {
            0: { items: 1 },
            568: { items: 2 },
            768: { items: 2 },
            992: { items: 3 },
            1200: { items: 4 },
        }
    });
    /* -------------------------------------
            COLLECTION COUNTER
    -------------------------------------- */
    try {
        var _tg_collectioncounters = jQuery('#tg-collectioncounters');
        _tg_collectioncounters.appear(function () {

            var _tg_collectioncounter = jQuery('.tg-collectioncounter h3');
            _tg_collectioncounter.countTo({
                formatter: function (value, options) {
                    return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
                }
            });
        });
    } catch (err) { }
    /*--------------------------------------
            PICKED BY AUTHOR SLIDER			
    --------------------------------------*/
    var _tg_pickedbyauthorslider = jQuery('#tg-pickedbyauthorslider');
    _tg_pickedbyauthorslider.owlCarousel({
        nav: true,
        loop: true,
        dots: true,
        navText: [
            '<i class="icon-chevron-left"></i>',
            '<i class="icon-chevron-right"></i>'
        ],
        navClass: [
            'owl-prev tg-btnround tg-btnprev',
            'owl-next tg-btnround tg-btnnext'
        ],
        responsive: {
            0: { items: 1 },
            768: { items: 2 },
            992: { items: 3 },
        }
    });
    /*--------------------------------------
            TESTIMONIALS SLIDER				
    --------------------------------------*/
    var _tg_testimonialsslider = jQuery('#tg-testimonialsslider');
    _tg_testimonialsslider.owlCarousel({
        items: 1,
        nav: true,
        loop: true,
        dots: true,
        navText: [
            '<i class="icon-chevron-left"></i>',
            '<i class="icon-chevron-right"></i>'
        ],
        navClass: [
            'owl-prev tg-btnround tg-btnprev',
            'owl-next tg-btnround tg-btnnext'
        ],
    });
    /*--------------------------------------
            PICKED BY AUTHOR SLIDER			
    --------------------------------------*/
    var _tg_authorsslider = jQuery('#tg-authorsslider');
    _tg_authorsslider.owlCarousel({
        nav: true,
        loop: true,
        dots: true,
        navText: [
            '<i class="icon-chevron-left"></i>',
            '<i class="icon-chevron-right"></i>'
        ],
        navClass: [
            'owl-prev tg-btnround tg-btnprev',
            'owl-next tg-btnround tg-btnnext'
        ],
        responsive: {
            0: { items: 1 },
            600: { items: 4 },
            1000: { items: 5 },
            1200: { items: 5 },
        }
    });
    /*--------------------------------------
            TEAMS SLIDER					
    --------------------------------------*/
    var _tg_teamsslider = jQuery('#tg-teamsslider');
    _tg_teamsslider.owlCarousel({
        nav: true,
        loop: true,
        dots: true,
        navText: [
            '<i class="icon-chevron-left"></i>',
            '<i class="icon-chevron-right"></i>'
        ],
        navClass: [
            'owl-prev tg-btnround tg-btnprev',
            'owl-next tg-btnround tg-btnnext'
        ],
        responsive: {
            0: { items: 1 },
            600: { items: 3 },
            1000: { items: 4 },
        }
    });
    /*--------------------------------------
            NEWS AND ARTICLE SLIDER			
    --------------------------------------*/
    var _tg_postslider = jQuery('#tg-postslider');
    _tg_postslider.owlCarousel({
        nav: true,
        loop: true,
        dots: true,
        navText: [
            '<i class="icon-chevron-left"></i>',
            '<i class="icon-chevron-right"></i>'
        ],
        navClass: [
            'owl-prev tg-btnround tg-btnprev',
            'owl-next tg-btnround tg-btnnext'
        ],
        responsive: {
            0: { items: 1 },
            600: { items: 2 },
            992: { items: 3 },
            1200: { items: 4 },
        }
    });
    /*--------------------------------------
            HOME SLIDER						
    --------------------------------------*/
    var _tg_successslider = jQuery('#tg-successslider');
    _tg_successslider.owlCarousel({
        items: 1,
        nav: true,
        loop: true,
        dots: true,
        autoplay: false,
        navText: [
            '<i class="icon-chevron-left"></i>',
            '<i class="icon-chevron-right"></i>'
        ],
        navClass: [
            'owl-prev tg-btnround tg-btnprev',
            'owl-next tg-btnround tg-btnnext'
        ],
    });
    /* -------------------------------------
            Google Map
    -------------------------------------- */
    jQuery("#tg-locationmap").gmap3({
        marker: {
            address: "1600 Elizabeth St, Melbourne, Victoria, Australia",
            options: {
                title: "Books Library",
            }
        },
        map: {
            options: {
                zoom: 16,
                scrollwheel: false,
                disableDoubleClickZoom: true,
            }
        }
    });
    /*------------------------------------------
            PRODUCT INCREASE
    ------------------------------------------*/
    jQuery('em.minus').on('click', function () {
        jQuery('#quantity1').val(parseInt(jQuery('#quantity1').val(), 10) - 1);
    });
    jQuery('em.plus').on('click', function () {
        jQuery('#quantity1').val(parseInt(jQuery('#quantity1').val(), 10) + 1);
    });

    $(".input_Keyword").keyup(function () {
        var searchField = $(".input_Keyword").val();
        var exp = RegExp(searchField, "i");
        console.log("keyword = ", searchField)
        //$.ajax({
        //    type: "GET",
        //    contentType: "application/json; charset=utf-8",
        //    url: "",
        //    data: "{'empName':'" + document.getElementById('txtEmpName').value + "'}",
        //    dataType: "json",
        //    success: function (data) {
        //        var data
        //        response(data.d);
        //    },
        //    error: function (result) {
        //        alert("No Match");
        //    }
        //});
    })

});


function Toast() {
    jQuery.toast({
        text: "Đã thêm vào giỏ hàng", // Text that is to be shown in the toast
        heading: "Thông báo", // Optional heading to be shown on the toast
        icon: "success", // Type of toast icon
        showHideTransition: "fade", // fade, slide or plain
        allowToastClose: true, // Boolean value true or false
        hideAfter: 3000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
        stack: 10, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
        position: "top-right", // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
        textAlign: "left", // Text alignment i.e. left, right or center
        loader: true, // Whether to show loader or not. True by default
        loaderBg: "#9EC600", // Background color of the toast loader
        beforeShow: function () { }, // will be triggered before the toast is shown
        afterShown: function () { }, // will be triggered after the toat has been shown
        beforeHide: function () { }, // will be triggered before the toast gets hidden
        afterHidden: function () { }, // will be triggered after the toast has been hidden
    });
}

let header = document.querySelector('.tg-navigationarea');

window.onscroll = () => {
    if (window.scrollY > 150) {
        header.classList.add('active');
    }
    else {
        header.classList.remove('active');
    }
}


//Shopping-cart
//$(document).ready(function () {

//	/* Set rates + misc */
//	var taxRate = 0.20;
//	var shippingRate = 15000;
//	var fadeTime = 300;


//	/* Assign actions */
//	$('.product-quantity input').change(function () {
//		updateQuantity(this);
//	});

//	$('.product-removal button').click(function () {
//		removeItem(this);
//	});


//	/* Recalculate cart */
//	function recalculateCart() {
//		var subtotal = 0;

//		/* Sum up row totals */
//		$('.product').each(function () {
//			subtotal += parseFloat($(this).children('.product-line-price').text());
//		});

//		/* Calculate totals */
//		var tax = subtotal * taxRate;
//		var shipping = (subtotal > 0 ? shippingRate : 0);
//		var total = subtotal - tax + shipping;

//		/* Update totals display */
//		$('.totals-value').fadeOut(fadeTime, function () {
//			$('#cart-subtotal').html(subtotal.toFixed(3));
//			$('#cart-tax').html(tax.toFixed(3));
//			$('#cart-shipping').html(shipping.toFixed(3));
//			$('#cart-total').html(total.toFixed(3));
//			if (total == 0) {
//				$('.checkout').fadeOut(fadeTime);
//			} else {
//				$('.checkout').fadeIn(fadeTime);
//			}
//			$('.totals-value').fadeIn(fadeTime);
//		});
//	}


//	/* Update quantity */
//	function updateQuantity(quantityInput) {
//		/* Calculate line price */
//		var productRow = $(quantityInput).parent().parent();
//		var price = parseFloat(productRow.children('.product-pricese').text());
//		var quantity = $(quantityInput).val();
//		var linePrice = price * quantity;

//		/* Update line price display and recalc cart totals */
//		productRow.children('.product-line-price').each(function () {
//			$(this).fadeOut(fadeTime, function () {
//				$(this).text(linePrice.toFixed(3));
//				recalculateCart();
//				$(this).fadeIn(fadeTime);
//			});
//		});
//	}


//	/* Remove item from cart */
//	function removeItem(removeButton) {
//		/* Remove row from DOM and recalc cart total */
//		var productRow = $(removeButton).parent().parent();
//		productRow.slideUp(fadeTime, function () {
//			productRow.remove();
//			recalculateCart();
//		});
//	}

//});
