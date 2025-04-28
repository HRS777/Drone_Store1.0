// services/ProductService.ets
import { Product } from '../common/model/ProductModel';

export class ProductService {
  static getFeaturedProducts(): Product[] {
    return [
      { id: 1, name: 'Phantom 4 Pro', price: 9999, image: '/resources/base/media/phantom4pro.png' },
      { id: 2, name: 'Magic Air 2', price: 4999, image: '/resources/base/media/maverick2.png' },
      { id: 3, name: 'Mini 3 Pro', price: 3999, image: '/resources/base/media/mini3pro.png' }
    ];
  }
}
