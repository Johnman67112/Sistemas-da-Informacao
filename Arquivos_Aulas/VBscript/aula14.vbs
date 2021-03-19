dim op,executar, resp
call criar_objeto

sub criar_objeto()
	set executar = wscript.createobject("wscript.shell")
	call menu
end sub

sub menu()
	op=cint(inputbox("[1] Gerenciador de Tarefas" + vbnewline &_
					 "[2] Painel de Controle" + vbNewLine &_
					 "[3] Teclado Virtual" + vbNewLine &_
					 "[4] Bloco de Notas" + vbNewLine &_
					 "[5] Paint" + vbNewLine &_
					 "[6] Outra Tela" + vbNewLine &_
					 "[7] Encerrar Script", "ESCOLHA UMA OPÇÃO"))
	select case op
		case 1:
			executar.Run("%systemroot%\system32\taskmgr.exe")
		case 2:
			executar.Run("%systemroot%\system32\control.exe")
		case 3:
			executar.Run("%systemroot%\system32\osk.exe")
		case 4:
			executar.Run("%systemroot%\system32\notepad.exe")
		case 5:
			executar.Run("%systemroot%\system32\mspaint.exe")
		case 6:
			executar.Run("C:\Users\joaov\OneDrive - Fatec Centro Paula Souza\Fatec\2° Semestre\Sistemas de Informação\Arquivos Aulas\VBscript\aula14tela2.vbs"),vbhide
		case 7:
			resp=msgbox("Deseja realmente encerrar?", vbQuestion+vbYesNo,"ATENÇÃO")
			if resp=vbYes then
				wscript.quit
			else
				call menu
			end if
		case else:
			msgbox("Opção Inválida!!!"),vbExclamation+vbOKOnly,"ATENÇÃO"
	end select
	call menu
end sub