/**
 * MemberJoin.html 의 입력 폼(입력 요소)에 사용자가 입력한 값들을 검사하는 자바스크립트
 * => 유효성 검사 항목(요구사항) : 이름, 이메일은 필수 입력. 패스워드는 4글자 이상. 나이 범위 15~99
 */
function func_join() {
	/*자바스크립트의 변수 선언 키워드 : var, let, const
	  const 는 값은 변경할 수 없고, 객체는 재할당 불가.일반적으로 요소를 저장하는 변수 형식으로 사용
	*/
    const frm = document.forms[0]
    const name = frm.name
    const email = frm.email
    const password = frm.password
    const age = frm.age
    console.log(frm)
    console.log(name)
    console.log(email)
    console.log(password)
    console.log(age)
    let isValid = true		/*유효성 통과 여부를 저장하는 변수 */

    if(name.value =='') {   /*텍스트 입력 없으면 '' */
        alert('이름은 필수 입력입니다.')
        name.focus()		/*name으로 지정된 입력 요소가 focus 를 갖습니다.*/
        isValid=false
    } 

    if(email.value=='') {
        alert('이메일은 필수 입력입니다.')
        email.focus()
        isValid=false
    } 
    
     if(password.value.length < 4 ) {
        alert('패스워드는 4글자 이상입니다.')
        password.focus()
        isValid=false
    }
    
    if(age.value <= 15 || age.value >= 99) {
        alert('나이는 15~99 범위의 값이어야 합니다.')
        age.focus()
        isValid=false
    }
    
     if(isValid) {   //유효성 통과하여 제출합니다. 
        frm.action='success.html'		/*action 속성이 form 태그에서 지정되어 있지 않으면 필수 작성.*/
        frm.submit()		
        /* submit 버튼을 클릭하는 것과 같은 메소드 동작. 기본 버튼 type을 변경하기*/
    } else {
        alert('유효성 통과 실패!!!')
    }
  }