// pages/ProductDetailPage.ets
import { ProductService } from '../services/ProductService';
import { Product } from '../common/model/ProductModel';
import router from '@ohos.router';

@Entry
@Component
struct ProductDetailPage {
  @State product: Product = { id: 0, name: '', price: 0, image: '' };

  aboutToAppear() {
    let id = router.getParams()?.id;
    if (id !== undefined) {
      const found = ProductService.getFeaturedProducts().find(item => item.id === Number(id));
      if (found) {
        this.product = found;
      }
    }
  }

  build() {
    Column() {
      Image(this.product.image)
        .width('100%')
        .height(300)
        .objectFit(ImageFit.Cover)

      Column() {
        Text(this.product.name)
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 16, bottom: 8 })

        Text(`￥${this.product.price}`)
          .fontSize(20)
          .fontColor('#FF6A00')
          .margin({ bottom: 16 })

        Button('加入购物车')
          .width('90%')
          .height(48)
          .backgroundColor('#007DFF')
          .fontColor('#FFFFFF')
          .fontSize(18)
          .borderRadius(12)
          .onClick(() => {
            console.log(`添加到购物车: ${this.product.name}`);
            // 后续可扩展加入购物车逻辑
          })
      }
      .width('100%')
      .padding(16)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F7F7F7')
  }
}
