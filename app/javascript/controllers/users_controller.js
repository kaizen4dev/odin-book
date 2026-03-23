import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="users"
export default class extends Controller {
  static targets = ["following", "followers", "all", "followingTab", "followersTab", "allTab"]

  connect() {
  }

  following() {
    this.show("following")
    this.hide("followers")
    this.hide("all")
  }

  followers() {
    this.hide("following")
    this.show("followers")
    this.hide("all")
  }

  all() {
    this.hide("followers")
    this.hide("following")
    this.show("all")
  }

  show(targetName) {
    eval(`this.${targetName}Target.removeAttribute("hidden")`)
    eval(`this.${targetName}TabTarget.classList.add("is-active")`)
  }

  hide(targetName) {
    eval(`this.${targetName}Target.setAttribute("hidden", "")`)
    eval(`this.${targetName}TabTarget.classList.remove("is-active")`)
  }
}
