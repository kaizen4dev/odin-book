import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clipboard"
export default class extends Controller {
  static values = {text: String}

  connect() {
  }

  copyText() {
    navigator.clipboard.writeText(this.textValue)
  }
}
