// pages/HomePage.ets
import { NavBar } from '../components/NavBar';
import { ProductCard } from '../components/ProductCard';
import { ProductService } from '../services/ProductService';
import { Product } from '../common/model/ProductModel';
import router from '@ohos.router';

@Entry
@Component
struct HomePage {
  @State products: Product[] = [];

  aboutToAppear() {
    this.products = ProductService.getFeaturedProducts();
  }

  build() {
    Column() {
      NavBar({ title: 'Drone Store' })
      List() {
        ForEach(this.products, (item: Product) => {
          ProductCard({ product: item })
            .onClick(() => {
              router.pushUrl({
                url: 'pages/ProductDetailPage',
                params: { id: item.id }
              });
            })
        }, item => item.id)
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F7F7F7')
  }
}
