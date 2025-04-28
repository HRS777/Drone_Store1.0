// components/NavBar.ets
@Component
export struct NavBar {
  @Prop title: string;

  build() {
    Row() {
      Text(this.title)
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .padding({ left: 20 })
    }
    .height(56)
    .backgroundColor('#FFFFFF')
    .alignItems(Alignment.Center)
    .justifyContent(FlexAlign.Start)
    .borderRadius({ bottomLeft: 16, bottomRight: 16 })
    .shadow({ color: '#999999', radius: 8, offsetX: 0, offsetY: 2 })
  }
}
