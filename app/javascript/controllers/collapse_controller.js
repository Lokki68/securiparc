import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button", "content", "icon"];

  connect() {
    console.log("button", this.buttonTarget);
    console.log("content", this.contentTarget);
    console.log("icon", this.iconTarget);
  }

  toggle() {
    this.contentTarget.classList.toggle("collapse");
    this.toggleIcon(this.iconTarget);
  }

  toggleIcon(icon) {
    if (icon.classList.contains("fa-chevron-down")) {
      icon.classList.remove("fa-chevron-down");
      icon.classList.add("fa-chevron-right");
    } else {
      icon.classList.remove("fa-chevron-right");
      icon.classList.add("fa-chevron-down");
    }
  }
}
