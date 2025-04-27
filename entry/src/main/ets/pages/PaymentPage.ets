import promptAction from '@ohos.promptAction';
import router from '@ohos.router';
@Preview
@Entry
@Component
struct PaymentPage {
  @State cardNumber: string = ''; // 显式声明为string类型

  build() {
    Column({ space: 20 }) {
      TextInput({ placeholder: '请输入卡号' })
        .width('100%')
        .maxLength(16)
        .onChange((value: string) => {
          this.cardNumber = value;
        })

      Button('立即支付')
        .width('60%')
        .onClick(() => {
          if (/^\d{16}$/.test(this.cardNumber)) {
            promptAction.showToast({ message: '支付成功！' });
            router.back();
          } else {
            promptAction.showToast({ message: '卡号格式错误！' });
          }
        })
    }
    .padding(16)
    .width('100%')
  }
}