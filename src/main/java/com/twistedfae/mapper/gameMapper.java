package com.twistedfae.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.twistedfae.model.CartVO;
import com.twistedfae.model.Criteria;
import com.twistedfae.model.LibraryVO;
import com.twistedfae.model.System_requirementVO;
import com.twistedfae.model.WishVO;
import com.twistedfae.model.commentVO;
import com.twistedfae.model.gameVO;

public interface gameMapper {
	
	//게임 등록
	public void enroll(gameVO game);
	//댓글 등록
	public void commentInsert(commentVO comment);
	//찜 목록 추가
	public void wishInsert(WishVO wish);
	//장바구니 추가
	public void cartInsert(CartVO cart);
	//라이브러리 추가
	public void libraryInsert(LibraryVO library);
	//유용한 댓글 출력
	public List<commentVO> bestcmt(@Param("game_id") int game_id);
	//최근 댓글 출력
	public List<commentVO> recentcmt(@Param("game_id") int game_id);
	//내 댓글 조회
	public commentVO mycmt(@Param("game_id") int game_id, @Param("user_id") String user_id);	
	//게임 페이지 조회
	public gameVO gamePage(@Param("game_id") int game_id);
	//게임 요구사항 조회
	public System_requirementVO sysreq(@Param("game_id") int game_id);
	//라이브러리 조회
	public LibraryVO librarySelect(@Param("game_id") int game_id, @Param("user_id") String user_id);
	//인기 게임 조회
	public List<gameVO> bestgame();
	//랜덤 인기 게임 조회
	public List<gameVO> recommendGame();
	//할인 게임 조회
	public List<gameVO> salegame();
	//랜덤 할인 게임 조회
	public List<gameVO> randsalegame();
	//장바구니 조회
	public List<CartVO> mycart(@Param("user_id") String user_id);
	//라이브러리에 따른 같은 카테고리 조회
	public List<gameVO> myCategory(@Param("user_id") String user_id, @Param("category") String category, @Param("game_id") int game_id);
	//같은 카테고리 조회
	public List<gameVO> sameCategory(@Param("category") String category, @Param("game_id") int game_id);
	//찜 목록 체크
	public WishVO mywhisCheck(@Param("user_id") String user_id, @Param("game_id") int game_id);
	//장바구니 체크
	public CartVO mycartCheck(@Param("user_id") String user_id, @Param("game_id") int game_id);
	//찜 목록에서 삭제
	public void deleteWish(@Param("user_id") String user_id, @Param("game_id") int game_id);
	//장바구니에서 삭제
	public void deleteCart(CartVO cart);
	//장바구니 전체 삭제
	public void deleteAllCart(CartVO cart);
	//대댓글 입력
	public void nestedReplyInsert(commentVO comment);
	//대댓글 수정
	public void nestedReplyUpdate(commentVO comment);
	//대댓글 체크
	public commentVO checkReply(commentVO comment);
	//찜 목록 조회
	public List<WishVO> mywish(@Param("user_id") String user_id);
	//구매수 증가
	public void buycountUpdate(@Param("game_id") int game_id);
	//클릭한 댓글 조회
	public commentVO commentSelect(@Param("comment_id") int comment_id);
	//댓글의 대댓글 조회
	public List<commentVO> nestedReplySelect(@Param("comment_id") int comment_id);
    /* 게시판 목록(페이징 적용) */
    public List<gameVO> getListPaging(Criteria cri);
}
