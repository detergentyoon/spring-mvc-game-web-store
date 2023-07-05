package com.twistedfae.mapper;

import java.math.BigDecimal;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.twistedfae.mapper.gameMapper;
import com.twistedfae.model.gameVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class gameMapperTest {
	
	private static final Logger log = LoggerFactory.getLogger(gameMapperTest.class);
	
	@Autowired
	private gameMapper mapper;
	
	@Test
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
//        mapper.enroll(game);
//	}
//	public void testCommentList() {
//		
//		List list = mapper.bestcmt();
//		
//		list.forEach(comment -> log.info("" + comment));
//		
//	}
	public void testgamePage() {
		
		List list = mapper.bestgame();
		
		list.forEach(bestgame -> log.info("" + bestgame));
		
	}
	
}
