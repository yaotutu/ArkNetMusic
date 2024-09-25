import { media } from '@kit.MediaKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  avPlayer:media.AVPlayer | null = null;

  async  onPageShow() {
  //   页面初始化的时候，创建播放器实例
  this.avPlayer   = await media.createAVPlayer();


  }
  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}