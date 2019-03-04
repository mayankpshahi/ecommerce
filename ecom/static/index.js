function addtoCart(product_id){

    url = "add_to_cart" ;
    var xhr = new XMLHttpRequest();
    xhr.withCredentials = true;
    var map = {};
    map["product_id"] = product_id;

    var data = JSON.stringify(map)

    xhr.addEventListener("readystatechange", function () {
       if (this.readyState === 4) {
           var ret = {};
           ret =  JSON.parse(this.responseText);
           alert("Item added to cart")
       }
    });
    xhr.open("POST", url);
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.send(data);
}
function place_order (){
alert("order placed");
}
function remove_from_cart(item_id){
    url = "remove_from_cart/" + item_id;
    var xhr = new XMLHttpRequest();
    xhr.withCredentials = true;
    var map = {};
    map["item_id"] = item_id;

    var data = JSON.stringify(map)
    var data = null;
    xhr.addEventListener("readystatechange", function () {
       if (this.readyState === 4) {
           //var ret = {};
           //ret =  JSON.parse(this.responseText);
           alert("Item removed from cart")
           location.reload(true);
       }
    });
    xhr.open("DELETE", url);
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.send(data );
}