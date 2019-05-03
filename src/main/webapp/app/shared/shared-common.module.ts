import { NgModule } from '@angular/core';

import { MonolithicAppWithoutRegistrySharedLibsModule, JhiAlertComponent, JhiAlertErrorComponent } from './';

@NgModule({
    imports: [MonolithicAppWithoutRegistrySharedLibsModule],
    declarations: [JhiAlertComponent, JhiAlertErrorComponent],
    exports: [MonolithicAppWithoutRegistrySharedLibsModule, JhiAlertComponent, JhiAlertErrorComponent]
})
export class MonolithicAppWithoutRegistrySharedCommonModule {}
