import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading";
import { application } from "controllers/application";
eagerLoadControllersFrom("controllers", application);

import Hideable from "./hideable_controller";
application.register("hideable", Hideable);

import ModalController from "./modal_controller";
application.register("modal", ModalController);

import CollapseController from "./collapse_controller";
application.register("collapse", CollapseController);
