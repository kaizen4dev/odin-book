import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clipboard"
export default class extends Controller {
  static values = { text: String }

  connect() {
  }

  copyText() {
    navigator.clipboard.writeText(this.textValue)
    let text = this.element.textContent
    this.element.textContent = "Copied"
    setTimeout(() => { this.element.textContent = text }, 1200)
  }
}
