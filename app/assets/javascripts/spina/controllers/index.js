import { application } from "controllers/application"

// Eager load all Stimulus controllers
console.log('spina:index.js');
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)
