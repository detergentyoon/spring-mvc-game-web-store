package com.twistedfae.controller;

import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.twistedfae.model.CartVO;
import com.twistedfae.model.LibraryVO;
import com.twistedfae.model.System_requirementVO;
import com.twistedfae.model.WishVO;
import com.twistedfae.model.commentVO;
import com.twistedfae.model.gameVO;
import com.twistedfae.service.gameService;

@Controller
@RequestMapping("/")
public class GameController {
	
	private static final Logger log = LoggerFactory.getLogger(GameController.class);
	
	@Autowired
	private gameService gservice;
    
    @PostMapping("/index")
    public String processIndexRequest(@ModelAttribute CartVO cartVO, HttpServletRequest request, Model model) {
        String user_id = cartVO.getUser_id();
        
        log.info("값:" + user_id);
        
        List<CartVO> cartList = gservice.mycart(user_id);
        if (cartList != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0");
            int totalPrice = 0;
            for (CartVO cartPrice : cartList) {
                String formattedOriginalPrice = decimalFormat.format(cartPrice.getOriginal_price());
                String formattedDiscountedPrice = decimalFormat.format(cartPrice.getDiscounted_price());

                cartPrice.setFormattedOriginalPrice(formattedOriginalPrice);
                cartPrice.setFormattedDiscountedPrice(formattedDiscountedPrice);  
                
                totalPrice += Integer.parseInt(formattedDiscountedPrice.replaceAll(",", ""));
            }
            model.addAttribute("totalPrice", totalPrice);
        }
        model.addAttribute("cartList", cartList != null ? cartList : new ArrayList<>());
        
        request.setAttribute("user_id", user_id);
        
        return "/game/index";
    }
    
    @GetMapping("/index")
    public String index() {
        
        return "game/index";
    }
    
    @GetMapping("/success")
    public String success(@RequestParam("paymentType") String paymentType,
            @RequestParam("orderId") String orderId,
            @RequestParam("paymentKey") String paymentKey,
            @RequestParam("amount") int amount,
            @RequestParam("user_id") String user_id,
            Model model) {
    	
    	log.info("값:" + user_id);
    	
		List<CartVO> mycart = gservice.mycart(user_id);
		
		for (CartVO item : mycart) {
		    int game_id = item.getGame_id();
		    
		    gservice.buycountUpdate(game_id);
		    
		    
		    LibraryVO library = new LibraryVO();
		    library.setUser_id(user_id);
		    library.setGame_id(game_id);
		
		    gservice.libraryInsert(library);
		    
		    WishVO wish = gservice.mywhisCheck(user_id, game_id);
		    if (wish != null) {
		        // 찜 목록 삭제
		        gservice.deleteWish(user_id, game_id);
		    }
		}
		
		CartVO cart = new CartVO();
		cart.setUser_id(user_id);
		
		gservice.deleteAllCart(cart);
    	
        return "game/success";
    }
    
    @GetMapping("/fail")
    public String fail() {
        // /payment/fail에 대한 처리 로직
        return "game/fail";
    }
    
    @PostMapping("/enroll")
    public void gameEnrollPOST(gameVO game) {
        
        log.info("gameVO : " + game);
        
        gservice.enroll(game);
    }
    
