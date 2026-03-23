import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="followings"
export default class extends Controller {
  static targets = ["followBtn", "unfollowBtn"]
  static values = { following: Boolean }

  connect() {
    this.followingValue ? this.follow() : this.unfollow()
  }

  follow() {
    this.followingValue = true
    this.followBtnTarget.parentElement.setAttribute("hidden", "")
    this.unfollowBtnTarget.parentElement.removeAttribute("hidden")
  }

  unfollow() {
    this.followingValue = false
    this.followBtnTarget.parentElement.removeAttribute("hidden")
    this.unfollowBtnTarget.parentElement.setAttribute("hidden", "")
  }
}
