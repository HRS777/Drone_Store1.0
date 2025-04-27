import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State drones: Array<{id: number, name: string, price: number}> = [
    {id: 1, name: $r('app.string.drone1'), price: 2999},
    {id: 2, name: $r('app.string.drone2'), price: 4999}
  ];

  @State cartItems: Array<any> = [];
  @State total: number = 0;

  build() {
    Column({ space: 10 }) {
      // 商品列表
      List({ space: 15 }) {
        ForEach(this.drones, (item) => {
          ListItem() {
            Row({ space: 15 }) {
              Column() {
                Text(item.name).fontSize(18)
                Text(`¥${item.price}`).fontColor('#FF4500')
              }.width('70%')

              Button($r('app.string.add_to_cart'))
                .width('30%')
                .onClick(() => {
                  this.cartItems.push(item)
                  this.total += item.price
                })
            }
            .padding(10)
            .backgroundColor(Color.White)
            .borderRadius(8)
          }
        })
      }.layoutWeight(1)

      // 购物车
      Column({ space: 10 }) {
        Text(`已选 ${this.cartItems.length} 件商品`).fontSize(16)
        Text(`总计：¥${this.total}`).fontColor('#FF4500').fontSize(18)
        Button('去支付')
          .width('100%')
          .onClick(() => {
            router.pushUrl({ url: 'pages/PaymentPage' })
          })
      }
      .padding(10)
      .backgroundColor('#F5F5F5')
    }
    .padding(16)
    .width('100%')
    .height('100%')
  }
}