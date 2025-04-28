// services/CartService.ets
import { CartItemModel } from '../common/model/CartItemModel';
import { Product } from '../common/model/ProductModel';

export class CartService {
  private static cartItems: CartItemModel[] = [];

  static addToCart(product: Product) {
    let existing = this.cartItems.find(item => item.id === product.id);
    if (existing) {
      existing.quantity += 1;
    } else {
      this.cartItems.push({ id: product.id, name: product.name, price: product.price, image: product.image, quantity: 1 });
    }
  }

  static getCartItems(): CartItemModel[] {
    return this.cartItems;
  }
}
