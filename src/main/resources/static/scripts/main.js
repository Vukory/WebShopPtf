async function yeetBtn(productId){
    console.log("TOP");
    const response = await fetch(`/cart/removeProduct/${productId}`, {
        method: 'GET',
    });

    let fuck=document.querySelector(`[data-id='${productId}']`);
    fuck.remove();
    console.log("BOTTOM");
}