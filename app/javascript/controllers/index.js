// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller

import { application } from "./application"

import { Dropdown, Modal, Tabs, Popover, Toggle, Slideover } from "tailwindcss-stimulus-components"
application.register('dropdown', Dropdown)
application.register('modal', Modal)
application.register('tabs', Tabs)
application.register('popover', Popover)
application.register('toggle', Toggle)
application.register('slideover', Slideover)

import Flatpickr from 'stimulus-flatpickr'
application.register('flatpickr', Flatpickr)

import AccountsController from "./accounts_controller.js"
application.register("accounts", AccountsController)

import BraintreeController from "./braintree_controller.js"
application.register("braintree", BraintreeController)

import BulkController from "./bulk_controller.js"
application.register("bulk", BulkController)

import ClipboardController from "./clipboard_controller.js"
application.register("clipboard", ClipboardController)

import DateNavigatorController from "./date_navigator_controller.js"
application.register("date-navigator", DateNavigatorController)

import EffectiveDateFieldsController from "./effective_date_fields_controller.js"
application.register("effective-date-fields", EffectiveDateFieldsController)

import EffectiveDateModalController from "./effective_date_modal_controller.js"
application.register("effective-date-modal", EffectiveDateModalController)

import MentionsController from "./mentions_controller.js"
application.register("mentions", MentionsController)

import NotificationsController from "./notifications_controller.js"
application.register("notifications", NotificationsController)

import OrgChartController from "./org_chart_controller.js"
application.register("org-chart", OrgChartController)

import OrgDataController from "./org_data_controller.js"
application.register("org-data", OrgDataController)

import PaddleController from "./paddle_controller.js"
application.register("paddle", PaddleController)

import PaypalController from "./paypal_controller.js"
application.register("paypal", PaypalController)

import PersonButtonsController from "./person_buttons_controller.js"
application.register("person-buttons", PersonButtonsController)

import PersonFormController from "./person_form_controller.js"
application.register("person-form", PersonFormController)

import ProposalFormController from "./proposal_form_controller.js"
application.register("proposal-form", ProposalFormController)

import ProposalNavigatorController from "./proposal_navigator_controller.js"
application.register("proposal-navigator", ProposalNavigatorController)

import PricingController from "./pricing_controller.js"
application.register("pricing", PricingController)

import SelectController from "./select_controller.js"
application.register("select", SelectController)

import StripeController from "./stripe_controller.js"
application.register("stripe", StripeController)

import TeamChartController from "./team_chart_controller.js"
application.register("team-chart", TeamChartController)

import TeamDataController from "./team_data_controller.js"
application.register("team-data", TeamDataController)

import TeamFormController from "./team_form_controller.js"
application.register("team-form", TeamFormController)

import TooltipController from "./tooltip_controller.js"
application.register("tooltip", TooltipController)

import TurboNative__PushNotificationsController from "./turbo_native/push_notifications_controller.js"
application.register("turbo-native--push-notifications", TurboNative__PushNotificationsController)

import TurboNative__SignOutController from "./turbo_native/sign_out_controller.js"
application.register("turbo-native--sign-out", TurboNative__SignOutController)

import UrlDateManagerController from "./url_date_manager_controller.js"
application.register("url-date-manager", UrlDateManagerController)
