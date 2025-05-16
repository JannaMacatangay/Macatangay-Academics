var categories = [];
var products = [];

const getAllCategories = async () => {
    fetch(
        'http://localhost/WEBDEV-ADET/JannaMacatangay.github.io/ADET/A06/POS_BE/categories.php'
    )
        .then(response => response.json())
        .then(data => {
            categories = data;
            loadCategories();
        });
}


const getAllProducts = async (categoryID) => {
    const categoryData = {
        categoryID: categoryID
    };

    fetch(
        'http://localhost/WEBDEV-ADET/JannaMacatangay.github.io/ADET/A06/POS_BE/products.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(categoryData)
    })
        .then(response => response.json())
        .then(data => {
            products = data;
            loadProducts();
        });
}

getAllCategories();
var total = 0;

// Display categories
function loadCategories() {
    var categoriesContainer = document.getElementById("categories");

    categories.forEach(function (category) {
        categoriesContainer.innerHTML += `
      <div class="col-6 col-sm-4 col-md-3 col-lg-2 mb-3">
        <div onclick="getAllProducts('` + category.categoryID + `')" class="card mx-1 custom-button p-3 text-center">
          <small><b>` + category.name + `</b></small>
        </div>
      </div>
    `;
    });

}


// Display products
function loadProducts() {
    var maincontainer = document.getElementById("maincontainer");
    maincontainer.innerHTML = "";

    products.forEach(product => {
        if (product.sizes && product.sizes.length > 0) {
            product.sizes.forEach(size => {
                maincontainer.innerHTML += `
                      <div onclick="addToReceipt('` + size.price + `','` + product.code + size.code + `')" 
                           class="product-card card mx-1 my-2 custom-button content text-center">
                        <img src="images/clothes/` + product.imageFolder + `/` + product.image + `" 
                             alt="` + product.name + `" 
                             class="product-image img-fluid mb-2">
                        <small class="product-name">` + product.name + ' ' + size.code + `</small>
                      </div>
                    `;
            });
        } else {
            maincontainer.innerHTML += `
                  <div onclick="addToReceipt('` + product.price + `','` + product.code + `')" 
                       class="product-card card mx-1 my-2 custom-button content text-center">
                    <img src="images/clothes/` + product.imageFolder + `/` + product.image + `" 
                         alt="` + product.name + `" 
                         class="product-image img-fluid mb-2">
                    <small class="product-name">` + product.name + `</small>
                  </div>
                `;
        }
    });
}

// Add item to receipt
function addToReceipt(price, code, name) {
    const receiptContainer = document.getElementById("receipt");
    total = parseFloat(total) + parseFloat(price);

    const totalValueElement = document.getElementById("totalValue");
    if (totalValueElement) {
        totalValueElement.innerHTML = total.toFixed(2);
    }

    receiptContainer.innerHTML += `
        <div class="d-flex flex-row justify-content-between border-bottom pb-1 mb-1">
            <div><small>${name || code}</small></div>
            <div><small>₱${parseFloat(price).toFixed(2)}</small></div>
        </div>
    `;
}

// Initialize total on page load
window.onload = function () {
    const totalValueElement = document.getElementById('totalValue');
    if (totalValueElement) {
        totalValueElement.textContent = total.toFixed(2);
    }

    // Initialize checkout button if it exists
    const checkoutButton = document.getElementById('checkoutButton');
    const checkoutMessage = document.getElementById('checkoutMessage');

    if (checkoutButton && checkoutMessage) {
        checkoutButton.addEventListener('click', function () {
            checkoutMessage.style.display = 'block';
        });
    }
};