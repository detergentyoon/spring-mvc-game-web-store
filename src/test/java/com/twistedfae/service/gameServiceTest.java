package com.twistedfae.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mysql.cj.log.Log;
import com.twistedfae.mapper.gameMapperTest;
import com.twistedfae.service.gameService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class gameServiceTest {
	
	private static final Logger log = LoggerFactory.getLogger(gameMapperTest.class);
	
	@Autowired
	private gameService service;

//	@Test
//	public void testEnroll() {
//		
//		gameVO game = new gameVO();
//		
//        game.setTitle("테스트");
//        game.setCategory("테스트");
//        game.setFranchise("테스트");
//        game.setRelease_date("테스트");
//        game.setDeveloper("테스트");
//        game.setPublisher("테스트");
//        game.setOriginal_price(new BigDecimal("10"));
//        game.setDiscount_rate(new BigDecimal("10"));
//        game.setVideo("테스트");
//        game.setThumbnail1("테스트");
//        game.setThumbnail2("테스트");
//        game.setThumbnail3("테스트");
//        game.setThumbnail4("테스트");
//        game.setThumbnail5("테스트");
//        game.setIntroduction("테스트");
//        game.setDescription("테스트");
//		
//        service.enroll(game);
//	}	
	@Test
	public void testCommentList() {
				
		service.bestgame().forEach(bestgame -> log.info("" + bestgame));
		
	}
//    public void testGETPage() {
//        
//        int game_id = 1;
//        
//        log.info("" + service.gamePage(game_id));
//        
//    }
}
