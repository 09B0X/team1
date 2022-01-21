CREATE DATABASE MovieDB; -- 1

USE MovieDB; -- 2

-- create table START
CREATE TABLE Movie (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(2000) NOT NULL
); 

CREATE TABLE Actor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    Birth DATETIME
);

CREATE TABLE Cast (
	id INT PRIMARY KEY AUTO_INCREMENT,
    movieId INT NOT NULL,
    actorId INT NOT NULL,
    FOREIGN KEY (movieId) REFERENCES Movie(id),
    FOREIGN KEY (actorId) REFERENCES Actor(id)
);

CREATE TABLE ThumbNail (
	id INT PRIMARY KEY AUTO_INCREMENT,
	movieId INT NOT NULL,
    thumbName VARCHAR(255) NOT NULL,
    FOREIGN KEY (movieId) REFERENCES Movie(id)
);


CREATE TABLE User (
	id VARCHAR(30) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    nickName VARCHAR(10) NOT NULL
);
-- create table END
-- drop table ThumbNail;

-- insert START
-- 넷플릭스 START
-- 모가디슈
INSERT INTO Movie (title, content) VALUES ('모가디슈', '소말리아 내전에서 표적이 된 남북한의 방문 외교관들. 탈출계획을 세우기 위해 서로에게 의지한다.');

INSERT INTO Actor (name) VALUES ('김윤석');
INSERT INTO Actor (name) VALUES ('조인성');
INSERT INTO Actor (name) VALUES ('허준호');

INSERT INTO Cast (movieId, actorId) VALUES (1, 1);
INSERT INTO Cast (movieId, actorId) VALUES (1, 2);
INSERT INTO Cast (movieId, actorId) VALUES (1, 3);
-- 모가디슈 END

-- 스파이더맨
INSERT INTO Movie (title, content) VALUES ('스파이더맨', '유전자를 조작한 슈퍼 거미에게 물린 고등학생 피터 파커. 그날 이후, 상상을 뛰어넘는 초능력이 생긴다. 거미줄을 쏘고, 벽을 오르고, 엄청난 파워를 뿜게 되다니! 놀림이나 당하던 나약한 시절은 끝났다. 이제 악당들을 물리칠 시간이야.');

INSERT INTO Actor (name) VALUES ('토비 맥과이어');
INSERT INTO Actor (name) VALUES ('윌럼 더포');
INSERT INTO Actor (name) VALUES ('키얼스틴 던스트');

INSERT INTO Cast (movieId, actorId) VALUES (2, 4);
INSERT INTO Cast (movieId, actorId) VALUES (2, 5);
INSERT INTO Cast (movieId, actorId) VALUES (2, 6);
-- 스파이더맨 END

-- 극한직업 
INSERT INTO Movie (title, content) VALUES ('극한직업', '범죄 조직 일당을 감시하기 위해 마약반 형사들이 위장 창업으로 치킨집을 열었다. 근데 웬일? 맛있다는 입소문을 타며 연일 문전성시를 이룬다. 드디어 숨을 재능을 발견한건가. 낮에는 치킨, 밤에는 잠복. 이곳이 진정한 수사 맛집이다!');

INSERT INTO Actor (name) VALUES ('류승룡');
INSERT INTO Actor (name) VALUES ('이하늬');
INSERT INTO Actor (name) VALUES ('진선규');

INSERT INTO Cast (movieId, actorId) VALUES (3, 7);
INSERT INTO Cast (movieId, actorId) VALUES (3, 8);
INSERT INTO Cast (movieId, actorId) VALUES (3, 9);
-- 극한직업 END

-- 캐치 미 이프 유 캔 
INSERT INTO Movie (title, content) VALUES ('캐치 미 이프 유 캔', 'FBI 요원이 사기꾼 프랭크 에벡네일 주니어의 뒤를 쫒는다. 하지만 프랭크는 수사망을 교묘히 빠져나갈 뿐 아니라 그 과정을 즐긴다.');

INSERT INTO Actor (name) VALUES ('레오나르도 디카프리오');
INSERT INTO Actor (name) VALUES ('톰 행크스');
INSERT INTO Actor (name) VALUES ('크리스토퍼 워컨');

INSERT INTO Cast (movieId, actorId) VALUES (4, 10);
INSERT INTO Cast (movieId, actorId) VALUES (4, 11);
INSERT INTO Cast (movieId, actorId) VALUES (4, 12);
-- 캐치 미 이프 유 캔 END

