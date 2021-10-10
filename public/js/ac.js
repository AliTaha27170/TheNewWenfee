var current_item_id;








function setCookie(cname,cvalue,exdays) {
	const d = new Date();
	d.setTime(d.getTime() + (exdays*24*60*60*1000));
	let expires = "expires=" + d.toGMTString();
	document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
  }

  function getCookie(cname) {
	let name = cname + "=";
	let decodedCookie = decodeURIComponent(document.cookie);
	let ca = decodedCookie.split(';');
	for(let i = 0; i < ca.length; i++) {
	  let c = ca[i];
	  while (c.charAt(0) == ' ') {
		c = c.substring(1);
	  }
	  if (c.indexOf(name) == 0) {
		return c.substring(name.length, c.length);
	  }
	}
	return "";
  }





function toggleNavbar() {
    var x = document.getElementById("myTopNav");
    if (x.className === "menu-container topNav") {
        x.className += " responsive";
    } else {
        x.className = "menu-container topNav";
    }
}


function wait(ms){
	var start = new Date().getTime();
	var end = start;
	while(end < start + ms) {
	  end = new Date().getTime();
   }
 }


function refineMoreMenu() {
	if($("#icon").css("display") === "none")
		$("#more").show();
	else
		return;
	var a_ids =["#a1","#a2","#a3","#a4","#a5","#a6","#a7","#a8","#a9","#a10","#a11", "#a12","#a13", "#a14"];
	var b_ids =["#b1","#b2","#b3","#b4","#b5","#b6","#b7","#b8","#b9","#b10","#b11", "#b12","#b13", "#b14"];
	for(var i=0;i<13;i++){
		$(a_ids[i]).removeClass("hidden_btn");
		$(b_ids[i]).addClass("hidden_btn");
	}
	if($("#more").position().top==0)
		$("#more").hide();
	for(var i=13;i>=0;i--){
		var t=$("#more").position().top;
		if(t>1){
			$(b_ids[i]).removeClass("hidden_btn");
			$(a_ids[i]).addClass("hidden_btn");
		}
		else
			break;
	}
}
function show_login_form(){
	$('#login-form input[name="email"]').val('');
	$('#login-form input[name="pass"]').val('');
	$('#login-error').text('');
	document.getElementById('login-form').style.display='block';
}
function show_register_form(){
	$('#register-form input[name="fname"]').val('');
	$('#register-form input[name="lname"]').val('');
	$('#register-form input[name="email"]').val('');
	$('#register-form input[name="psw"]').val('');
	$('#register-form input[name="cpsw"]').val('');
	$('#register-form input[name="phone"]').val('');
	$('#register-form input[name="address"]').val('');
	$('#register-form input[name="agree"]').prop("checked",false);
	$('#login-error').text('');
	document.getElementById('register-form').style.display='block';
}
function product_view(pid){
	$('#product-view #brand').html('');
	$('#product-view #description').html('');
	$('#product-view #code').html('');
	$('#product-view #weight').html('');
	$('#product-view #price').html('');
	$("#product-view #product-image #img").attr("src","");

	$('#product-view #bottom-panel').hide();
	current_item_id=0;

	$.post("/json/modal/product",
		{
			service: "get_product",
			id:pid
		},
		function(data,status)
		{
			var result=data;
			if(result.error){
				$("#product-view #brand").html(result.message);
			}else{
				current_item_id=result.ac_id;
				$('#product-view #brand').html(result.brand);
				$('#product-view #description').html(result.description);
				$('#product-view #code').html(result.code);
				// $('#product-view #weight_label').html(result.weight_label+":");
				$('#product-view #weight').html(result.weight);
				$('#product-view #price').html(result.price);
				$('#product-view #note').html(result.note);
				$("#product-view #product-image #img").attr("src",'/images/products/'+result.image);
				if(result.in_shopping_cart)
					$('#product-view #bottom-panel').show();
				adjust_product_image();
			}
		}
	);

	document.getElementById('product-view').style.display='block';
}

function adjust_product_image(){

	if($(window).width()>768){
		$("#product-view #product-image #img").height("auto");
		$("#product-view #product-image #img").width("auto");
		var w1=$("#product-view #product-image").innerWidth();
		var h1=$("#product-view #product-image").innerHeight();
		var w2=$("#product-view #product-image #img").outerWidth();
		var h2=$("#product-view #product-image #img").outerHeight();

		if((w1/h1)>(w2/h2)){
			$("#product-view #product-image #img").width("auto");
			$("#product-view #product-image #img").height("100%");
		}
		else{
			$("#product-view #product-image #img").width("100%");
			$("#product-view #product-image #img").height("auto");
		}
	}
	else{
		$("#product-view #product-image #img").width("100%");
		$("#product-view #product-image #img").height("auto");
	}
}


