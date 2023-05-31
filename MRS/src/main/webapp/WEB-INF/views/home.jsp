<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 메인 화면 -->
<section class="main">
	<%@ include file="include/side.jsp"%>

	<div class="main-right" id="main-right">

		<ul>
			<!-- 검색 기능  -->
			<li class="search"><a>search</a></li>

			<!-- 로고 이미지 -->
			<div class="main-logo-img">
				<img id=""
					src="${pageContext.request.contextPath }/img/logo_whi.png" alt="#">
			</div>

			<!-- 노래 모음 설명 -->
			<li class="choose">
				<!-- 추천 테이블 -->
				<div class="choose-text">them by feeling</div> <!-- 추천 테이블 이미지 -->
				<div class="choose-img">
					<img data-keyword="happy" 
						src="${pageContext.request.contextPath }/img/happy.png" alt="#">
					<img data-keyword="hip"
						src="${pageContext.request.contextPath }/img/mood_2_Hip.png" alt="#"> 
					<img data-keyword="sad"
						src="${pageContext.request.contextPath }/img/mood_4_Sad.png" alt="#"> 
					<img data-keyword="nowHot"
						src="${pageContext.request.contextPath }/img/mood_1_NowHot.png" alt="#"> 
					<img data-keyword="love"
						src="${pageContext.request.contextPath }/img/happy.png" alt="#">
					<img data-keyword="solo"
						src="${pageContext.request.contextPath }/img/mood_2_Hip.png" alt="#"> 
					<img data-keyword="calmness"
						src="${pageContext.request.contextPath }/img/mood_4_Sad.png" alt="#"> 
					<img data-keyword="fresh"
						src="${pageContext.request.contextPath }/img/mood_1_NowHot.png" alt="#"> 
					<img data-keyword="party"
						src="${pageContext.request.contextPath }/img/happy.png" alt="#">
					<img data-keyword="exercise"
						src="${pageContext.request.contextPath }/img/mood_2_Hip.png" alt="#"> 
					<img data-keyword="rest"
						src="${pageContext.request.contextPath }/img/mood_4_Sad.png" alt="#"> 
					<img data-keyword="weather"
						src="${pageContext.request.contextPath }/img/mood_1_NowHot.png" alt="#">

				</div>

			</li>
		</ul>

	</div>


<%@ include file="include/detail.jsp"%>
</section>

<script type="text/javascript">

	document.getElementById('happy-btn').addEventListener('click',function(){
		location.href ="${pageContext.request.contextPath}/rcmd/spotifyTest";
	});
	
    document.getElementById('choose-imgs').addEventListener('click',e=>{
        let seedArtists = '5TnQc2N1iKlFjYD7CPGvFc';
        let seedGenres = '행복 신남';
        let seedTracks = '0EhdXt3y460mTRsi97Pyk5';
        let url = "";
        if(e.target.dataset.keyword === "happy"){
        	url = "https://api.spotify.com/v1/recommendations?limit=1&min_popularity=80&market=KR&seed_artists=4gzpq5DPGxSnKTe4SA8HAU&seed_genres=pop&seed_tracks=75JFxkI2RXiU7L9VXzMkle"
        }else if(e.target.dataset.keyword === "hip"){
        	
        }else if(e.target.dataset.keyword === "sad"){
        	
        }else if(e.target.dataset.keyword === "nowHot"){
        	
        }else if(e.target.dataset.keyword === "love"){
        	url = "https://api.spotify.com/v1/recommendations?limit=1&min_popularity=60&market=KR&seed_artists=6zn0ihyAApAYV51zpXxdEp&seed_genres=love_tracks=47CcHKISaUPsK4QkO9ERFc"
        	
        }else if(e.target.dataset.keyword === "solo"){
        	url = "https://api.spotify.com/v1/recommendations?limit=1&min_popularity=60&market=KR&seed_artists=4dB2XmMpzPxsMRnt62TbF5&seed_genres=ballad_tracks=10if3nqm7OS7qrV45v9GOg"
        	
        }else if(e.target.dataset.keyword === "calmness"){
        	
        }else if(e.target.dataset.keyword === "fresh"){
        	url = "https://api.spotify.com/v1/recommendations?limit=1&min_popularity=60&market=KR&seed_artists=0du5cEVh5yTK9QJze8zA0C&seed_genres=k-pop_tracks=32OlwWuMpZ6b0aN2RZOeMS"
        	
        }else if(e.target.dataset.keyword === "party"){
        	url = "https://api.spotify.com/v1/recommendations?limit=1&min_popularity=60&market=KR&seed_artists=0du5cEVh5yTK9QJze8zA0C&seed_genres=k-pop_tracks=32OlwWuMpZ6b0aN2RZOeMS"
        	
        }else if(e.target.dataset.keyword === "exercise"){
        	url = "https://api.spotify.com/v1/recommendations?limit=1&min_popularity=80&market=KR&seed_artists=6fOMl44jA4Sp5b9PpYCkzz&seed_genres=edm&pop_tracks=5rLyYxZNzca00ENADO9m54"
        	
        }else if(e.target.dataset.keyword === "rest"){
        	
        }else if(e.target.dataset.keyword === "weather"){
        	// 비오는날
        	url = "https://api.spotify.com/v1/recommendations?limit=1&min_popularity=80&market=KR&seed_artists=4gzpq5DPGxSnKTe4SA8HAU&seed_genres=pop_tracks=75JFxkI2RXiU7L9VXzMkle"
        	
        }
        fetch(url,
		{
            headers : {"Authorization" : `Bearer ${accessToken}`}
            }).then(res => res.json())
            .then(data => {
                console.log(data);
                console.log(data.tracks[0].name);
                console.log(data.tracks[0].artists[0].name);
                console.log(data.tracks[0].id);
                console.log(data.tracks[0].album.images[0].url);
            });
        fetch('https://api.spotify.com/v1/me',
                {
            headers : {"Authorization" : `Bearer ${accessToken}`}
            }).then(res => res.json())
            .then(data => {
                console.log(data);
                console.log(data.display_name);
                console.log(data.email);
            });
    })

</script>