-- 기적 
INSERT INTO Movie (title, content) VALUES ('기적', '1980년대 변변한 교통편 하나 없는 시골 마을. 고등학생 준경이가 간이역을 만들겠다는 간정한 소망을 향해 달린다. 혼자서 해내기엔 어려운 도전. "뮤즈"와 힘을 합치면 실현 가능할지도?');

INSERT INTO Actor (name) VALUES ('박정민');
INSERT INTO Actor (name) VALUES ('이성민');
INSERT INTO Actor (name) VALUES ('임윤아');

INSERT INTO Cast (movieId, actorId) VALUES (5, 13);
INSERT INTO Cast (movieId, actorId) VALUES (5, 14);
INSERT INTO Cast (movieId, actorId) VALUES (5, 15);
-- 기적 END

-- 레드 노티스 
INSERT INTO Movie (title, content) VALUES ('레드 노티스', '전 세계에 지명 수배가 내려진 미술품 도둑과 그를 추적하는 FBI 프로파일러. 늘 한발 앞서 도망치는 사기꾼을 잡기 위해 둘은 어쩔 수 없이 힘을 합쳐야 한다. 싫어도 이를 악물고.');

INSERT INTO Actor (name) VALUES ('드웨인 존슨');
INSERT INTO Actor (name) VALUES ('라이언 레이놀즈');
INSERT INTO Actor (name) VALUES ('갤 가돗');

INSERT INTO Cast (movieId, actorId) VALUES (6, 16);
INSERT INTO Cast (movieId, actorId) VALUES (6, 17);
INSERT INTO Cast (movieId, actorId) VALUES (6, 18);
-- 레드 노티스 END

-- 인터스텔라 
INSERT INTO Movie (title, content) VALUES ('인터스텔라', '인류 멸망이 목전에 닥친 미래. 우주비행사들이 웜홀을 통해 광활한 우주를 여행하며 인류가 살 수 있는 또 다른 행성을 찾아 나선다.');

INSERT INTO Actor (name) VALUES ('메튜 맥커너히');
INSERT INTO Actor (name) VALUES ('앤 해서웨이');
INSERT INTO Actor (name) VALUES ('제시카 차스테인');

INSERT INTO Cast (movieId, actorId) VALUES (7, 19);
INSERT INTO Cast (movieId, actorId) VALUES (7, 20);
INSERT INTO Cast (movieId, actorId) VALUES (7, 21);
-- 인터스텔라 END

-- 인턴  
INSERT INTO Movie (title, content) VALUES ('인턴', '뜨거운 열정으로 단기간에 회사를 키워낸 30대 열혈 여성 CEO. 사별과 은퇴를 겪고 공허한 일상을 보내다가 새내기로 입사한 70세 남성 인턴. 문제없을까, 이 어색한 조합.');

INSERT INTO Actor (name) VALUES ('로버트 드니로');
-- 앤 해서웨이
INSERT INTO Actor (name) VALUES ('러네이 루소');

INSERT INTO Cast (movieId, actorId) VALUES (8, 22);
INSERT INTO Cast (movieId, actorId) VALUES (8, 20);
INSERT INTO Cast (movieId, actorId) VALUES (8, 23);
-- 인턴 END 

-- 장고 
INSERT INTO Movie (title, content) VALUES ('장고: 분노의 추적자', '악랄한 농장주의 손아귀에서 아내를 구하라. 자유으 몸이 된 장고가 독일인 현상금 사냥꾼과 함께 미 전역을 휩쓸며 아내 구출 작전에 나선다.');

INSERT INTO Actor (name) VALUES ('제이미 폭스');
-- 레오나르도 디카프리오
INSERT INTO Actor (name) VALUES ('크리스토프 발츠');

INSERT INTO Cast (movieId, actorId) VALUES (9, 24);
INSERT INTO Cast (movieId, actorId) VALUES (9, 10);
INSERT INTO Cast (movieId, actorId) VALUES (9, 25);
-- 장고 END

-- 개츠비 
INSERT INTO Movie (title, content) VALUES ('위대한 개츠비', '닉 캐러웨이는 이웃에 사는 의문의 백만장자 제이 개츠비에게 매료되지만, 개츠비의 집요한 사랑이 비극의 소용돌이로 빠져 들어가는 것을 지켜본다.');

