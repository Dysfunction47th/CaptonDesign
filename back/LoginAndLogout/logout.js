function logout() {
    Kakao.init('9e758713051d787381dd4660a0fce536');
    console.log(Kakao.isInitialized());                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
  
    Kakao.API.request({
      url: '/v1/user/unlink',
      success: function(res) {
        console.log(res);
        alert('success: ' + JSON.stringify(res))

      },
      fail: function(err) {
        alert('fail: ' + JSON.stringify(err))
      },
    })
    
    
    sessionStorage.clear()
    location.href = "loginPage.html";
  }