    @GetMapping("/gamePage")
    public String gamePageGET(Model model,@RequestParam("game_id") Integer game_id,
    		@RequestParam("user_id") String user_id, HttpServletRequest request,
    		@RequestParam("category") String category) {
        
        log.info("게임 페이지 진입");       
        
        gameVO gamePage = gservice.gamePage(game_id);
        
        if (gamePage != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0");
            String formattedOriginalPrice = decimalFormat.format(gamePage.getOriginal_price());
            String formattedDiscountedPrice = decimalFormat.format(gamePage.getDiscounted_price());
            
            gamePage.setFormattedOriginalPrice(formattedOriginalPrice);
            gamePage.setFormattedDiscountedPrice(formattedDiscountedPrice);
        }
               
        model.addAttribute("gPage", gamePage != null ? gamePage : new gameVO());
        
        List<commentVO> bcomments = gservice.bestcmt(game_id);
        for (commentVO comment : bcomments) {
            commentVO clonedComment = new commentVO();
            clonedComment.setComment_id(comment.getComment_id());
            clonedComment.setGame_id(comment.getGame_id());
            clonedComment.setUser_id(user_id);
            clonedComment.setName(comment.getName());
            clonedComment.setProfile_image(comment.getProfile_image());
            clonedComment.setPosted_date(comment.getPosted_date());
            clonedComment.setContent(comment.getContent());
            clonedComment.setLikes(comment.getLikes());
            clonedComment.setTotal_likes(comment.getTotal_likes());
            clonedComment.setLikes_1(comment.getLikes_1());
            clonedComment.setLikes_0(comment.getLikes_0());
            clonedComment.setRating_id(comment.getRating_id());
            commentVO checkReply = gservice.checkReply(clonedComment);           
            if (checkReply != null) {
                int likes = checkReply.getLikes();
                comment.setTypes(likes); // 추천 여부에 따라 types 값 설정
            }else {
                comment.setTypes(2);
            }
        }
        model.addAttribute("bcomment", bcomments != null ? bcomments : new ArrayList<>());

        List<commentVO> rcomments = gservice.recentcmt(game_id);
        for (commentVO comment : rcomments) {
            commentVO clonedComment = new commentVO();
            clonedComment.setComment_id(comment.getComment_id());
            clonedComment.setGame_id(comment.getGame_id());
            clonedComment.setUser_id(user_id);
            clonedComment.setName(comment.getName());
            clonedComment.setProfile_image(comment.getProfile_image());
            clonedComment.setPosted_date(comment.getPosted_date());
            clonedComment.setContent(comment.getContent());
            clonedComment.setLikes(comment.getLikes());
            clonedComment.setTotal_likes(comment.getTotal_likes());
            clonedComment.setLikes_1(comment.getLikes_1());
            clonedComment.setLikes_0(comment.getLikes_0());
            clonedComment.setRating_id(comment.getRating_id());
            commentVO checkReply = gservice.checkReply(clonedComment); 
            if (checkReply != null) {
                int likes = checkReply.getLikes();
                comment.setTypes(likes); // 추천 여부에 따라 types 값 설정
            }else {
                comment.setTypes(2);
            }
        }
        model.addAttribute("rcomment", rcomments != null ? rcomments : new ArrayList<>());

        commentVO mycomment = gservice.mycmt(game_id, user_id);
        model.addAttribute("mcomment", mycomment != null ? mycomment : new commentVO());        
        
        System_requirementVO sysReq = gservice.sysreq(game_id);
        model.addAttribute("sysreq", sysReq != null ? sysReq : new System_requirementVO());
        
        LibraryVO librarySelect = gservice.librarySelect(game_id, user_id);
        model.addAttribute("library", librarySelect != null ? librarySelect : new LibraryVO());
        
        String user_idFromRequest = request.getParameter("user_id");
        model.addAttribute("user_id", user_idFromRequest != null ? user_idFromRequest : new Object());
        
        WishVO mywhisCheck = gservice.mywhisCheck(user_id, game_id);
        model.addAttribute("mywhisCheck", mywhisCheck != null ? mywhisCheck : new WishVO());
        
        CartVO cartCheck = gservice.mycartCheck(user_id, game_id);
        model.addAttribute("cartCheck", cartCheck != null ? cartCheck : new CartVO());
        
        List<gameVO> myCategory = gservice.myCategory(user_id, category, game_id);
        model.addAttribute("myCategory", myCategory != null ? myCategory : new ArrayList<>());
        
        List<gameVO> sameCategory = gservice.sameCategory(category, game_id);
        if (sameCategory != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0");

            for (gameVO game : sameCategory) {
                String formattedOriginalPrice = decimalFormat.format(game.getOriginal_price());
                String formattedDiscountedPrice = decimalFormat.format(game.getDiscounted_price());

                game.setFormattedOriginalPrice(formattedOriginalPrice);
                game.setFormattedDiscountedPrice(formattedDiscountedPrice);
            }
        }
        model.addAttribute("sameCategory", sameCategory != null ? sameCategory : new ArrayList<>());
        
        return "game/gamePage";
    }
    