-- 레오나르도 디카프리오
-- 토비 맥과이어
INSERT INTO Actor (name) VALUES ('캐리 멀리건');

INSERT INTO Cast (movieId, actorId) VALUES (10, 10);
INSERT INTO Cast (movieId, actorId) VALUES (10, 4);
INSERT INTO Cast (movieId, actorId) VALUES (10, 26);
-- 개츠비 END
-- 넷플릭스 END


-- 왓챠 START
-- 마법사의 돌
INSERT INTO Movie (title, content) VALUES ('해리포터와 마법사의 돌', '이모네 식구의 갖은 구박을 받으며 살아가던 고아 소년 해리포터. 큰 기대 없이 맞이한 11번째 생일 날, 해리는 호그와트 마법학교에 입학 초대를 받고 자신의 진정한 정체를 알게 된다.');

INSERT INTO Actor (name) VALUES ('다니엘 래드클리프');
INSERT INTO Actor (name) VALUES ('엠마 왓슨');
INSERT INTO Actor (name) VALUES ('루퍼트 그린트');

INSERT INTO Cast (movieId, actorId) VALUES (11, 27);
INSERT INTO Cast (movieId, actorId) VALUES (11, 28);
INSERT INTO Cast (movieId, actorId) VALUES (11, 29);
-- 마법사의 돌 END

-- 비밀의 방
INSERT INTO Movie (title, content) VALUES ('해리포터와 비밀의 방', '여름방학을 보내던 해리 앞에 꼬마 집요정 도비가 나타난다. 도비는 그에게 호그와트에 돌아가면 무서운 일을 당할 것이라 경고하지만, 해리는 굴하지 않고 학교로 돌아가 개학을 맞이한다.');

INSERT INTO Cast (movieId, actorId) VALUES (12, 27);
INSERT INTO Cast (movieId, actorId) VALUES (12, 28);
INSERT INTO Cast (movieId, actorId) VALUES (12, 29);
-- 비밀의 방 END

-- 아즈카반
INSERT INTO Movie (title, content) VALUES ('해리포터와 아즈카반의 죄수', '해리는 실수로 규칙을 어기고 머글 세계에서 마법을 사용한다. 징계를 걱정하던 해리는 한 술집에서 마법부 장관 코넬리우스 퍼지를 만나고, 아즈카반을 탈옥한 죄수 시리우스 블랙이 자신을 찾는 것을 알게 된다.');

INSERT INTO Cast (movieId, actorId) VALUES (13, 27);
INSERT INTO Cast (movieId, actorId) VALUES (13, 28);
INSERT INTO Cast (movieId, actorId) VALUES (13, 29);
-- 아즈카반 END

-- 불의 잔 
INSERT INTO Movie (title, content) VALUES ('해리포터와 불의 잔', '매일 악몽을 꾸며 이마의 상처에 심한 통증을 느끼는 해리. 친구들과 퀴디치 월드컵을 보러 간 해리는 악몽에서 벗어나 기뻐하지만, 캠프장 하늘에 나타난 볼드모트의 표식을 보고 두려움에 가득 찬다.');

INSERT INTO Cast (movieId, actorId) VALUES (14, 27);
INSERT INTO Cast (movieId, actorId) VALUES (14, 28);
INSERT INTO Cast (movieId, actorId) VALUES (14, 29);
-- 불의 잔 END

-- 불사조 기사단
INSERT INTO Movie (title, content) VALUES ('해리포터와 불사조 기사단', '볼드모트의 귀환을 부정하는 마법부는 호그와트 감시를 위해 엄브리지 교수를 파견하고 덤블도어와 학생들을 막아선다. 한편 해리는 비밀 단체 불사조 기사단과 함께 볼드모트에 맞서기 위한 훈련을 시작한다.');

INSERT INTO Cast (movieId, actorId) VALUES (15, 27);
INSERT INTO Cast (movieId, actorId) VALUES (15, 28);
INSERT INTO Cast (movieId, actorId) VALUES (15, 29);
-- 불사조 기사단 END

-- 혼혈왕자 
INSERT INTO Movie (title, content) VALUES ('해리포터와 혼혈왕자', '더욱 강력해진 어둠의 세력들은 호그와트뿐만 아니라 머글 세계까지 위협한다. 이에 덤블도어는 해리와 함께 볼드모트의 영혼을 나누어 놓은 7개의 호크룩스를 파괴하기 위한 여정을 떠난다.');