function login(event){
	var email=$("#login-form input[name='email']").val();
	var pass=$("#login-form input[name='pass']").val();
	var remember=document.getElementById("remember").checked;
	$.ajax({
		type:    "POST",
		url:     "/login",
		data:    {
					email: email,
					password: pass,
					remember: remember
					},
		success: function(data) {
			// console.log(data);
			if(data=="admin"){
				window.location.replace("/admin/main");
			}
			else{
			 location.reload();
			}
		},
		error:   function(response) {
			$("#login-error").html('Email or Password is wrong !');
		}
	  });
	return false;
}
function logout(){
	$.post("core/services.php",
		{
			service: "logout"
		},
		function(data,status)
		{
			location.reload();
		}
	);
}
function register(event){
	var fname=$("#register-form input[name='fname']").val();
	var lname=$("#register-form input[name='lname']").val();
	var email=$("#register-form input[name='email']").val();
	var psw=$("#register-form input[name='psw']").val();
	var cpsw=$("#register-form input[name='cpsw']").val();
	var phone=$("#register-form input[name='phone']").val();
	var address=$("#register-form input[name='address']").val();
	var agree=document.getElementById("agree").checked;

	$.ajax({
	type:    "POST",
	url:     "/register",
	data:    {
					fname: fname,
					lname: lname,
					email: email,
					psw: psw,
					cpsw: cpsw,
					phone: phone,
					address: address,
					agree: agree
				},
	success: function(data) {
		location.reload();
	},
	error:   function(response) {
		let errors = "";
		let e = $.parseJSON(response.responseText);
		console.log(e.errors);
		$.each(e.errors, function(index, element) {
			$.each(element, function(index1, element1) {
				errors += element1 + '<br>';
			});
		});
		$("#reg-error").html(errors);
	}
  });
	return false;
}

$( window ).resize(function() {
	refineMoreMenu();
});

$(document).ready(function(){
	refineMoreMenu();
	$("#login-form").submit(login);
	$("#register-form").submit(register);
});

function toggleAccordion(x){
	var panel = x.nextElementSibling;
	if (panel.style.display === "block") {
		panel.style.display = "none";
	} else {
		panel.style.display = "block";
	}
}

function setGourmetContentHeight()
{
	var ww=$(window).width();
	var wh=$(window).height();
	w=$(".gourmet-container").innerWidth();
	if(ww>870)
	{
		var h=wh-$("nav").outerHeight(true);
		h=Math.max(h,400);
		$("aside").outerHeight(h);
		//$('aside').width('initial');
		$("aside").outerWidth(w*0.23);
		$("section").outerHeight(h);
		//$('section').width('initial');
		$("section").outerWidth(w*0.77);
	}
	else{
		if($(".menu-toggler").hasClass("change"))
			openSideNav();
		else
			closeSideNav();
		$("section").outerWidth(w);
	}
}

function aside_scroll(obj)
{
	var s=$("aside").scrollTop();
	obj.href+="/pos/"+Math.floor(s);
}
function animate_menu_toggler(obj)
{
	obj.classList.toggle("change");
	if(obj.classList.contains("change"))
		openSideNav();
	else
		closeSideNav();
}
function openSideNav()
{

	document.getElementById("mySidenav").style.width = "250px";
}
function closeSideNav()
{
	document.getElementById("mySidenav").style.width = "0px";
}

function add_to_cart_main(ac_id,id,del=0){


	var qid="#qty"+id;
	var quantity=$(qid).val();


	setCookie('p'+id,id,30);
	setCookie('q'+id,quantity,30);

    if(del ==1)
        {
            setCookie('p'+id,id,-999);
            setCookie('q'+id,quantity,-999);
            $("#qty"+id).val(0);

        }
    else
    if(del ==2)
    {
        var qid="#number-product"+id;
        var  quantity=$(qid).val();

        setCookie('p'+id,id,30);
        setCookie('q'+id,quantity,30);

        $("#qty"+id).val(quantity);

    }
    else
    {
        $("#number-product"+id).val(quantity);

    }


	// sendItemToWenfee(id, quantity);
	add_to_cart(ac_id,quantity);
}

function add_to_cart_pview(){
	var quantity=$("#pview_qty").val();
	add_to_cart(current_item_id,quantity);
}

