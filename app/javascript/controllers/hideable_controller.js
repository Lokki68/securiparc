import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["element"];
  connect() {
    setTimeout(() => {
      this.hideElement();
    }, 3000);
  }

  hideElement() {
    this.element.style.display = "none";
  }
}
