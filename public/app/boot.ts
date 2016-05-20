import {provide} from 'angular2/core'
import {bootstrap} from 'angular2/platform/browser'
import {AppRouterComponent} from './app_router.component'
import {HTTP_PROVIDERS} from 'angular2/http'
import {ROUTER_PROVIDERS} from 'angular2/router'

bootstrap(
    AppRouterComponent,
    [
        HTTP_PROVIDERS,
        ROUTER_PROVIDERS
    ]
);