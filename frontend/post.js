class Post {
    constructor({
        id,
        type,
        attributes,
     
        relationships
    }) {    
        this.id = id
        this.content = attributes.content
        this.likes = attributes.likes
        this.affirmationIds = relationships.affirmations.data.map(obj => obj.id)
        this.categoryId = relationships.category.data.id
        this.div = document.createElement("div")
        this.div.className = "salt-item"
    }

    getCategory = (postsCategories) => {
        let categoryName = postsCategories.find(catObj => catObj.id === this.categoryId).name
    
        return categoryName;
    }
    
    getAffirmations = (postsAffirmations) => {
        let affirmations = postsAffirmations.filter(keywordObj => this.affirmationIds.includes(keywordObj.id))
    
        return this.renderKeywords(affirmations);
    }
    
    renderKeywords(affirmations){
        return affirmations.map(keywordObj => {
            return `<li class="keywords" data-keyword-id=${keywordObj.id}>#${keywordObj.keywordName}</li>`
        }).join("")
    }

    render(postsCategories, postsAffirmations){
        this.div.innerHTML = `
            <h3>${this.getCategory(postsCategories)}</h3>
            <p class="post-content">${this.content}</p>
            ${this.getAffirmations(postsAffirmations)}</br>
            <button data-post-id=${this.id} class="like-btn">&#x2B06;</button><span>${this.likes} Likes</span>
        `

        return this.div
    }
}