$(document).ready(function() {
    var shoppingCart = (function() {
        var cart = [];

        //ItemCart:
        function Item(id, name, price, image, count) {
            this.id = id;
            this.name = name;
            this.price = price;
            this.image = image;
            this.count = count;
        }
        //Save cart to session;
        function saveCart() {
            sessionStorage.setItem('shoppingCart', JSON.stringify(cart));
        }
        //Load cart:
        function loadCart() {
            cart = JSON.parse(sessionStorage.getItem('shoppingCart'));
        }
        if (sessionStorage.getItem('shoppingCart') != null) {
            loadCart();
        }
        //------------------------------
        //Them sua xoa cart:
        var obj = {};
        //Add:
        obj.addItemToCart = function(id, name, price, image, count) {
            for (var i in cart) {
                if (cart[i].id === id) {
                    cart[i].count ++;
                    saveCart();
                    return;
                }
            }
            var item = new Item(id, name, price, image, count);
            cart.push(item);
            saveCart();
        }
        //Add khi da set count:
        obj.addItemFromDetail = function (id, name, price, image, count) {
            for (var i in cart) {
                if (cart[i].id === id) {
                    cart[i].count += count;
                    saveCart();
                    return;
                }
            }
            var item = new Item(id, name, price, image, count);
            cart.push(item);
            saveCart();
        }
        //Remove:
        obj.removeItemFromCart = function(id) {
            for (var i in cart) {
                if (cart[i].id === id) {
                    cart[i].count--;
                    if (cart[i].count === 0) {
                        cart.splice(i,1);
                    }
                    break;
                }
            }
            saveCart();
        }
        //Remove all items from cart:
        obj.removeAllItemFromCart = function(id) {
            for (var i in cart) {
                if (cart[i].id === id) {
                    cart.splice(i, 1);
                    break;
                }
            }
            saveCart();
        }
        //Clear cart:
        obj.clearCart = function() {
            cart = [];
            saveCart();
        }
        //Count cart:
        obj.totalCount = function() {
            var totalCount = 0;
            for (var i in cart) {
                totalCount += cart[i].count;
            }
            return totalCount;
        }
        //Set count item nhap tu input:
        obj.countFromInput = function(id, count) {
            for (var i in cart) {
                if (cart[i].id === id) {
                    cart[i].count += count;
                    break;
                }
            }
        };
        //Total cart:
        obj.totalCart = function() {
            var totalCart = 0;
            for (var i in cart) {
                totalCart += cart[i].price * cart[i].count;
            }
            return Number(totalCart.toFixed(2));
        }
        //List cart:
        obj.listCart = function () {
            var cartCopy = [];
            for (i in cart) {
                item = cart[i];
                itemCopy = {};
                for (p in item) {
                    itemCopy[p] = item[p];

                }
                itemCopy.total = Number(item.price * item.count).toFixed(2);
                cartCopy.push(itemCopy)
            }
            return cartCopy;
        }
        return obj;
    })();
    //-------------------------------------------------------------------
    //Do du lieu khi click add to cart:
    $('.add-to-cart').click(function () {
        var id = $(this).data('id');
        var name = $(this).data('name');
        var price = $(this).data('price');
        var image = $(this).data('image');
        shoppingCart.addItemToCart(id, name, price, image, 1);
        displayCart();
    });
    //Clear cart:
    $('.clear-cart').click(function () {
        shoppingCart.clearCart();
        displayCart();
    });

    function displayCart() {
        var cartArray = shoppingCart.listCart();
        var contentCart = "";
        for (var i in cartArray) {
            contentCart +=
                `<li class="header-cart-item flex-w flex-t m-b-12">
						<div style="width: 100%">
							<div class="header-cart-item-img delete-item" data-id = "${cartArray[i].id}" title="Delete item?">
								<img src="${cartArray[i].image}" alt="IMG">
							</div>
							<div class="header-cart-item-txt p-t-8">
								<a href="/Home/ProductDetail?id=${cartArray[i].id}" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
									${cartArray[i].name}
								</a>

								<span class="header-cart-item-info">
									${cartArray[i].count} x $${cartArray[i].price}
								</span>
							</div>
							<div style="float: left; width: auto; margin-top: 20px;">
								<div class="minus-cart" data-id = "${cartArray[i].id}" title="${cartArray[i].count == 1 ? 'Delete item?' : ''}">
	                                <svg width="19" height="5" viewBox="0 0 11 5">
	                                    <title>Minus</title>
	                                    <path d="M0 2.5C0 1.1 1.1 0 2.5 0L8.5 0C9.9 0 11 1.1 11 2.5 11 3.9 9.9 5 8.5 5L2.5 5C1.1 5 0 3.9 0 2.5L0 2.5Z" id="minus" fill="#AAABAF"/>
	                                </svg>
	                            </div>
	                            <div class="counter-cart">${cartArray[i].count}</div>
	                            <div class="plus-cart" data-id = "${cartArray[i].id}">
	                                <svg width="12" height="19" viewBox="0 0 19 19">
	                                    <title>Plus</title>
	                                    <path d="M7 7L2.5 7C1.1 7 0 8.1 0 9.5 0 10.9 1.1 12 2.5 12L7 12 7 16.5C7 17.9 8.1 19 9.5 19 10.9 19 12 17.9 12 16.5L12 12 16.5 12C17.9 12 19 10.9 19 9.5 19 8.1 17.9 7 16.5 7L12 7 12 2.5C12 1.1 10.9 0 9.5 0 8.1 0 7 1.1 7 2.5L7 7 7 7Z" id="plus" fill="#5E606A"/>
	                                </svg>
	                            </div>
							</div>
						</div>
						
					</li>`;
        }
        $('.show-cart').html(contentCart);
        $('.total-count').html(shoppingCart.totalCount());
        $('.total-cart').html(shoppingCart.totalCart());
        if (shoppingCart.listCart().length == 0) {
            $('.cart-checkout').css({ "display": "none" });
            $('.cart-message').css({ "display": "inline" });
        } else {
            $('.cart-checkout').css({ "display": "flex" });
            $('.cart-message').css({ "display": "none" });
        }
    }
    //Delete item:
    $('.show-cart').on('click', '.delete-item', function() {
        var id = $(this).data('id');
        console.log("id = "+id);
        shoppingCart.removeAllItemFromCart(id);
        displayCart();
    });
    //Button -1:
    $('.show-cart').on('click', '.minus-cart', function() {
        var id = $(this).data('id');
        shoppingCart.removeItemFromCart(id);
        displayCart();
    });
    //Button +1:
    $('.show-cart').on('click', '.plus-cart', function () {
        var id = $(this).data('id');
        shoppingCart.addItemToCart(id);
        displayCart();
    });
    $('#add-cart-detail').click(function() {
        var id = $(this).data('id');
        var name = $(this).data('name');
        var price = $(this).data('price');
        var image = $(this).data('image');
        var count = Number($('#counter-detail').val());
        shoppingCart.addItemFromDetail(id, name, price, image, count);
        displayCart();
    });
    function displayCartPage() {
        var cartArray = shoppingCart.listCart();
        var contentCart = "";
        for (var i in cartArray) {
            contentCart +=
                             `<tr class="table_row">
                                <td class="column-1">
                                    <div class="how-itemcart1 delete-item-cart" data-id = "${cartArray[i].id}" title="Delete item?">
                                        <img src="${cartArray[i].image}" alt="IMG">
                                    </div>
                                </td>
                                <td class="column-2">${cartArray[i].name}</td>
                                <td class="column-3">$ ${cartArray[i].price}</td>
                                <td class="column-4">
                                    <div class="wrap-num-product flex-w m-l-auto m-r-0">
                                        <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m minus-cart-page" data-id = "${cartArray[i].id}" title="${cartArray[i].count == 1?'Delete item?':''}">
                                            <i class="fs-16 zmdi zmdi-minus"></i>
                                        </div>

                                        <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="${cartArray[i].count}" readonly>

                                        <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m plus-cart-page" data-id = "${cartArray[i].id}">
                                            <i class="fs-16 zmdi zmdi-plus"></i>
                                        </div>
                                    </div>
                                </td>
                                <td class="column-5">$ ${cartArray[i].price * cartArray[i].count}</td>
                            </tr>`;
        }
        $('.show-cart-page').html(contentCart);
        $('.total-cart-page').html("$ "+shoppingCart.totalCart());
    }
    $('.show-cart-page').on('click', '.plus-cart-page', function() {
        var id = $(this).data('id');
        shoppingCart.addItemToCart(id);
        displayCartPage();
    });
    $('.show-cart-page').on('click', '.minus-cart-page', function () {
        var id = $(this).data('id');
        shoppingCart.removeItemFromCart(id);
        displayCartPage();
    });
    $('.show-cart-page').on('click', '.delete-item-cart', function () {
        var id = $(this).data('id');
        shoppingCart.removeAllItemFromCart(id);
        displayCartPage();
    });
    //Neu vao trang Cart an nut gio hang, inner html:
    
    if (window.location.pathname == "/Home/Cart") {
        $('.wrap-icon-header').css({ "display": "none" });
        if (shoppingCart.listCart().length == 0) {
            $('.shop-cart-page').css({ "display": "none" });
            $('.coupon').css({ "display": "none" });
            $('.shopping-success').css({ "display": "block" });
        } else {
            displayCartPage();
        }
        

    }
    //Doi mau link:
    //$("[href]").each(function () {
    //    if (this.href == window.location.pathname) {
    //        $(this).addClass("change-color");
    //    }
    //});
    $(".link").each(function () {
        if (this.href == window.location.href) {
            $(this).css({ "color": "#6c7ae0" });
        }
    });
    $('.check-out').click(function() {
        shoppingCart.clearCart();
        displayCartPage();
    });
    
    

    displayCart();
});

    
