#include <IE.au3>



Func SignIn ()
	Global $oIE = _IECreate ("192.168.1.37/GWSCLIENT")
	Local $username = _IEGetObjByName =($oIE, "txtUser")
	Local $Password = _IEGetObjByName =($oIE, "txtPwd")
	Local $CMTY = _IEGetObjByName =($oIE, "txtCmty")


_IEFormElementSetValue ($username,"boggs")
_IEFormElementSetValue ($Password,"test")

EndFunc
