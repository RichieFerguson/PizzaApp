import { Application } from "@hotwired/stimulus";
import { definitionsFromContext } from "@hotwired/stimulus-loading";

const application = Application.start();
const context = require.context("controllers", true, /_controller\.js$/);
application.load(definitionsFromContext(context));
