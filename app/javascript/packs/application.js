// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "../utilities/sorting"
import "../utilities/input"
import "../utilities/form_inline"
import "../utilities/progress_bar.js"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
