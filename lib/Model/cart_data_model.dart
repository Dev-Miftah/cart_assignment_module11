class CartDataModel{
  final String itemName;
  final String itemColor;
  final String itemSize;
  final String itemImage;
  final int itemPrice;
  int itemQuantity;

  CartDataModel({required this.itemName, required this.itemColor, required this.itemSize,required this.itemImage, required this.itemPrice, this.itemQuantity = 1});

}

List<CartDataModel> cartItems = [
    CartDataModel(
        itemName: 'Pullover',
        itemColor: 'Black',
        itemSize: 'L',
        itemPrice: 51,
        itemImage: 'https://s3-alpha-sig.figma.com/img/6e2a/6075/d2aebb9b52db31deea621f309362bab4?Expires=1716163200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=g56LRANcTKnqj2EF8wBDcJWCNQnmv4kXtTH-tjg7diUp7dJTP~rJsLHycZuHJhGkFX7JwZPyA8l8ff8Ql5ankjgGuwiQ1VeZdOt8GDX3c~iLF1P1a6Odvv3ikCbCwLZf9S6D-XK~JSDX844TgxsM0p9W4j~RCE1LyjzruBAiv2mYs7UmPQOlPdZrHA-RfdHgQ3OJPxvicUhM2HXVRSvQ2lRCuJsEeiBPHCgYA9N9YKwSWFCqITWQozlm~VxF2H~yrwr-rZZeK3GLkh4n65WbSXQkJve-mcSnhztkM92kpyC9UOQikzi5evTUwaMPjzEdXz~u-kWawlEo~Bgx2KJ6Og__'
    ),
   CartDataModel(
        itemName: 'T-Shirt',
        itemColor: 'Gray',
        itemSize: 'L',
        itemPrice: 30,
        itemImage: 'https://s3-alpha-sig.figma.com/img/5e93/8ec8/ffc8353c2e4119cf43ecf6db7e381d9d?Expires=1716163200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PQw6F1~Hqh93CQorXlHw1m~5VTwbrgRxFXJIBKie2z6~9z-ivymKA7r4M8QBooqONpWx17yf3gAtLdDCtnvp~U8JxostkQOez5Fy5Tm2gY9rfyZ726XilvLkKLfTAKquDpWho8RbNCXwqoL~fWKHv9v8bPJd-9cvbBxq8ukopV6vBq3qX1L0lUazdAJWdzH6LTngxCxA9tsmwv8YeYgq1r4yGDyFPWpDN3mUKfVAD4Z4RZ254QWsL96mETWl3SJWoQss6wW9napvDoRo1lGO1EEhrcSHNNjIAzFiW5Pq9OaoJjgCOiXsDw9NsEAWAPEAOWwsEa70H~K~Y9tKc7T0JQ__'
    ),
   CartDataModel(
        itemName: 'Sport Dress',
        itemColor: 'Black',
        itemSize: 'M',
        itemPrice: 43,
        itemImage: 'https://s3-alpha-sig.figma.com/img/1821/5f62/e259b4c9081785e2fb7f4b553d1a8023?Expires=1716163200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=htQ4PhSMlqc7~hyXD~SruGnmxasPu1iQTCRBH8HB~R7j2HcfEzTNtx2sVCmhpRId7I0XEz7Hq5ZACcn8MR82fSUNFiuqpsVVFgj~u5bWSPnSUnMU5J~CEc~gEVX2VkNMHxFULlQBYp581AxIA9h-V0dZlDoGOIBUcx9Ek5u4rtOjl4Lb63KcLSywTw~iOsM~Z--SZ-WaZ5cyi2HXhHyLOr9LwCI1vLW4X6U2IbnMOv2LNhICDHlAQQYhkALh1M0-Qxl~4k36wiuLYGkbAfHwYhaT-o6oKvEeDkXSqKlJVDUk1z3Fzt3XOzBAPJhs8SBdQwmSUQl~bTEEv6Op6oixlw__'
    ),

];