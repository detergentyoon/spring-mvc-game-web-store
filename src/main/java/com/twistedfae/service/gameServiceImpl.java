package com.twistedfae.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.twistedfae.mapper.gameMapper;
import com.twistedfae.model.CartVO;
import com.twistedfae.model.LibraryVO;
import com.twistedfae.model.System_requirementVO;
import com.twistedfae.model.WishVO;
import com.twistedfae.model.commentVO;
import com.twistedfae.model.gameVO;

@Service
public class gameServiceImpl implements gameService {

	@Autowired
	private gameMapper mapper;
	
	@Override
	public void enroll(gameVO game) {
		
		mapper.enroll(game);
		
	}
	@Override
	public void commentInsert(commentVO comment) {
		
		mapper.commentInsert(comment);
		
	}
	@Override
	public void libraryInsert(LibraryVO library) {
		
		mapper.libraryInsert(library);
		
	}
	@Override
	public List<commentVO> bestcmt(@Param("game_id") int game_id) {
		
		return mapper.bestcmt(game_id);
	}
	@Override
	public List<commentVO> recentcmt(@Param("game_id") int game_id) {
		
		return mapper.recentcmt(game_id);
	}
	@Override
	public commentVO mycmt(@Param("game_id") int game_id, @Param("user_id") String user_id) {
	    return mapper.mycmt(game_id, user_id);
	}
	@Override
	public gameVO gamePage(@Param("game_id") int game_id) {
		
		return mapper.gamePage(game_id);
	}
	@Override
	public System_requirementVO sysreq(@Param("game_id") int game_id) {
		
		return mapper.sysreq(game_id);
	}
	@Override
	public LibraryVO librarySelect(@Param("game_id") int game_id, @Param("user_id") String user_id) {
		
		return mapper.librarySelect(game_id, user_id);
	}
	
	@Override
	public List<gameVO> bestgame() {
		
		return mapper.bestgame();
	}
	@Override
	public List<gameVO> salegame() {
		
		return mapper.salegame();
	}
	@Override
	public List<gameVO> randsalegame() {
		
		return mapper.randsalegame();
	}
	@Override
	public void wishInsert(WishVO wish) {
		
		mapper.wishInsert(wish);
		
	}
	@Override
	public void cartInsert(CartVO cart) {
		
		mapper.cartInsert(cart);
		
	}
	@Override
	public void deleteWish(String user_id, int game_id) {
		
		mapper.deleteWish(user_id, game_id);
		
	}
	@Override
	public WishVO mywhisCheck(String user_id, int game_id) {
		
		return mapper.mywhisCheck(user_id, game_id);
	}
	@Override
	public List<gameVO> myCategory(String user_id, String category, int game_id) {
		
		return mapper.myCategory(user_id, category, game_id);
	}
	@Override
	public List<gameVO> sameCategory(String category, int game_id) {
		
		return mapper.sameCategory(category, game_id);
	}
	@Override
	public void nestedReplyInsert(commentVO comment) {
		
		mapper.nestedReplyInsert(comment);
		
	}
	@Override
	public void nestedReplyUpdate(commentVO comment) {
		
		mapper.nestedReplyUpdate(comment);
		
	}
	@Override
	public commentVO checkReply(commentVO comment) {
		
		return mapper.checkReply(comment);
	}
	@Override
	public List<WishVO> mywish(String user_id) {
		
		return mapper.mywish(user_id);
	}
	@Override
	public CartVO mycartCheck(String user_id, int game_id) {
		
		return mapper.mycartCheck(user_id, game_id);
	}	
	@Override
	public List<CartVO> mycart(String user_id) {
		
		return mapper.mycart(user_id);
	}
	@Override
	public void deleteCart(CartVO cart) {
		
		mapper.deleteCart(cart);
	}
	@Override
	public void deleteAllCart(CartVO cart) {
		
		mapper.deleteAllCart(cart);
		
	}
	@Override
	public List<gameVO> recommendGame() {
		
		return mapper.recommendGame();
	}
	@Override
	public void buycountUpdate(int game_id) {
		
		mapper.buycountUpdate(game_id);
		
	}
	@Override
	public commentVO commentSelect(int comment_id) {
		
		return mapper.commentSelect(comment_id);
	}
	@Override
	public List<commentVO> nestedReplySelect(int comment_id) {
	
		return mapper.nestedReplySelect(comment_id);
	}
}
