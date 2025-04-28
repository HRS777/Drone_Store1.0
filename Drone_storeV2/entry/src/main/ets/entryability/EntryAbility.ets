// entryability/EntryAbility.ets
import abilityAccessCtrl from '@ohos.abilityAccessCtrl';
import UIAbility from '@ohos.app.ability.UIAbility';

export default class EntryAbility extends UIAbility {
  onCreate(want, launchParam) {
    console.log('EntryAbility onCreate');
  }
  onDestroy() {
    console.log('EntryAbility onDestroy');
  }
}
