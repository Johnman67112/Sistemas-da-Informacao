dim vetor(5), nivel, controlador
dim audio, resp
call carregar_audio

sub carregar_audio()
    set audio=createobject("SAPI.SPVOICE")
    audio.volume=100
    audio.rate=2 'Velocidade da fala
    call carregar_nivel
end sub

sub carregar_nivel
	nivel = 1
	call carregar_vetor
end sub

sub carregar_vetor()
	select case nivel
		case 1:
			vetor(1)="abacate"
			vetor(2)="macaco"
			vetor(3)="pedra"
			vetor(4)="clara"
			vetor(5)="kibe"
		case 2:
			vetor(1)="bicicleta"
			vetor(2)="quiche"
			vetor(3)="empatia"
			vetor(4)="quilombo"
			vetor(5)="cafeína"
		case 3:
			vetor(1)="aceso"
			vetor(2)="jéssica"
			vetor(3)="maçã"
			vetor(4)="fígado"
			vetor(5)="fuzis"
		case 4:
			vetor(1)="balaústre"
			vetor(2)="deletério"
			vetor(3)="filantropo"
			vetor(4)="graçolar"
			vetor(5)="inócuo"
		case 5:
			vetor(1)="nitidificar"
			vetor(2)="ósculo"
			vetor(3)="taciturno"
			vetor(4)="ufanismo"
			vetor(5)="vicissitude"
		case else:
			msgbox("Você ganhou! Passou do nível máximo."),vbExclamation+vbOKOnly,"PARABÉNS!"
			resp=msgbox("Deseja jogar novamente?",vbQuestion+vbYesNo,"ATENÇÃO")
			if resp=vbYes then
				call carregar_nivel
			else
				wscript.quit
			end if
	end select
	call carregar_random
end sub		

sub carregar_random()
	randomize(second(time))
	controlador=int(rnd*5)+1
	select case controlador
		case 1:
			controlador=vetor(1)
		case 2:
			controlador=vetor(2)
		case 3:
			controlador=vetor(3)
		case 4:
			controlador=vetor(4)
		case 5:
			controlador=vetor(5)
	end select
	call carregar_resposta
end sub

sub carregar_resposta()
	audio.speak("A palavra é:"&controlador&"")
	resp=Lcase(inputbox("=============================" + vbNewLine &_
					    "         SOLETRANDO!         " + vbNewLine &_
					    "=============================" + vbNewLine &_
					    "NIVEL: "&nivel&""              + vbNewLine &_
						"[P] Repetir a palavra"         + vbNewLine &_
						"[S] Sair do programa" + vbNewLine &_
					    "Soletre a palavra que ouvir: "))
	if resp="p" then
		call carregar_resposta
	Elseif resp="s" then
		wscript.quit
	Elseif resp=controlador then
		msgbox("Você acertou! Passou do nivel "&nivel&"."),vbExclamation+vbOKOnly,"PARABÉNS!"
		nivel=nivel + 1
		resp=msgbox("Você acertou! Deseja continuar?",vbQuestion+vbYesNo,"ATENÇÃO")
		if resp=vbYes then
			call carregar_vetor
		else
			wscript.quit
		end if
	else
		msgbox("Você errou! Chegou ao nível: "&nivel&"."),vbCritical+vbOKOnly,"QUE PENA!"
		resp=msgbox("Deseja jogar novamente?",vbQuestion+vbYesNo,"ATENÇÃO")
		if resp=vbYes then
			call carregar_nivel
		else
			wscript.quit
		end if
	end if
end sub