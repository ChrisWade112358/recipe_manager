class addFields {
    constructor() {
        this.links = document.querySelectorAll(".add_fields");
        this.iterateLinks();
    }

    iterateLinks() {
        if (this.links.length === 0) return;
        this.lonks.forEach((link) => {
            link.addEventListener("click", (e) => {
                this.handleClick(link, e);
            });
        });
    }

    handleClick(link, e) {
        if (!link || !e) return;
        e.preventDefault();
        let time = new Date().getTime();
        let linkId = link.dataset.id
        let regexp = linkId ? new RegExp(linkId, "g") : null;
        let newFileds = regexp ? link.dataset.fields.replace(regexp, time) : null;
        newFilds ? link.inserAdjacentHTML("beforebegin", newFields) : null;
    }
}

window.addEventListener("turbolinks:load", () => new addFields());