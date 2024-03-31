const ghibliMovie = Vue.createApp({
    created(){
        this.isLoading = true;
        console.log("created lifecycle hook called");
        fetch('http://localhost:8888/romero-c_yun-j_APImashup/studioGhibli-api/public/movies')
        .then(res => res.json())
        .then(data => {
            console.log(data);
            this.ghibliData = data;
            this.isLoading = false;          
        })
        .catch(error => {
            console.log(error);
            this.error = "An error occurred while fetching the movies from server.";
        })
    },
    data() {
        return {
            ghibliData: [],
            selectedMovieId: null,
            movieDesc: "",
            directorName: "",
            producerName: "",
            releaseDate: "",
            runningTime: "",
            ratingScore: "",
            movieImage: "",
            error: "",
            isLoading: false, 
            spinner: `<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="margin: auto; background: none; display: block; shape-rendering: auto;" width="100px" height="100px" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid">
            <g transform="rotate(0 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-1.328502415458937s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(30 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-1.2077294685990336s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(60 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-1.0869565217391304s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(90 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-0.9661835748792269s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(120 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-0.8454106280193235s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(150 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-0.7246376811594202s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(180 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-0.6038647342995168s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(210 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-0.48309178743961345s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(240 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-0.3623188405797101s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(270 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-0.24154589371980673s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(300 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="-0.12077294685990336s" repeatCount="indefinite"></animate>
              </rect>
            </g><g transform="rotate(330 50 50)">
              <rect x="47" y="24" rx="3" ry="6" width="6" height="12" fill="#ffd54e">
                <animate attributeName="opacity" values="1;0" keyTimes="0;1" dur="1.4492753623188404s" begin="0s" repeatCount="indefinite"></animate>
              </rect>
            </g>
            <!-- [ldio] generated by https://loading.io/ --></svg>`
        };
    },
    methods: {
        getMovie(movieId) {
            this.isLoading = true;
            fetch(`https://ghibliapi.vercel.app/films/${movieId}`)
            .then(res => res.json())
            .then(movie => {
                console.log(movie);
                this.error = false;
                this.movieDesc = movie.description ?? 'Not available';
                this.directorName = movie.director ?? 'Not available';
                this.producerName = movie.producer ?? 'Not available';
                this.releaseDate = movie.release_date ?? 'Not available';
                this.runningTime = movie.running_time ?? 'Not available';
                this.ratingScore = movie.rt_score ?? 'Not available';
                this.movieImage = movie.image ?? 'Not available';
                this.isLoading = false;
            })
            .catch(error => {
                this.error = "An error occurred while fetching the movie details.";
            })
        }
    }
})

ghibliMovie.mount("#app");