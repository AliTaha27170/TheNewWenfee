$(function () {



    $('.banner_slider').slick({
        dots: true,
        arrows: true,
        infinite: true,
        // speed: 300,
        slidesToShow: 1,
        fade: true,
        adaptiveHeight: true,
        autoplay: true,
        autoplaySpeed: 2000,
        pauseOnHover: false
    });

    $(".albums-home-slider").slick({
        dots: true,
        slidesToShow: 2,
        slidesToScroll: 2
    });

    $(".products-slider").slick({
        dots: true,
        arrows : true ,
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4000,
        pauseOnHover: false,
        responsive: [
            {
            breakpoint: 1330,
            settings: {
            slidesToShow : 2 ,
            slidesToScroll : 2 ,
            dots : true ,
            arrows : true ,
            autoplay : true ,
            autoplayspeed : 2000 ,
            infinite : true ,
            }
            },
            {
            breakpoint: 600,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
            },
        ]
    });

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav',
        autoplay: false
    });

    $('.slider-nav').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        vertical: true,
        centerMode: true,
        focusOnSelect: true,
        responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    infinite: false,
                    dots: false
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    infinite: false,
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    infinite: false,
                }
            }

            
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]

    });
    

    $("body").on("click", ".minus-btn", function () {
        var input = $(this).closest(".counter").find("input");
        if (parseInt(input.val()) <= 1) input.val("1");
        else {
            input.val(parseInt(input.val()) - 1)
        }
    })

    $("body").on("click", ".plus-btn", function () {
        var input = $(this).closest(".counter").find("input");
        input.val(parseInt(input.val()) + 1)
    })

    $("body").on("click", "#minus-btn", function () {
        var input = $(this).closest(".counter").find("input");
        const id = $(this).closest(".counter").find("input").attr('data-id');

        if (parseInt(input.val()) <= 1) input.val("1");
        else {
            input.val(parseInt(input.val()) - 1)
        }
        axios.patch(`/cart/update/` + id, {
                quantity: input.val(),

            })
            .then(function (response) {

                console.log(response);
                location.reload();
            })

            .catch(function (error) {
                console.log(error.response); //it is a good idea to use error.response 
                location.reload();
            });
    })

    $("body").on("click", "#plus-btn", function () {
        var input = $(this).closest(".counter").find("input");
        const id = $(this).closest(".counter").find("input").attr('data-id');
        input.val(parseInt(input.val()) + 1)
        axios.patch(`/cart/update/` + id, {
                quantity: input.val(),

            })
            .then(function (response) {

                console.log(response);
                location.reload();
            })

            .catch(function (error) {
                console.log(error.response); //it is a good idea to use error.response 
                location.reload();
            });

    })

    $("body").on("click", ".nav .search", function () {
        $(".search-box").addClass("shown");
    })

    $("body").on("click", ".nav .search-box .close", function () {
        $(".search-box").removeClass("shown");
    })

    // $('.my-products-li').mouseenter(function () {
    //     $('.coverer').fadeIn(200);
    // });

    // $('.my-products-li').mouseleave(function () {
    //     $('.coverer').fadeOut(200);
    // });

    var setting = {
        roots: document.querySelector('.my-js-slider'),
        type: 'range',
        step: 1,
        rangeValue: {
            minValue: $("#minPrice").val(),
            maxValue: $("#maxPrice").val()
        }
    }
    var slider = wRunner(setting);

    slider.onValueUpdate(function (values) {
        $("#maxPrice").val(values.maxValue).trigger("change")
        $("#minPrice").val(values.minValue).trigger("change")
    })

    $("body").on("change", "#search-form input, #search-form select", function () {
        let json = getFormData($("#search-form"));

        //// JSON
        //console.log(json);
        $('#search-form').submit();
        ////
    })

})

function getFormData($form) {

    var unindexed_array = $form.serializeArray();
    var indexed_array = {};

    $.map(unindexed_array, function (n, i) {
        indexed_array[n['name']] = n['value'];
    });

    var chks = $form.find("input[type=checkbox]");
    $.each(chks, function (i, item) {
        if ($(item).prop('checked')) {
            indexed_array[$(item).prop('name')] = true
        } else {
            indexed_array[$(item).prop('name')] = false
        }
    })

    return indexed_array;
}

$(function (){
    $("body").removeClass("is-loading");
    setTimeout(() => {
        $(".loading-box").slideToggle(600, function(){
            $(this).remove();
        });
    }, 300);
})
/*Account Settings */
    //full name
    $('#Edit_Full_Name').click(function(){
        $("#Full_Name").select();
        });
        //address
        $('#Edit_Address').click(function(){
          $("#Address").select();
        });
        //number
        $('#Edit_Number').click(function(){
          $("#Number").select();
        });
        //email
        $('#Edit_Email').click(function(){
          $("#Email").select();
        });
        /* End Of Account Settings */
        /* Brands */
        var btn = $('#button');

        $(window).scroll(function() {
          if ($(window).scrollTop() > 300) {
            btn.addClass('show');
          } else {
            btn.removeClass('show');
          }
        });
        
        btn.on('click', function(e) {
          e.preventDefault();
          $('html, body').animate({scrollTop:0}, '300');
        });
        

        /*Alert*/
        $('.add-cart-btn').click(function(){
            $('.alert').addClass("show");
            $('.alert').removeClass("hide");
            $('.alert').addClass("showAlert");
            setTimeout(function(){
              $('.alert').removeClass("show");
              $('.alert').addClass("hide");
            },2000);
          });
          $('.close-btn').click(function(){
            $('.alert').removeClass("show");
            $('.alert').addClass("hide");
          });

        /*End Of Alert*/
        
        /* End Of Brands */