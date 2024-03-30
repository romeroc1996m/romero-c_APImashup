const bookStore = Vue.createApp({
    created(){
        // ideal to get your initial data here
        console.log("created lifecycle hook called");
        fetch('http://localhost:8888/bookstore-api/public/books')
        .then(res => res.json())
        .then(data => {
            console.log(data);
            this.booksData = data;
            
        })
        .catch(error => {
            console.log(error);
            // add code here to inform user there was an error getting the books from server
        })
    },
    data() {
        return {
            booksData: [],
            firstSentence: "",
            ratingsAverage: "",
            authorName: "",
            numberofPages: "",
            error: "",
        };
    },
    methods: {
        getBook(whichBook) {
            console.log(whichBook);
            let title = whichBook;
            let convertedTitle = title.split(' ').join('+');
            console.log(convertedTitle);

            fetch(`https://openlibrary.org/search.json?q=${convertedTitle}`)
            .then(res => res.json())
            .then(data => {
                console.log(data);
                if(data.docs.length > 0) {
                    console.log(data.docs[0]);
                    const book = data.docs[0];
                    this.error = false;
                                        // condition ? TrueExpression : FalseExpression
                    this.firstSentence = book.first_sentence ? book.first_sentence[0] : 'Not available';
                    this.ratingsAverage = book.ratings_average ? book.ratings_average.toFixed(2) : 'Not available';
                    this.authorName = book.author_name ? book.author_name[0] : 'Unknown Author';
                    this.numberofPages = book.number_of_pages_median ? book.number_of_pages_median : 'Not available';
                }else {
                    this.error = "No Book found. Try Again."
                }
            })
            .catch(error => {
                console.log("error");
                // let user know if there was an error, write to DOM!
            })
        }
    }
})

bookStore.mount("#app");