function cart(){
 
        $('#cd-cart').html('<img alt="" class="hCL kVc L4E MIw" importance="auto" loading="auto" src="https://i.pinimg.com/originals/9e/91/7f/9e917f152f70800d105c76ceb7ac2b36.gif" width="550px"> <br><center> <h3>We`re update your shopping cart </h3> </center>');

        $.ajax({

            url: "../../../maincart",
            dataType: 'html',
            success: function(data) {
                 //handle data object containing the html
                 $('#cd-cart').html(data);
            },
            error: function(xhr, error){
                $('#cd-cart').load("../../../maincart");
            }

        });







}

function add_to_cart(id,quantity)
{


	var item={};
	item.itemId = id;
	item.quantity = parseInt(quantity);
    console.log(item);

	AC.cart.add(item, function(response) {

        cart();
	});


	/*
	$.post("core/services.php",
		{
			service: "get_product",
			id:id
		},
		function(data,status)
		{
			var result=JSON.parse(data);
			if(!result.error)
			{
				item.itemName = result.description;
				item.itemNumber = result.code;
				item.quantity = parseInt(quantity);
				item.imageUrl = "http://wenfee.com/"+result.image;
				item.price = result._price;
				item.weight = result._weight;
				item.noTax = !result.taxable;

				AC.cart.add(item, function(response) {
					show_badge();
					show_checkout_dialog();
				});
			}
		}
	);
	*/
}

function checkout(){

	var cookies = document.cookie.split(";");
for(var i=0; i < cookies.length; i++) {
    var equals = cookies[i].indexOf("=");
    var name = equals > -1 ? cookies[i].substr(0, equals) : cookies[i];
    document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
}
		window.location.href ='../../../../checkout222';
        //window.location.href ='../../../../cart';

}

function add_to_cart_book(ac_id,id)
{
	var qid="#qty"+id;
	var quantity=$(qid).val();
	var item={};

	item.itemId = ac_id;
	item.quantity = parseInt(quantity);

	AC.cart.add(item, function(response) {
		// show_badge();
		//show_checkout_dialog();





	});
	/*
	$.post("core/services.php",
		{
			service: "get_book",
			id:id
		},
		function(data,status)
		{
			var result=JSON.parse(data);
			if(!result.error)
			{
				item.itemId = result.id;
				// item.itemName = result.title;
				// item.itemNumber = result.code;
				item.quantity = parseInt(quantity);
				// item.imageUrl = "http://wenfee.com/"+result.image;
				// item.price = result._price;
				// item.weight = 0;
				AC.cart.add(item, function(response) {
					show_badge();
					show_checkout_dialog();
				});
			}
		}
	);
	*/
}

function sendItemToWenfee(itemId, qty){
	$.ajax({
        url : "***********",
        type: "POST",
        data : JSON.stringify({
            id: itemId,
            qty: qty
        }),
        contentType: "application/json;charset=utf-8",
        success: function(data, textStatus, jqXHR)
        {
            console.log("sent to wenfee");
        },
        error: function (jqXHR, textStatus, errorThrown)
        {

        }
    });
}

// setInterval(function() { show_badge(); }, 5000);

function show_badge(){
	AC.cart.get(function(response) {
	  if (response.data) {
		var c = response.data, itemCount = document.getElementById("cart_count_badge");
		itemCount.innerHTML = c.totalItemCount;
		itemCount.style.display = (c.totalItemCount==0?"none":"inline");
	  }
	});
	alert("hi");

}

window.acOnReady = function() {
  AC.init({ storeDomain: "wenfeeusa.americommerce.com" });

};

// ==== BEGIN AC SYSTEM CODE ====
(function(a){

	var d,c,b;a.acReadyEvents=a.acReadyEvents||[];if(a.acOnReady){d=a.acOnReady;a.acReadyEvents.push(d);a.acOnReady=undefined}if(a.postScriptLoad){a.postScriptLoad();return}a.jqReady=false;a.acReady=false;a.loadScript=function(e,i){var g,h=a.document,f=h.getElementsByTagName("head")[0];g=h.createElement("script");g.async=true;g.src=e;if(i){g.onload=i;g.onreadystatechange=function(){if(!this.readyState||this.readyState=="loaded"||this.readyState=="complete"){i();g.onload=g.onreadystatechange=null;f.removeChild(g)}}}f.appendChild(g)};a.postScriptLoad=function(){if(!a.jqReady||!a.acReady){setTimeout(a.postScriptLoad,60);return}while(a.acReadyEvents.length>0){var e=a.acReadyEvents.pop();e()}};c=a.jQuery;if(c){a.jqReady=true}else{a.loadScript("https://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js",function(){a.jqReady=true})}b=a.AC;if(b){a.acReady=true}else{a.loadScript("https://wenfeeusa.americommerce.com/store/inc/clientapi/ac-client-api.min.js",function(){a.acReady=true})}a.postScriptLoad()}(window));
// ==== END AC SYSTEM CODE ====
