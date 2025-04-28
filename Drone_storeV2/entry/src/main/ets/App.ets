
// App.ets
import router from '@ohos.router';

@Entry
@Component
struct App {
  build() {
    router.pushUrl({ url: 'pages/HomePage' });
  }
}
