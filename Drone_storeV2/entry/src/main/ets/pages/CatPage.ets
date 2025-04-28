// pages/CartPage.ets
import { CartService } from '../services/CartService';
import { CartItemModel } from '../common/model/CartItemModel';
import { CartItem } from '../components/CartItem';

@Entry
@Component
struct CartPage {
  @State cartItems: CartItemModel[] = [];

  aboutToAppear() {
    this.cartItems = CartService.getCartItems();
  }

  getTotalPrice(): number {
    return this.cartItems.reduce((sum, item) => sum + item.price * item.quantity, 0);
  }

  build() {
    Column() {
      Text('购物车')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .padding({ top: 20, bottom: 20 })

      If (this.cartItems.length > 0) {
        List() {
          ForEach(this.cartItems, (item: CartItemModel) => {
            CartItem({ item: item })
          }, item => item.id)
        }
      }
      Else {
        Text('购物车为空')
          .fontSize(18)
          .fontColor('#888888')
          .padding(30)
      }

      Row() {
        Text(`合计: ￥${this.getTotalPrice()}`)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)

        Button('结算')
          .width(120)
          .height(44)
          .backgroundColor('#007DFF')
          .fontColor('#FFFFFF')
          .fontSize(18)
          .borderRadius(8)
          .margin({ left: 20 })
          .onClick(() => {
            console.log('点击了结算');
            // 后续扩展支付逻辑
          })
      }
      .padding(16)
      .backgroundColor('#FFFFFF')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F7F7F7')
  }
}
