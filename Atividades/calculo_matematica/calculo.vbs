dim vetor(2), resp, correto, pontos, controlador, operador
call carregar_numeros
	
sub carregar_numeros()
	randomize(second(time))
	vetor(1)=int(rnd*11)
	vetor(2)=int(rnd*11)
	operador=int(rnd*3)+1
	select case operador
		case 1:
			correto=vetor(1) + vetor(2)
			operador="+"
		case 2:
			correto=vetor(1) - vetor(2)
			operador="-"
		case 3:
			correto=vetor(1) * vetor(2)
			operador="*"
		case else:
			msgbox("Opção Inválida!!!"),vbExclamation+vbOKOnly,"ATENÇÃO"
			call carregar_numeros
	end select
			
	resp=cint(inputbox("====================================" + vbNewLine &_
					   "    ACERTE O CÁLCULO MATEMATICO!  " + vbNewLine &_
					   "====================================" + vbNewLine &_
					   "RESOLVA "&vetor(1) &operador &vetor(2)&""))
	if resp=correto then
		pontos=pontos+1
		msgbox("Você acertou! Está com "&pontos&" ponto(s)."),vbExclamation+vbOKOnly,"PARABÉNS!"
		controlador=msgbox("Você acertou! Deseja continuar?",vbQuestion+vbYesNo,"ATENÇÃO")
		if controlador=vbYes then
			call carregar_numeros
		else
			wscript.quit
		end if
	else
		msgbox("Você perdeu! Total: "&pontos&" ponto(s)."),vbCritical+vbOKOnly,"QUE PENA!"
		controlador=msgbox("Deseja jogar novamente?",vbQuestion+vbYesNo,"ATENÇÃO")
		if controlador=vbYes then
			derrota=0
			pontos=0
			call carregar_numeros
		else
			wscript.quit
		end if
	end if
end sub