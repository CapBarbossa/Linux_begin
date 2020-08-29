magiccow(){ 
	echo 'Yes,Moooo!,Mooost likely,Connot predict cow,Without a doubt,My horses say no,Ask again latte' |tr ',' '\n' |sort -R |head -1 | { cowsay 2> /dev/null || cat; } | { lolcat 2>/dev/null || cat; }; 
}


checksh(){
	[ ! $# -eq 1 ] && {
		echo "Usage: checksh /PATH/TO/Your/File.sh"
		return 2
	}
	until bash -n $1 &> /dev/null;do
		read -p "存在语法错误! 输入[Qq]退出本检查函数, 否则将会开启编辑界面.: " choice
		case $choice in
			q|Q)
				echo "$1 中存在语法错误, 未修改退出."
				return 1
				;;
			*)
				vim + $1
				;;
		esac
	done
	echo  "Well done! 所有语法正常."
}





