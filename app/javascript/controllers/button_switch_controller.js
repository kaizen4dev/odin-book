import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="followings"
export default class extends Controller {
  static targets = ["deactivateBtn", "activateBtn"]
  static values = { active: Boolean }

  connect() {
    this.activeValue ? this.activate() : this.deactivate()
  }

  activate() {
    this.activeValue = true
    this.activateBtnTarget.parentElement.setAttribute("hidden", "")
    this.deactivateBtnTarget.parentElement.removeAttribute("hidden")
  }

  deactivate() {
    this.activeValue = false
    this.activateBtnTarget.parentElement.removeAttribute("hidden")
    this.deactivateBtnTarget.parentElement.setAttribute("hidden", "")
  }
}