INSERT INTO Cast (movieId, actorId) VALUES (16, 27);
INSERT INTO Cast (movieId, actorId) VALUES (16, 28);
INSERT INTO Cast (movieId, actorId) VALUES (16, 29);
-- 혼혈왕자 END

-- 죽음의 성물1
INSERT INTO Movie (title, content) VALUES ('해리포터와 죽음의 성물1', '마법부는 죽음을 먹는 자들에게 점령당하고 호그와트는 위기에 빠진다. 이에 해리와 론, 헤르미온느는 볼드모트를 물리칠 수 있는 유일한 단서이자 그의 영혼이 담긴 성물 호크룩스를 찾아 나선다.');

INSERT INTO Cast (movieId, actorId) VALUES (17, 27);
INSERT INTO Cast (movieId, actorId) VALUES (17, 28);
INSERT INTO Cast (movieId, actorId) VALUES (17, 29);
-- 죽음의 성물1 END

-- 죽음의 성물2
INSERT INTO Movie (title, content) VALUES ('해리포터와 죽음의 성물2', '볼드모트를 주축으로 한 죽음을 먹는 자들과 불사조 기사단의 마법전투로 호그와트는 거대한 전쟁터가 된다. 전쟁의 틈에서 해리는 스네이프의 비밀과 함께 볼드모트를 죽일 마지막 호크룩스의 단서를 찾는다.');

INSERT INTO Cast (movieId, actorId) VALUES (18, 27);
INSERT INTO Cast (movieId, actorId) VALUES (18, 28);
INSERT INTO Cast (movieId, actorId) VALUES (18, 29);
-- 죽음의 성물2 END

-- 매트릭스  
INSERT INTO Movie (title, content) VALUES ('매트릭스', '가상 현실 "매트릭스" 속에서 인간들은 현실을 인식할 수 없게 되었다. 매트릭스를 빠져나온 모피어스는 인류를 구할 영웅을 찾아 헤매고, 평범한 회사원이자 해커인 네오를 지목한다.');

INSERT INTO Actor (name) VALUES ('키아누 리브스');
INSERT INTO Actor (name) VALUES ('로렌스 피쉬번');
INSERT INTO Actor (name) VALUES ('조 판톨리아노');

INSERT INTO Cast (movieId, actorId) VALUES (19, 30);
INSERT INTO Cast (movieId, actorId) VALUES (19, 31);
INSERT INTO Cast (movieId, actorId) VALUES (19, 32);
-- 매트릭스 END 

-- 매트릭스2 
INSERT INTO Movie (title, content) VALUES ('매트릭스2: 리로리드', '시온이 컴퓨터 군단에게 장악될 위기에 처한다. 시온의 시민들은 오라클의 예언이 이루어져 전쟁이 끝날 것이라는 모피어스의 신념에 용기를 얻고, 네오에게 모든 희망과 기대를 건다.');

INSERT INTO Cast (movieId, actorId) VALUES (20, 30);
INSERT INTO Cast (movieId, actorId) VALUES (20, 31);
INSERT INTO Cast (movieId, actorId) VALUES (20, 32);
-- 매트릭스2 END
-- 왓챠 END


-- 디즈니 플러스 START
-- 퍼스트어벤져
INSERT INTO Movie (title, content) VALUES ('퍼스트어벤져', '군복무 부적합 판정을 받은 스티브 로저스는 극비 연구 프로젝트에 자원해 캡틴 아메리카가 된다.');

INSERT INTO Actor (name) VALUES ('크리스 에반스');
INSERT INTO Actor (name) VALUES ('토미 리 존스');
INSERT INTO Actor (name) VALUES ('휴고 위빙');

INSERT INTO Cast (movieId, actorId) VALUES (21, 33);
INSERT INTO Cast (movieId, actorId) VALUES (21, 34);
INSERT INTO Cast (movieId, actorId) VALUES (21, 35);
-- 퍼스트어벤져 END

