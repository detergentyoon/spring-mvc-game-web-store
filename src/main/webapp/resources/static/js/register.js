// 아이디 유효성을 검사하는 함수
function validateId() {
  var idInput = document.getElementById("user_id");
  var idValue = idInput.value;
  var idPattern = /^[a-z0-9_-]{5,20}$/;
  // 5~20자 길이의 영문 소문자와 숫자, 특수문자의 경우 (_)와 (-)만 사용할 수 있다.
	
  var idLabel = document.createElement("label");
  idLabel.setAttribute("id", "idValidationLabel");
  idLabel.setAttribute("class", "label");
  idLabel.setAttribute("style", "color: #CC3333; font-size: 15px;");
  idLabel.innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_), (-)만 사용 가능합니다.";
  
  var idLabelAccept = document.createElement("label");
  idLabelAccept.setAttribute("id", "idValidationAcceptLabel");
  idLabelAccept.setAttribute("class", "label");
  idLabelAccept.setAttribute("style", "color: lightgreen; font-size: 15px;");
  idLabelAccept.innerHTML = "멋진 아이디입니다!";
  
  var idParent = idInput.parentElement;
  var validationLabel = document.getElementById("idValidationLabel");
  var acceptLabel = document.getElementById("idValidationAcceptLabel");

  if (!idPattern.test(idValue)) {
    if (acceptLabel) {
      idParent.removeChild(acceptLabel);
    }
    if (!validationLabel) {
      idParent.appendChild(idLabel);
    }
    return false;
  } else {
    if (validationLabel) {
      idParent.removeChild(validationLabel);
    }
    if (!acceptLabel) {
      idParent.appendChild(idLabelAccept);
    }
    return true;
  }
}
// 아이디 input box에서 매 키보드 입력마다 유효성 검사를 실행
var idInput = document.getElementById("user_id");
idInput.addEventListener("input", function() {
  validateId();
});


// 비밀번호와 비밀번호 확인의 정보가 일치하는지 검사하는 함수
function validateRepeatPassword() {
  var passwordInput = document.getElementById("password");
  var repeatPasswordInput = document.getElementById("repeatPassword");

  var password = passwordInput.value;
  var repeatPassword = repeatPasswordInput.value;
  
  var repeatPasswordLabel = document.createElement("label");
  repeatPasswordLabel.setAttribute("id", "repeatPasswordValidationLabel");
  repeatPasswordLabel.setAttribute("class", "label");
  repeatPasswordLabel.setAttribute("style", "color: #CC3333; font-size: 16px");
  repeatPasswordLabel.innerHTML = "비밀번호가 일치하지 않습니다.";

  var repeatPasswordParent = repeatPasswordInput.parentElement;
  var validationLabel = document.getElementById("repeatPasswordValidationLabel")

  if (password !== repeatPassword) { // value끼리 비교
    if (!repeatPasswordParent.contains(validationLabel)) {
      repeatPasswordParent.appendChild(repeatPasswordLabel);
    }
    return false;
  } else {
    if (repeatPasswordParent.contains(validationLabel)) {
      repeatPasswordParent.removeChild(validationLabel);
    }
    return true;
  }
}
// 비밀번호 확인 input box에서 매 키보드 입력마다 유효성 검사를 실행
var repeatPasswordInput = document.getElementById("repeatPassword");
repeatPasswordInput.addEventListener("input", function() {
  validateRepeatPassword();
});


