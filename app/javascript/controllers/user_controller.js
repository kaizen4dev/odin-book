import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="users"
export default class extends Controller {
  static targets = ["posts", "comments", "following", "followers", "followingTab", "followersTab", "postsTab", "commentsTab"]

  connect() {
  }

  following() {
    this.show("following")
    this.hide("followers")
    this.hide("posts")
    this.hide("comments")
  }

  followers() {
    this.hide("following")
    this.show("followers")
    this.hide("posts")
    this.hide("comments")
  }

  posts() {
    this.hide("following")
    this.hide("followers")
    this.show("posts")
    this.hide("comments")
  }

  comments(){
    this.hide("following")
    this.hide("followers")
    this.hide("posts")
    this.show("comments")
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