-- 캡틴 마블
INSERT INTO Movie (title, content) VALUES ('캡틴 마블', '1995년, 공군 파일럿 시절의 기억을 잃고 크리족 전사로 살아가던 캐럴 댄버스가 지구에 불시착한다. 쉴드 요원 닉 퓨리에게 발견되어 팀을 이룬 그들은 지구로 향하는 더 큰 위협을 감지하고 힘을 합쳐 전쟁을 끝내야 하는데… "어벤져스: 엔드게임"으로 향하는 라스트 스텝! 마블을 책임질 새로운 히어로의 탄생!');

INSERT INTO Actor (name) VALUES ('브리 라슨');
INSERT INTO Actor (name) VALUES ('사무엘 L 잭슨');
INSERT INTO Actor (name) VALUES ('벤 멘델슨');
INSERT INTO Actor (name) VALUES ('주드 로');

INSERT INTO Cast (movieId, actorId) VALUES (22, 53);
INSERT INTO Cast (movieId, actorId) VALUES (22, 36);
INSERT INTO Cast (movieId, actorId) VALUES (22, 37);
INSERT INTO Cast (movieId, actorId) VALUES (22, 38);
-- 캡틴 마블 END

-- 아이언맨 
INSERT INTO Movie (title, content) VALUES ('아이언맨', '적지에서의 갑작스런 공격에서 살아남은 화려한 기업가 토니 스타크는 최첨단 수트를 만들어 세계를 수호하는 아이언맨이 된다.');

INSERT INTO Actor (name) VALUES ('로버트 다우니 주니어');
INSERT INTO Actor (name) VALUES ('테렌스 하워드');
INSERT INTO Actor (name) VALUES ('제프 브리지스');

INSERT INTO Cast (movieId, actorId) VALUES (23, 39);
INSERT INTO Cast (movieId, actorId) VALUES (23, 40);
INSERT INTO Cast (movieId, actorId) VALUES (23, 41);
-- 아이언맨 END

-- 아이언맨2
INSERT INTO Movie (title, content) VALUES ('아이언맨2', '본인이 아이언맨이라고 밝힌 토니 스타크는 세계 평화를 가져왔다고 생각한다. 어쩌면 착각일지도... 토니는 자신을 무너뜨리려는 미친 사람이 존재할 뿐 아니라 목숨을 부지하기 위해 만든 기술에 의해 죽어 간다는 사실도 알게 된다.');

-- 로버트 다우니 주니어
INSERT INTO Actor (name) VALUES ('기네스 펠트로');
INSERT INTO Actor (name) VALUES ('스칼렛 요한슨');

INSERT INTO Cast (movieId, actorId) VALUES (24, 39);
INSERT INTO Cast (movieId, actorId) VALUES (24, 42);
INSERT INTO Cast (movieId, actorId) VALUES (24, 43);
-- 아이언맨2 END

-- 토르 
INSERT INTO Movie (title, content) VALUES ('토르: 천둥의 신', '신의 세계를 어지럽힌 천둥의 신, 인간의 세계로 추방당하다! 신으로 태어난 불멸의 슈퍼히어로의 탄생. 두 개의 세계, 한 명의 영웅 그들의 운명을 건 최후의 격돌이 시작된다!');

INSERT INTO Actor (name) VALUES ('크리스 헴스워스');
INSERT INTO Actor (name) VALUES ('나탈리 포트만');
INSERT INTO Actor (name) VALUES ('톰 히들스턴');

INSERT INTO Cast (movieId, actorId) VALUES (25, 44);
INSERT INTO Cast (movieId, actorId) VALUES (25, 45);
INSERT INTO Cast (movieId, actorId) VALUES (25, 46);
-- 토르 END

-- 어벤져스
INSERT INTO Movie (title, content) VALUES ('어벤져스', '쉴드의 국장 닉 퓨리는 악당 로키와 그의 군단으로부터 지구를 구하기 위해 최강의 슈퍼히어로들을 불러모으는 "어벤져스" 작전을 개시한다.');

-- 로버트 다우니 주니어
-- 크리스 에반스
INSERT INTO Actor (name) VALUES ('마크 러팔로');

INSERT INTO Cast (movieId, actorId) VALUES (26, 39);
INSERT INTO Cast (movieId, actorId) VALUES (26, 33);
INSERT INTO Cast (movieId, actorId) VALUES (26, 47);
-- 어벤져스 END

-- 토르: 다크월드 
INSERT INTO Movie (title, content) VALUES ('토르: 다크월드 ', '태초의 어둠이 덮친 세계, 새로운 전쟁이 시작된다! "다크 엘프"의 리더 "말레키스"는 "에테르"를 되찾기 위해 제인과 아스가르드를 공격하는데…');