    @PostMapping("/commentProcessing")
    public void gameCommentPOST(commentVO comment, HttpServletRequest request) {
        String user_id = request.getParameter("user_id"); // user_id 값을 URL의 쿼리 매개변수로부터 추출
        String[] userIdArray = user_id.split(",");
        comment.setUser_id(userIdArray[0]);
        comment.setPosted_date(new Timestamp(System.currentTimeMillis()));
        log.info("commentVO : " + comment);

        gservice.commentInsert(comment);
    }
    
    @GetMapping("/gameTabs") // => @RequestMapping(value="enroll", method=RequestMethod.GET)
    public String gameTabs(Model model) {        
               
    	log.info("게임 탭 페이지 진입");
    	
        List<gameVO> bgame = gservice.bestgame();
        if (bgame != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0");

            for (gameVO game : bgame) {
                String formattedOriginalPrice = decimalFormat.format(game.getOriginal_price());
                String formattedDiscountedPrice = decimalFormat.format(game.getDiscounted_price());

                game.setFormattedOriginalPrice(formattedOriginalPrice);
                game.setFormattedDiscountedPrice(formattedDiscountedPrice);
            }
        }
        model.addAttribute("bgame", bgame != null ? bgame : new ArrayList<>());
        
        List<gameVO> sgame = gservice.salegame();
        if (sgame != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0");

            for (gameVO game : sgame) {
                String formattedOriginalPrice = decimalFormat.format(game.getOriginal_price());
                String formattedDiscountedPrice = decimalFormat.format(game.getDiscounted_price());

                game.setFormattedOriginalPrice(formattedOriginalPrice);
                game.setFormattedDiscountedPrice(formattedDiscountedPrice);
            }
        }
        model.addAttribute("sgame", sgame != null ? sgame : new ArrayList<>());
        
        List<gameVO> recommendGame = gservice.recommendGame();
        if (recommendGame != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0");

            for (gameVO game : recommendGame) {
                String formattedOriginalPrice = decimalFormat.format(game.getOriginal_price());
                String formattedDiscountedPrice = decimalFormat.format(game.getDiscounted_price());

                game.setFormattedOriginalPrice(formattedOriginalPrice);
                game.setFormattedDiscountedPrice(formattedDiscountedPrice);
            }
        }
        model.addAttribute("recommendGame", recommendGame != null ? recommendGame : new ArrayList<>());
        return "game/gameTabs";
    }
    
    @GetMapping("/wishProcessing")
    public void gameWishPOST(WishVO wish, @RequestParam("caseNo") int caseNo,@RequestParam("game_id") Integer game_id, @RequestParam("user_id") String user_id) {
        
    	if(caseNo == 0 ) {

        wish.setUser_id(user_id);
        wish.setGame_id(game_id);
        wish.setDate_added(new Timestamp(System.currentTimeMillis()));
        gservice.wishInsert(wish);
        }else if(caseNo == 1) {
        	gservice.deleteWish(user_id, game_id);
        }
    }
    