// 비밀번호 유효성을 검사하는 함수
function validatePassword() {
  var passwordInput = document.getElementById("password");
  var passwordValue = passwordInput.value;
  var passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[~!@#$%^&*\-_+=?])[a-zA-Z\d~!@#$%^&*\-_+=?]{8,20}$/;
  // 8~20자 길이의 영문 대 소문자, 숫자, 특수문자를 적어도 하나씩은 포함하여 구성해야 한다.

  var passwordLabel = document.createElement("label");
  passwordLabel.setAttribute("id", "passwordValidationLabel");
  passwordLabel.setAttribute("class", "label");
  passwordLabel.setAttribute("style", "color: #CC3333; font-size: 15px;");
  passwordLabel.innerHTML = "8~20자 영문 대 소문자, 숫자, 특수문자를 사용하세요.<br>사용 가능한 특수문자 (~ ! @ # $ % ^ & * - _ + = ?)";

  var passwordLabelAcceptDanger = document.createElement("label");
  passwordLabelAcceptDanger.setAttribute("id", "passwordValidationAcceptDangerLabel");
  passwordLabelAcceptDanger.setAttribute("class", "label");
  passwordLabelAcceptDanger.setAttribute("style", "color: #CC3333; font-size: 15px;");
  passwordLabelAcceptDanger.innerHTML = "보안성 [위험]";

  var passwordLabelAcceptNormal = document.createElement("label");
  passwordLabelAcceptNormal.setAttribute("id", "passwordValidationAcceptNormalLabel");
  passwordLabelAcceptNormal.setAttribute("class", "label");
  passwordLabelAcceptNormal.setAttribute("style", "color: #FFCC00; font-size: 15px;");
  passwordLabelAcceptNormal.innerHTML = "보안성 [보통]";

  var passwordLabelAcceptSafe = document.createElement("label");
  passwordLabelAcceptSafe.setAttribute("id", "passwordValidationAcceptSafeLabel");
  passwordLabelAcceptSafe.setAttribute("class", "label");
  passwordLabelAcceptSafe.setAttribute("style", "color: lightgreen; font-size: 15px;");
  passwordLabelAcceptSafe.innerHTML = "보안성 [안전]";

  var passwordParent = passwordInput.parentElement;
  var validationLabel = document.getElementById("passwordValidationLabel");
  var acceptDangerLabel = document.getElementById("passwordValidationAcceptDangerLabel");
  var acceptNormalLabel = document.getElementById("passwordValidationAcceptNormalLabel");
  var acceptSafeLabel = document.getElementById("passwordValidationAcceptSafeLabel");

  if (!passwordPattern.test(passwordValue)) {
    // 유효하지 않은 경우, 보안성 [~] 라벨이 있으면 지우고 유효성 검사 문구를 띄움
    if (acceptDangerLabel) {
      passwordParent.removeChild(acceptDangerLabel);
    }
    if (acceptNormalLabel) {
      passwordParent.removeChild(acceptNormalLabel);
    }
    if (acceptSafeLabel) {
      passwordParent.removeChild(acceptSafeLabel);
    }
    if (!validationLabel) {
      passwordParent.appendChild(passwordLabel);
    }
    return false;
  } else {
    if (validationLabel) {
      passwordParent.removeChild(validationLabel);
    }
    // 안정성 검사
    var passwordStrength = evaluatePassword(passwordValue);
    if (passwordStrength === "danger") {
      if (acceptDangerLabel) {
        passwordParent.removeChild(acceptDangerLabel);
      }
      if (acceptNormalLabel) {
        passwordParent.removeChild(acceptNormalLabel);
      }
      if (acceptSafeLabel) {
        passwordParent.removeChild(acceptSafeLabel);
      }
      passwordParent.appendChild(passwordLabelAcceptDanger);
    } else if (passwordStrength === "normal") {
      if (acceptDangerLabel) {
        passwordParent.removeChild(acceptDangerLabel);
      }
      if (acceptNormalLabel) {
        passwordParent.removeChild(acceptNormalLabel);
      }
      if (acceptSafeLabel) {
        passwordParent.removeChild(acceptSafeLabel);
      }
      passwordParent.appendChild(passwordLabelAcceptNormal);
    } else if (passwordStrength === "safe") {
      if (acceptDangerLabel) {
        passwordParent.removeChild(acceptDangerLabel);
      }
      if (acceptNormalLabel) {
        passwordParent.removeChild(acceptNormalLabel);
      }
      if (acceptSafeLabel) {
        passwordParent.removeChild(acceptSafeLabel);
      }
      passwordParent.appendChild(passwordLabelAcceptSafe);
    }
    return true;
  }
}

// 비밀번호 안정성 검사 함수
function evaluatePassword(password) {
  // 비밀번호 길이 체크
  if (password.length < 10) {
    return "danger"; // 10자 미만은 위험
  } else if (password.length < 14) {
    return "normal"; // 10 이상, 14 미만은 보통
  } else if (password.length <= 20) {
    return "safe"; // 13 이상, 20 이하면 안전
  }
}

// 비밀번호 input box에서 매 키보드 입력마다 유효성 검사를 실행
var passwordInput = document.getElementById("password");
passwordInput.addEventListener("input", function() {
  validatePassword();
});

// 비밀번호 input box에서 눈 모양 아이콘을 클릭하면 입력한 비밀번호를 볼 수 있음
var passwordToggle = document.querySelector('.password-toggle');
passwordToggle.addEventListener('click', function () {
  if (passwordInput.type === 'password') {
    passwordInput.type = 'text';
    passwordToggle.classList.remove('fa-eye-slash');
    passwordToggle.classList.add('fa-eye');
    passwordToggle.classList.add('show'); // 아이콘의 x축이 이동하는 버그를 css에서 .show로 선택하여 막음
  } else {
    passwordInput.type = 'password';
    passwordToggle.classList.remove('fa-eye');
    passwordToggle.classList.remove('show');
    passwordToggle.classList.add('fa-eye-slash');
  }
});
// 비밀번호 확인 input box에서 눈 모양 아이콘을 클릭하면 입력한 비밀번호를 볼 수 있음
var repeatPasswordToggle = document.querySelector('.repeatPassword-toggle');
repeatPasswordToggle.addEventListener('click', function () {
  if (repeatPasswordInput.type === 'password') {
    repeatPasswordInput.type = 'text';
    repeatPasswordToggle.classList.remove('fa-eye-slash');
    repeatPasswordToggle.classList.add('fa-eye');
    repeatPasswordToggle.classList.add('show'); // 아이콘의 x축이 이동하는 버그를 css에서 .show로 선택하여 막음
  } else {
    repeatPasswordInput.type = 'password';
    repeatPasswordToggle.classList.remove('fa-eye');
    repeatPasswordToggle.classList.remove('show');
    repeatPasswordToggle.classList.add('fa-eye-slash');
  }
});


// 아무것도 입력하지 않은 입력란에 대해서 필수 입력 사항임을 권고하는 함수 로직
var inputs = [ // 모든 항목의 id을 배열 원소로 저장하여 반복문을 돌림
  { element: document.getElementById("repeatPassword"), requiredLabel: null },
  { element: document.getElementById("name"), requiredLabel: null },
  { element: document.getElementById("birthYear"), requiredLabel: null },
  { element: document.getElementById("birthMonth"), requiredLabel: null },
  { element: document.getElementById("birthDay"), requiredLabel: null },
  { element: document.getElementById("gender"), requiredLabel: null },
  { element: document.getElementById("email"), requiredLabel: null }
];

inputs.forEach(function(input) {
  input.element.addEventListener('focus', function () {
    removeRequiredLabel(input);
  });
  
  input.element.addEventListener('blur', function () {
    if (input.element.value.trim() === '') {
      addRequiredLabel(input);
    }
  });
});

function addRequiredLabel(input) {
  if (!input.requiredLabel) {
    input.requiredLabel = document.createElement('label');
    input.requiredLabel.textContent = '필수 정보입니다.';
    input.requiredLabel.style.color = '#CC3333';
    input.requiredLabel.style.fontSize = '15px';
    input.requiredLabel.id = input.element.id + '-required';
    input.element.parentElement.appendChild(input.requiredLabel);
  }
}

function removeRequiredLabel(input) {
  if (input.requiredLabel) {
    input.requiredLabel.remove();
    input.requiredLabel = null;
  }
}


// 약관동의 체크했는지 검사
document.addEventListener('DOMContentLoaded', function() {
  var registerButton = document.querySelector('#registerButton');
  var registerCheck = document.querySelector('#registerCheck');
  
  registerButton.addEventListener('click', function(event) {
    if (!registerCheck.checked) {
      event.preventDefault();
      alert('약관에 동의해야 회원가입이 가능합니다.');
    }
  });
});


// inputs 배열을 순회하면서 각 입력란의 값이 비어있는지 확인하고, 비어있는 경우 addRequiredLabel() 함수를 호출하는 함수
function validateInputs() {
  var isValid = true;

  inputs.forEach(function(input) {
    if (input.element.value.trim() === '') {
      addRequiredLabel(input);
      isValid = false; // 최종적으로 유효성 여부를 저장하는 변수
    }
  });

  return isValid; // 유효성 여부를 반환
}


// 회원가입 버튼 클릭 시 특정 항목에 대한 유효성 검사를 수행
// 부합하지 않을 경우 form의 제출을 막음
document.getElementById("registerButton").addEventListener("click", function(event) {
  if (!validateId()) {
    event.preventDefault(); // 폼 제출을 막음
  }
  if (!validatePassword()) {
    event.preventDefault();
  }
  if (!validateRepeatPassword()) {
    event.preventDefault();
  }
  if (!validateInputs()) {
    event.preventDefault();
  }
});

/**************************************** 버그 목록 *********************************************
 *
 * 1. 비밀번호 안내 문구가 뜰 경우 비밀번호 보기 아이콘의 위치와 input box가 엇갈리는 버그
 * 
 * 2. SNS 연동 버튼에 hover가 되었을 경우 전체 색깔이 하얗게 질리는 버그 
 * 
 ************************************************************************************************/

/**************************************** 추가 목록 *********************************************
 *
 * 1. DB 연동 후 처리 테스트  << !important >>
 *
 * 2. 아이디 중복 검사        << !important >>
 * 
 * 3. 이메일 중복 검사        << !important >>
 * 
 * 4. 이름 유효성 검사
 * 
 * 5. 이메일 유효성 검사
 * 
 * 6. 본인 화인 이메일 발송 로직 (+a)
 * 
 * 7. SNS 연동 (+a)
 * 
 ************************************************************************************************/