-- 크리스 헴스워스
-- 나탈리 포트만
-- 톰 히들스턴

INSERT INTO Cast (movieId, actorId) VALUES (27, 44);
INSERT INTO Cast (movieId, actorId) VALUES (27, 45);
INSERT INTO Cast (movieId, actorId) VALUES (27, 46);
-- 토르: 다크월드  END

-- 아이언맨3  
INSERT INTO Movie (title, content) VALUES ('아이언맨3', '모든 것을 잃어버린 토니 스타크에게 던져진 머릿속을 떠나지 않는 물음. 그가 아이언맨인가, 수트가 아이언맨인가?');

-- 로버트 다우니 주니어
-- 기네스 펠트로
INSERT INTO Actor (name) VALUES ('돈 치들');

INSERT INTO Cast (movieId, actorId) VALUES (28, 39);
INSERT INTO Cast (movieId, actorId) VALUES (28, 42);
INSERT INTO Cast (movieId, actorId) VALUES (28, 48);
-- 아이언맨3 END 

-- 캡틴 아메리카: 윈터솔져 
INSERT INTO Movie (title, content) VALUES ('캡틴 아메리카: 윈터솔져', '워싱턴 D.C에서 지내는 "캡틴 아메리카" 스티브 로저스. 그는 종적을 감춘 강력한 적과 싸우기 위해 블랙 위도우, 새로운 동맹 팔콘과 팀을 이룬다.');

-- 크리스 에반스
-- 스칼렛 요한슨
INSERT INTO Actor (name) VALUES ('세바스찬 스탠');

INSERT INTO Cast (movieId, actorId) VALUES (29, 33);
INSERT INTO Cast (movieId, actorId) VALUES (29, 43);
INSERT INTO Cast (movieId, actorId) VALUES (29, 49);
-- 캡틴 아메리카: 윈터솔져 END

-- 가디언즈 오브 갤럭시 
INSERT INTO Movie (title, content) VALUES ('가디언즈 오브 갤럭시', '뜻하지 않게 은하계의 절대악 타노스와 로난의 타겟이 된 피터는 감옥에서 만난 암살자 가모라, 거구의 파이터 드랙스, 현상금 사냥꾼 로켓과 그루트 콤비와 불편한 동맹을 맺고 일명 "가디언즈 오브 갤럭시"를 결성한다');

INSERT INTO Actor (name) VALUES ('크리스 프랫');
INSERT INTO Actor (name) VALUES ('조 샐다나');
INSERT INTO Actor (name) VALUES ('빈 디젤');

INSERT INTO Cast (movieId, actorId) VALUES (30, 50);
INSERT INTO Cast (movieId, actorId) VALUES (30, 51);
INSERT INTO Cast (movieId, actorId) VALUES (30, 52);
-- 가디언즈 오브 갤럭시 END
-- 디즈니 플러스 END