    @PostMapping("/nestedReplyProcessing")
    public void gameReplyPOST(@RequestBody commentVO comment) {
    	
    	commentVO checkReply = gservice.checkReply(comment);
    	log.info("comment : " + comment);
    	if (checkReply != null) {
    		comment.setPosted_date(new Timestamp(System.currentTimeMillis()));
    		gservice.nestedReplyUpdate(comment);    		
    	} else {
    		comment.setPosted_date(new Timestamp(System.currentTimeMillis()));
    		gservice.nestedReplyInsert(comment);
    	}
    }
    @PostMapping("/nestedReplyProcessing2")
    public void gameReplyPOST2(commentVO comment) {
    	
    	commentVO checkReply = gservice.checkReply(comment);
    	log.info("comment : " + comment);
    	if (checkReply != null) {
    		comment.setPosted_date(new Timestamp(System.currentTimeMillis()));
    		gservice.nestedReplyUpdate(comment);    		
    	} else {
    		comment.setPosted_date(new Timestamp(System.currentTimeMillis()));
    		gservice.nestedReplyInsert(comment);
    	}
    }
    @GetMapping("/wishList")
    public void wishList(Model model, @RequestParam("user_id") String user_id) {
    	log.info("user_id" + user_id);
    	List<WishVO> mywish = gservice.mywish(user_id);
        if (mywish != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0");

            for (WishVO wish : mywish) {
                String formattedOriginalPrice = decimalFormat.format(wish.getOriginal_price());
                String formattedDiscountedPrice = decimalFormat.format(wish.getDiscounted_price());

                wish.setFormattedOriginalPrice(formattedOriginalPrice);
                wish.setFormattedDiscountedPrice(formattedDiscountedPrice);
                
                log.info("discount_rate" + wish.getDiscount_rate());
            }
        }
    	model.addAttribute("mywish", mywish != null ? mywish : new ArrayList<>());
    }
    
    @GetMapping("/cart")
    public void cart(Model model, @RequestParam("user_id") String user_id) {
    	   	
        List<CartVO> cartList = gservice.mycart(user_id);
        if (cartList != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0");
            int totalPrice = 0;
            for (CartVO cartPrice : cartList) {
                String formattedOriginalPrice = decimalFormat.format(cartPrice.getOriginal_price());
                String formattedDiscountedPrice = decimalFormat.format(cartPrice.getDiscounted_price());

                cartPrice.setFormattedOriginalPrice(formattedOriginalPrice);
                cartPrice.setFormattedDiscountedPrice(formattedDiscountedPrice);  
                
                totalPrice += Integer.parseInt(formattedDiscountedPrice.replaceAll(",", ""));
            }
            model.addAttribute("totalPrice", totalPrice);
        }
        model.addAttribute("cartList", cartList != null ? cartList : new ArrayList<>());

        List<gameVO> randsalegame = gservice.randsalegame();
        if (randsalegame != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#,##0");

            for (gameVO game : randsalegame) {
                String formattedOriginalPrice = decimalFormat.format(game.getOriginal_price());
                String formattedDiscountedPrice = decimalFormat.format(game.getDiscounted_price());

                game.setFormattedOriginalPrice(formattedOriginalPrice);
                game.setFormattedDiscountedPrice(formattedDiscountedPrice);
            }
        }
        model.addAttribute("randsalegame", randsalegame != null ? randsalegame : new ArrayList<>());
    }
    
    @PostMapping("/cart")
    public void cartRemovePOST(@RequestBody CartVO cart) {
        
        log.info("CartVO : " + cart.getGame_id() + cart.getUser_id());
        
        if(cart.getGame_id() == 0) {
        	gservice.deleteAllCart(cart);
        }else {
        	gservice.deleteCart(cart);
        }
    }
    @PostMapping("/cartProcessing")
    public void cartInsertPOST(@RequestBody CartVO cart) {
        
        log.info("CartVO : " + cart.getGame_id() + cart.getUser_id());
        
        gservice.cartInsert(cart);
    }
    @GetMapping("/comment")
    public String comment(@RequestParam("comment_id") int comment_id, 
    		@RequestParam("game_id") int game_id, Model model) {
        
    	commentVO commentSelect = gservice.commentSelect(comment_id);
    	model.addAttribute("commentSelect", commentSelect != null ? commentSelect : new commentVO());
    	
    	List<commentVO> nestedReplySelect = gservice.nestedReplySelect(comment_id);
    	if (nestedReplySelect != null) {
    		model.addAttribute("nestedReplySelect", nestedReplySelect != null ? nestedReplySelect : new ArrayList<>());
    	}
    	
    	
    	gameVO gamePage = gservice.gamePage(game_id);
    	model.addAttribute("gamePage", gamePage != null ? gamePage : new gameVO());
    	
        return "game/comment";
    }
}