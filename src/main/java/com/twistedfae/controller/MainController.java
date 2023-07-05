package com.twistedfae.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.twistedfae.mapper.MainMapper;
import com.twistedfae.model.UserVO;
import com.twistedfae.model.WeeklySaleVO;
import com.twistedfae.service.MainService;

@Controller
@RequestMapping("/") // localhost:8080/ 가 매칭됨
@SessionAttributes("loggedInUser") // 세션 객체
public class MainController {
	
	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	private MainMapper mainMapper;
	private GameController gameController;
	
	@Autowired
    public MainController(MainMapper mainMapper, GameController gameController) {
        this.mainMapper = mainMapper;
        this.gameController = gameController; // 헤더에서 게임 관련 페이지로의 이동을 위해 gameController의 인스턴스를 주입
    }
    
    @Autowired
    private MainService mService;
    
    @GetMapping("/store")
    public String store(Model model) {
        log.info("메인 페이지 진입");
        
        // gameController의 gameTabs() 메소드 호출
        gameController.gameTabs(model); // gameController로의 매핑을 처리할 수 있습니다.
        
        return "store";
    }
    
	// 헤더 페이지 요청 및 데이터 처리
    @RequestMapping(value = "/header", method = RequestMethod.GET)
    public String header(Model model, HttpSession session) {
    	log.info("메인 페이지로 상단바 로드");
    	
    	// 로그인 상태 시 사용자 ID와 닉네임 가져와 마이페이지 링크에 적용
        if (session.getAttribute("loggedInUser") != null) {
            UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
            UserVO user = mainMapper.getNickname(loggedInUser.getUser_id());
            String nickname = (user != null) ? user.getNickname() : null;
            model.addAttribute("user_id", loggedInUser.getUser_id());
            model.addAttribute("nickname", nickname);
        }
        return "modules/header";  // views/modules/header.jsp 페이지 불러오기, 뷰 경로와 이름 반환
    }
    
    // 회원가입 페이지 요청 및 데이터 처리
    @RequestMapping(value = "/register", method = {RequestMethod.GET, RequestMethod.POST})
    public String register(@ModelAttribute UserVO user) {
    	log.info("회원가입 페이지 로드");
    	if (user != null && user.getUser_id() != null) {
    		
    		// 생년월일 데이터 병합 -> YYYYMMDD
    		String birthYear = user.getBirthYear();
    		String birthMonth = user.getBirthMonth();
    		String birthDay = user.getBirthDay();
    		String birthday = birthYear + birthMonth + birthDay;

    		// UserVO 객체 생성 및 설정
    		UserVO newUser = new UserVO();
    		newUser.setUser_id(user.getUser_id());
    		newUser.setPassword(user.getPassword());
    		newUser.setName(user.getName());
    		newUser.setBirthday(birthday);
    		newUser.setGender(user.getGender());
    		newUser.setEmail(user.getEmail());
    		
    		// UserVO 객체를 이용한 데이터 처리
    		mService.register(newUser);
    		
    		log.info("회원가입 성공");
            return "users/login"; // 회원가입에 성공하면 로그인 페이지로 이동
        } else {
        	log.info("회원가입 실패");
            return "users/register"; // 회원가입에 실패하면 회원가입 페이지로 이동
        }
    }
    
    /** 로그인 페이지 요청 및 데이터 처리 
     * 
     * 만약 아이디는 일치하지만 비밀번호가 일치하지 않는 경우,
     * mService.login(user_id, password) 메서드는 사용자 정보를 null로 반환한다.
     * 이 경우 if (user != null) 조건문이 거짓이 되어 로그인 실패 처리 코드인
     * model.addAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다.");가 실행된다. */
    @RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
    public String login(@ModelAttribute UserVO user, HttpServletRequest request, Model model) {
        log.info("로그인 페이지 로드");

        if (user != null && user.getUser_id() != null && user.getPassword() != null) {
            UserVO loggedInUser = mService.login(user.getUser_id(), user.getPassword());
            if (loggedInUser != null) {
                HttpSession session = request.getSession();
                String sessionId = session.getId();
                session.setAttribute("loggedInUser", loggedInUser);
                log.info("로그인 성공 - 세션 생성: {}", sessionId);
                return "redirect:/store";
            } else {
                log.info("로그인 실패");
                model.addAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다.");
            }
        }
        return "users/login";
    }

    // 로그아웃 (세션 해제)
    @GetMapping("/logout")
    public String logout() {
        return "users/logout";
    }
    
    // 주중 할인 섹션 모듈 페이지 요청
    @GetMapping("/weeklySale")
    public String getAllWeeklySales(Model model) {
    	
        List<WeeklySaleVO> weeklySalesList = mService.getAllWeeklySales();
        model.addAttribute("weeklySalesList", weeklySalesList);
        
        log.info("메인 페이지로 주중 할인 섹션 로드");
        
        return "modules/weekly_sale";
    }
    
    @GetMapping("/categoryClassification")
    public String categoryClassification() {
    	
    	log.info("메인 페이지로 카테고리별 게임 분류 섹션 로드");
    	
    	return "modules/category_classification";
    }
    
    @GetMapping("/footer")
    public String footer() {
    	
    	log.info("메인 페이지로 하단바 로드");
    	
        return "modules/footer";
    }

    @GetMapping("/serviceInfo")
    public String start() {
    	
    	log.info("서비스 소개 페이지 로드");
    	
        return "modules/service_info";
    }
}