-- Thumbnail Insert
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (1, '모가디슈.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (2, '스파이더맨.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (3, '극한직업.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (4, '캐치미.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (5, '기적.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (6, '레드노티스.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (7, '인터스텔라.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (8, '인턴.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (9, '장고.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (10, '개츠비.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (11, '해리포터1.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (12, '해리포터2.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (13, '해리포터3.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (14, '해리포터4.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (15, '해리포터5.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (16, '해리포터6.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (17, '해리포터7.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (18, '해리포터8.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (19, '매트릭스.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (20, '매트릭스2.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (21, '퍼스트어벤져.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (22, '캡틴 마블.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (23, '아이언맨.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (24, '아이언맨2.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (25, '토르1.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (26, '어벤져스.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (27, '토르2.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (28, '아이언맨3.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (29, '캡틴.jpg');
INSERT INTO ThumbNail (movieId, ThumbName) VALUES (30, '가오갤.jpg');
-- insert END


CREATE TABLE Kategorie (
	id INT PRIMARY KEY AUTO_INCREMENT,
    movieId INT NOT NULL,
    kate VARCHAR(200),
    FOREIGN KEY (movieId) REFERENCES Movie(id)
);
-- Kategorie Insert
INSERT INTO Kategorie (movieId, kate) VALUES (1, '밀리터리');
INSERT INTO Kategorie (movieId, kate) VALUES (1, '실화 바탕');
INSERT INTO Kategorie (movieId, kate) VALUES (1, '도서 원작');

INSERT INTO Kategorie (movieId, kate) VALUES (2, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (2, '액션 어드벤쳐');
INSERT INTO Kategorie (movieId, kate) VALUES (2, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (3, '액션 어드벤쳐');
INSERT INTO Kategorie (movieId, kate) VALUES (3, '코미디');
INSERT INTO Kategorie (movieId, kate) VALUES (3, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (4, '실화 바탕');
INSERT INTO Kategorie (movieId, kate) VALUES (4, '도서 원작');
INSERT INTO Kategorie (movieId, kate) VALUES (4, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (5, '드라마');

INSERT INTO Kategorie (movieId, kate) VALUES (6, '액션 어드벤쳐');
INSERT INTO Kategorie (movieId, kate) VALUES (6, '코미디');
INSERT INTO Kategorie (movieId, kate) VALUES (6, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (7, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (7, '액션 어드벤쳐');
INSERT INTO Kategorie (movieId, kate) VALUES (7, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (8, '코미디');
INSERT INTO Kategorie (movieId, kate) VALUES (8, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (9, '드라마');
INSERT INTO Kategorie (movieId, kate) VALUES (9, '서부');
INSERT INTO Kategorie (movieId, kate) VALUES (9, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (10, '시대물');
INSERT INTO Kategorie (movieId, kate) VALUES (10, '도서 원작');

INSERT INTO Kategorie (movieId, kate) VALUES (11, '모험');
INSERT INTO Kategorie (movieId, kate) VALUES (11, '가족');
INSERT INTO Kategorie (movieId, kate) VALUES (11, '화려한');
INSERT INTO Kategorie (movieId, kate) VALUES (11, '영국');
INSERT INTO Kategorie (movieId, kate) VALUES (11, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (12, '모험');
INSERT INTO Kategorie (movieId, kate) VALUES (12, '가족');
INSERT INTO Kategorie (movieId, kate) VALUES (12, '화려한');
INSERT INTO Kategorie (movieId, kate) VALUES (12, '영국');
INSERT INTO Kategorie (movieId, kate) VALUES (12, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (13, '모험');
INSERT INTO Kategorie (movieId, kate) VALUES (13, '가족');
INSERT INTO Kategorie (movieId, kate) VALUES (13, '성장');
INSERT INTO Kategorie (movieId, kate) VALUES (13, '화려한');
INSERT INTO Kategorie (movieId, kate) VALUES (13, '영국');
INSERT INTO Kategorie (movieId, kate) VALUES (13, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (14, '모험');
INSERT INTO Kategorie (movieId, kate) VALUES (14, '가족');
INSERT INTO Kategorie (movieId, kate) VALUES (14, '성장');
INSERT INTO Kategorie (movieId, kate) VALUES (14, '화려한');
INSERT INTO Kategorie (movieId, kate) VALUES (14, '영국');
INSERT INTO Kategorie (movieId, kate) VALUES (14, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (15, '판타지');
INSERT INTO Kategorie (movieId, kate) VALUES (15, '액션');
INSERT INTO Kategorie (movieId, kate) VALUES (15, '성장');
INSERT INTO Kategorie (movieId, kate) VALUES (15, '화려한');
INSERT INTO Kategorie (movieId, kate) VALUES (15, '영국');
INSERT INTO Kategorie (movieId, kate) VALUES (15, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (16, '모험');
INSERT INTO Kategorie (movieId, kate) VALUES (16, '액션');
INSERT INTO Kategorie (movieId, kate) VALUES (16, '성장');
INSERT INTO Kategorie (movieId, kate) VALUES (16, '화려한');
INSERT INTO Kategorie (movieId, kate) VALUES (16, '영국');
INSERT INTO Kategorie (movieId, kate) VALUES (16, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (17, '모험');
INSERT INTO Kategorie (movieId, kate) VALUES (17, '가족');
INSERT INTO Kategorie (movieId, kate) VALUES (17, '우정');
INSERT INTO Kategorie (movieId, kate) VALUES (17, '화려한');
INSERT INTO Kategorie (movieId, kate) VALUES (17, '영국');
INSERT INTO Kategorie (movieId, kate) VALUES (17, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (18, '모험');
INSERT INTO Kategorie (movieId, kate) VALUES (18, '드라마');
INSERT INTO Kategorie (movieId, kate) VALUES (18, '성장');
INSERT INTO Kategorie (movieId, kate) VALUES (18, '화려한');
INSERT INTO Kategorie (movieId, kate) VALUES (18, '영국');
INSERT INTO Kategorie (movieId, kate) VALUES (18, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (19, '판타지');
INSERT INTO Kategorie (movieId, kate) VALUES (19, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (19, '인공지능');
INSERT INTO Kategorie (movieId, kate) VALUES (19, '호주');
INSERT INTO Kategorie (movieId, kate) VALUES (19, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (20, '액션');
INSERT INTO Kategorie (movieId, kate) VALUES (20, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (20, '악당');
INSERT INTO Kategorie (movieId, kate) VALUES (20, '인공지능');
INSERT INTO Kategorie (movieId, kate) VALUES (20, '호주');
INSERT INTO Kategorie (movieId, kate) VALUES (20, '미국');

INSERT INTO Kategorie (movieId, kate) VALUES (21, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (21, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (21, '액션 어드벤쳐');

INSERT INTO Kategorie (movieId, kate) VALUES (22, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (22, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (22, '액션 어드벤쳐');

INSERT INTO Kategorie (movieId, kate) VALUES (23, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (23, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (23, '액션 어드벤쳐');

INSERT INTO Kategorie (movieId, kate) VALUES (24, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (24, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (24, '액션 어드벤쳐');

INSERT INTO Kategorie (movieId, kate) VALUES (25, '판타지');
INSERT INTO Kategorie (movieId, kate) VALUES (25, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (25, '액션 어드벤쳐');

INSERT INTO Kategorie (movieId, kate) VALUES (26, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (26, '판타지');
INSERT INTO Kategorie (movieId, kate) VALUES (26, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (26, '액션 어드벤쳐');

INSERT INTO Kategorie (movieId, kate) VALUES (27, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (27, '판타지');
INSERT INTO Kategorie (movieId, kate) VALUES (27, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (27, '액션 어드벤쳐');

INSERT INTO Kategorie (movieId, kate) VALUES (28, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (28, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (28, '액션 어드벤쳐');

INSERT INTO Kategorie (movieId, kate) VALUES (29, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (29, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (29, '액션 어드벤쳐');

INSERT INTO Kategorie (movieId, kate) VALUES (30, 'SF');
INSERT INTO Kategorie (movieId, kate) VALUES (30, '코미디');
INSERT INTO Kategorie (movieId, kate) VALUES (30, '슈퍼 히어로');
INSERT INTO Kategorie (movieId, kate) VALUES (30, '액션 어드벤쳐');
-- insert END


-- select START
SELECT m.id 번호, m.title 제목, a.name 배우, t.thumbName 썸네일, m.content 줄거리 FROM Cast c 
JOIN Actor a ON c.actorId = a.id
JOIN Movie m ON c.movieId = m.id
JOIN ThumbNail t ON c.movieId = t.movieId
ORDER BY m.id;

SELECT m.id 번호, m.title 제목, k.kate 장르 FROM Movie m
JOIN Kategorie k ON m.id = k.movieId
ORDER BY m.id; 

SELECT m.title '제목', a.name '배우' FROM Cast c
JOIN Actor a ON c.actorId = a.id
JOIN Movie m ON c.movieId = m.id
WHERE a.name = '레오나르도 디카프리오'
ORDER BY m.id;

SELECT a.name '스파이더맨 배우' FROM Cast c
JOIN Actor a ON c.actorId = a.id
JOIN Movie m ON c.movieId = m.id
WHERE m.title = '스파이더맨'
ORDER BY m.id;
-- select END


DESC Movie;
DESC Actor;
DESC Cast;
DESC ThumbNail;
DESC Kategorie;

SELECT * FROM Movie;
SELECT * FROM Actor;
SELECT * FROM Cast;
SELECT * FROM ThumbNail;
SELECT * FROM Kategorie;
SELECT * FROM User;


SELECT  name ,  -- 중복되는 데이터
         COUNT(*) c-- 중복 갯수
FROM Actor              -- 중복조사를 할 테이블 이름
GROUP BY name     -- 중복되는 항목 조사를 할 컬럼
HAVING c > 1 ;