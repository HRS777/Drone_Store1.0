// components/ProductCard.ets
import { Product } from '../common/model/ProductModel';

@Component
export struct ProductCard {
  @Prop product: Product;

  build() {
    Row() {
      Image(this.product.image)
        .width(100)
        .height(100)
        .objectFit(ImageFit.Cover)
        .borderRadius(12)

      Column() {
        Text(this.product.name)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 4 })

        Text(`￥${this.product.price}`)
          .fontSize(16)
          .fontColor('#FF6A00')
      }
      .padding(10)
    }
    .padding(12)
    .backgroundColor('#FFFFFF')
    .borderRadius(16)
    .margin({ all: 8 })
    .shadow({ color: '#CCCCCC', radius: 8, offsetX: 0, offsetY: 4 })
  }
}
