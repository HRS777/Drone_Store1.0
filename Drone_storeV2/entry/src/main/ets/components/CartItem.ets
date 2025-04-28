// components/CartItem.ets
import { CartItemModel } from '../common/model/CartItemModel';

@Component
export struct CartItem {
  @Prop item: CartItemModel;

  build() {
    Row() {
      Image(this.item.image)
        .width(80)
        .height(80)
        .objectFit(ImageFit.Cover)
        .borderRadius(12)

      Column() {
        Text(this.item.name)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 4 })

        Text(`￥${this.item.price} × ${this.item.quantity}`)
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
