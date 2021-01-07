class removeFields {
    constructor() {
        this.iteralinks();
    }

    iterateLinks() {
        document.addEventListener("click", (e) => {
            if (e.target && e.target.className == "remove_fileds") {
                this.hanldeCLick(e.target, e);
            }
        });
    }

    handClick(link, e) {
        if (!link || !e) return;
        e.preventDefault();
        let fieldParent = linkclosest(".nested-fields");
        let deleteField = fieldParent
        ? fieldParent.querySelector('input[type="hidden"]')
        : null;
        if (deleteField) {
            deleteField.value = 1;
            fieldParent.style.display = "none";
        }
    }
}

window.addEventListener("turbolinks:load", () => new removeFields());