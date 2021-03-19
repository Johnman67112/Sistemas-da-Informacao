dim cor, cores
call carregar_cores

sub carregar_cores()
	cores=cint(inputbox("=====================" + vbNewLine &_
						"   Escolha Uma Cor   " + vbNewLine &_
						"=====================" + vbNewLine &_
						"[1]Azul" + vbNewLine &_
						"[2]Vermelho" + vbNewLine &_
						"[3]Amarelo" + vbNewLine &_
						"[4]Verde" + vbNewLine &_
						"[0 ou 10] Encerrar"))
	select case cores
		case 1:
			cor="Azul"
		case 2:
			cor="Vermelho"
		case 3:
			cor="Amarelo"
		case 4:
			cor="Verde"
		case 0,10:
			resp=msgbox("Deseja encerrar Script?",vbQuestion+vbYesNo,"ATENÇÃO")
			if resp=vbyes then
				wscript.quit
			else
				call carregar_cores
			end if
		case else
			msgbox("Opção Inválida!!!"),vbExclamation+vbOKOnly,"ATENÇÃO"
			call carregar_cores
	end select
	
	msgbox("A cor selecionada foi: "& cor&""),vbInformation+vbOKOnly,"AVISO"
	call carregar_cores
end sub 