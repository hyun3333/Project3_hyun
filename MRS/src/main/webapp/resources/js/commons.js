
//공공데이터 날씨
	/* window.onload = () => {
			
			const rsRow = [...document.querySelectorAll('#resultRow *')];

			// let date = new date();
			let currentDate = "20230522";
			let currentTime = "1700";
			let key = 'biMFKPX2rMio1vYOKily9qXhvrK7ATHwXvrB%2FUi4f0x9jTnToB%2BOzwAOK81JSQHiqe1WZGA6FL%2BIdr0p3%2F%2F%2BJA%3D%3D';
			let nX = '55';
			let nY = '127';
			
			let temper,sky,pty; // 기온, 하늘상태, 강수형태
			
			let url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtFcst';
			let queryParams = '?serviceKey='+key
					+'&pageNo=1&numOfRows=25&dataType=JSON'
					+'&base_date='+currentDate
					+'&base_time='+currentTime
					+'&nx='+nX
					+'&ny='+nY
			
					fetch(url+queryParams).then(res => res.json())
				.then(data =>{
					console.log(data);
					console.log(data.response);
					console.log(data.response.body);
					console.log(data.response.body.items);
					console.log(data.response.body.items.item);
					let rs = data.response.body.items.item;
					
					console.log(rs[6].fcstValue); //강수 형태
					pty=rs[6].fcstValue; //강수 형태
					console.log(rs[18].fcstValue); //하늘 형태
					sky=rs[18].fcstValue
					console.log(rs[24].fcstValue); //하늘 형태
					temper=rs[24].fcstValue

					rsRow[0].textContent=currentDate;
					rsRow[1].textContent=currentTime;
					rsRow[2].textContent=sky;
					rsRow[3].textContent=pty;
					rsRow[4].textContent=temper;
					
				});

		} */
		
	      
	      //  클릭시 페이지 넘어가는것처럼 보이게 하기
            const $mainBtn = document.querySelector(".mainBtn");
            const $videoBtn = document.querySelector(".videoBtn");
            const $mainPage = document.getElementById("main-right");
            const $videoPage = document.getElementById("video-right");
            const $videoImg = document.querySelector(".cover-img");

            $mainBtn.onclick = function() {
                console.log("메인페이지 클릭");
                $mainPage.style.display = "block";
                $videoPage.style.display = "none";
            }

             $videoBtn.onclick = function() {
             	console.log("비디오페이지 클릭");
            //  if($videoImg.src == 'http://localhost/mrs/success?message=Authentication+successful%21') {
            //  alert('노래를 먼저 선택해주세요');
			// 	return;
            //     }
				$mainPage.style.display = "none";
                $videoPage.style.display = "flex";
             }
			
           
	      