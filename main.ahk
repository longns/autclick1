#include lib
#include ClickUtil.ahk
#Include Constant.ahk
#Include AppHandel.ahk
^q:: Exit
^p:: main()
main() {
	lb_Start:
		 SearchClick(global IMG_BS,global BLUE_STACK_NAME)
		 Sleep, 2
		 SearchClick(global IMG_BS_XUAN,global BS_CHANGER_NAME)
		 Sleep, 2
		 SearchClick(global IMG_AUTOCHANGER,global AUTO_CHANGER_NAME)

}
