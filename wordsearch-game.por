programa
{
	inclua biblioteca Util --> fun
	inclua biblioteca Tipos --> type
	inclua biblioteca Texto --> text
	
	funcao inicio()
	{	
		
		inteiro nivel_dificuldade = 0
		
		enquanto (nivel_dificuldade > 3 ou nivel_dificuldade <= 0){
		
		escreva("=========================================")
		escreva("\nSEJA BEM VINDO AO JOGO DO CAÇA-PALAVRAS!\n")
	   	escreva("=========================================\n\n")
	   	escreva("***ATENÇÃO: ESCOLHA A DIFICULDADE DO JOGO.\n")
	   	escreva("(1)-Fácil, (2)-Médio, (3)-Difícil.\n\n")
	   	escreva("Digite 1, 2 ou 3:")
	   
	   	leia(nivel_dificuldade)
	   	limpa()
		
		}
	      
		
		caracter alfabeto[] = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}
		
		
		cadeia arrays[][] = {
		{"PRETO", "AZUL", "LARANJA", "ROSA", "ROXO", "CINZA", "BRANCO", "AMARELO", "VERDE", "VERMELHO", "MARROM", "BEGE"},
		{"ONÇA", "MACACO", "GIRAFA", "VACA", "OVELHA", "CABRA", "BODE", "PINGUIM", "ELEFANTE", "BALEIA", "GATO", "CACHORRO", "CALOPSITA", "URUBU", "PEIXE", "LAGARTIXA", "CORVO", "LAGARTO", "PAPAGAIO", "BARATA"},
		{"BANANA", "UVA", "TANGERINA", "MORANGO", "ABACAXI", "KIWI", "LARANJA", "GOIABA", "AMEIXA", "MELANCIA", "MANGA", "GRAVIOLA", "MAÇA", "AMEIXA", "CEREJA", "AMORA"},
		{"LUCAS","PRINCIA","MARCUS","ERIC", "UMBERTO", "ANA", "FERNANDO", "TULIO", "THIAGO", "GLENDA", "RYAN", "VITOR", "BETO", "ROBERTA", "BRUNO", "AMANDA", "LUAN", "RAFAEL", "GABRIEL", "RENATA"},
		{"NATAL","BRASILIA","SALVADOR","FORTALEZA","MACAIBA","CAMPINAS","RECIFE","MANAUS","PARELHAS","ARACAJU","PARNAMIRIM","CAICO","VARZEA","PATOS","SOROCABA","NITEROI","CARUARU"}
		}
		
		//01 - NOMES[3][19]
		//02 - CORES[0][11] 
		//03 - FRUTAS[2][15]
		//04 - CIDADES[4][16] 
		//05 - ANIMAIS[1][19]

		inteiro tamanho_array_nomes = 19
		inteiro tamanho_array_cores = 11
		inteiro tamanho_array_frutas = 15
		inteiro tamanho_array_cidades = 16
		inteiro tamanho_array_animais = 19

		
		cadeia palavras_sorteadas[5][5]
		
		inteiro tipo_opcao_jogador = 0

		se (nivel_dificuldade == 3){
			   	escreva("Nivel de dificuldade 3. Você não pode escolher o tipo das palavras\n\n" )
		}	
		senao{
	   		enquanto (tipo_opcao_jogador > 5 ou tipo_opcao_jogador <= 0){
	   			escreva("INFORME O TIPO DAS PALAVRAS:\n\n" )
	   			escreva("(1)-Nomes, (2)-Cores, (3)-Frutas, (4)-Cidades, (5)-Animais\n\n")
	   			escreva("Digite 1, 2, 3, 4 ou 5:")
	   
	   			leia(tipo_opcao_jogador)
	   		}
	   	}
		
		inteiro nomes_num_array[100]
		inteiro contador_nomes
		
		inteiro cidade_num_array[100]
		inteiro contador_cidades

		inteiro frutas_num_array[100]
		inteiro contador_frutas

		inteiro animais_num_array[100]
		inteiro contador_animais

		inteiro cores_num_array[100]
		inteiro contador_cores
		 
		
		para(inteiro i = 0; i < tamanho_array_nomes; i = i + 1){
   		
   		nomes_num_array[i] = fun.sorteia(0, tamanho_array_nomes)
   		
   			se (i > 0){
   				contador_nomes = 0
   				enquanto (contador_nomes < i){
   					
   					se (nomes_num_array[i] == nomes_num_array[contador_nomes]){
   						
   						nomes_num_array[i] = fun.sorteia(0, tamanho_array_nomes)
   						contador_nomes = 0
   			
   					}senao{ contador_nomes = contador_nomes + 1 }
   				}	
   		}	
   		
  	 	}
  	 	
		para(inteiro i = 0; i < tamanho_array_cidades; i = i + 1){
   		
   		cidade_num_array[i] = fun.sorteia(0, tamanho_array_cidades)
   		
   			se (i > 0){
   				contador_cidades = 0
   				enquanto (contador_cidades < i){
   					
   					se (cidade_num_array[i] == cidade_num_array[contador_cidades]){
   						
   						cidade_num_array[i] = fun.sorteia(0, tamanho_array_cidades)
   						contador_cidades = 0
   			
   					}senao{ contador_cidades = contador_cidades + 1 }
   				}	
   		}
  	 	}
  	 	
		para(inteiro i = 0; i < tamanho_array_cores; i = i + 1){
   		
   		cores_num_array[i] = fun.sorteia(0, tamanho_array_cores)
   		
   			se (i > 0){
   				contador_cores = 0
   				enquanto (contador_cores < i){
   					
   					se (cores_num_array[i] == cores_num_array[contador_cores]){
   						
   						cores_num_array[i] = fun.sorteia(0, tamanho_array_cores)
   						contador_cores = 0
   			
   					}senao{ contador_cores = contador_cores + 1 }
   				}	
   		}
  	 	}
  	 	
		para(inteiro i = 0; i < tamanho_array_frutas; i = i + 1){
   		
   		frutas_num_array[i] = fun.sorteia(0, tamanho_array_frutas)
   		
   			se (i > 0){
   				contador_frutas = 0
   				enquanto (contador_frutas < i){
   					
   					se (frutas_num_array[i] == frutas_num_array[contador_frutas]){
   						
   						frutas_num_array[i] = fun.sorteia(0, tamanho_array_frutas)
   						contador_frutas = 0
   			
   					}senao{ contador_frutas = contador_frutas + 1 }
   				}	
   		}
  	 	}
  	 	
		para(inteiro i = 0; i < tamanho_array_animais; i = i + 1){
   		
   		animais_num_array[i] = fun.sorteia(0, tamanho_array_animais)
   		
   			se (i > 0){
   				contador_animais = 0
   				enquanto (contador_animais < i){
   					
   					se (animais_num_array[i] == animais_num_array[contador_animais]){
   						
   						animais_num_array[i] = fun.sorteia(0, tamanho_array_animais)
   						contador_animais = 0
   			
   					}senao{ contador_animais = contador_animais + 1 }
   				}	
   		}
  	 	}
  	 	
  	 	se (nivel_dificuldade < 3){
			se(tipo_opcao_jogador == 1){ para (inteiro i = 4 ; i >= 0; i = i - 1){palavras_sorteadas[0][i] = arrays[3][nomes_num_array[nomes_num_array[i]]]}}
			senao se (tipo_opcao_jogador == 2){ para (inteiro i = 4 ; i >= 0; i = i - 1){ palavras_sorteadas[0][i] = arrays[0][cores_num_array[cores_num_array[i]]]}}
			senao se (tipo_opcao_jogador == 3){ para (inteiro i = 4 ; i >= 0; i = i - 1){ palavras_sorteadas[0][i] = arrays[2][frutas_num_array[frutas_num_array[i]]]}}
			senao se (tipo_opcao_jogador == 4){ para (inteiro i = 4 ; i >= 0; i = i - 1){ palavras_sorteadas[0][i] = arrays[4][cidade_num_array[cidade_num_array[i]]]}}
			senao se (tipo_opcao_jogador == 5){ para (inteiro i = 4 ; i >= 0; i = i - 1){ palavras_sorteadas[0][i] = arrays[1][animais_num_array[animais_num_array[i]]]}}
  	 	}senao{
  	 			palavras_sorteadas[0][0] = arrays[3][nomes_num_array[nomes_num_array[0]]]		
				palavras_sorteadas[0][1] = arrays[0][cores_num_array[cores_num_array[1]]]
				palavras_sorteadas[0][2] = arrays[2][frutas_num_array[frutas_num_array[2]]]
				palavras_sorteadas[0][3] = arrays[4][cidade_num_array[cidade_num_array[3]]]
				palavras_sorteadas[0][4] = arrays[1][animais_num_array[animais_num_array[4]]]
  	 	}
  	 	
		
		inteiro linhas = 20
		inteiro colunas = 20
		
		
		caracter caca_palavras_vazio[100][100]
		inteiro mascara_caca_palavras[100][100]
		
		inserir_letras_na_matriz(linhas, colunas, caca_palavras_vazio, mascara_caca_palavras, alfabeto)
		
		montar_caca_palavras(nivel_dificuldade, linhas, colunas, caca_palavras_vazio, palavras_sorteadas, mascara_caca_palavras)
		
	}

  	funcao vazio inserir_letras_na_matriz (inteiro linhas, inteiro colunas, caracter matriz[][], inteiro mascara[][], caracter alfabeto_letras[]){
            
            para (inteiro i = 0; i < linhas; i = i + 1)
            {
                para (inteiro j = 0; j < colunas; j = j + 1)
                {
                    matriz[i][j] = alfabeto_letras[fun.sorteia(0,25)]
                    mascara[i][j] = 0
                    
                }
            }
                    
     }

     funcao vazio montar_caca_palavras ( inteiro nivel_dificuldade, inteiro linhas, inteiro colunas,
     caracter matriz_preenchida_com_letras[][], cadeia palavras_para_adicionar[][], inteiro mascara_caca_palavras[][]){
    
     	
     	cadeia palavra_um = ""
     	cadeia palavra_dois = ""
     	cadeia palavra_tres = ""
     	cadeia palavra_quatro = ""
     	cadeia palavra_cinco = ""
     	
     	para (inteiro i = 4; i >=0; i = i - 1){ 
     		se (i == 0)     {palavra_um = palavras_para_adicionar[0][i]}
     		senao se(i == 1){palavra_dois = palavras_para_adicionar[0][i]}
     		senao se(i == 2){palavra_tres = palavras_para_adicionar[0][i]}
     		senao se(i == 3){palavra_quatro = palavras_para_adicionar[0][i]}
     		senao se(i == 4){palavra_cinco = palavras_para_adicionar[0][i]}
     	}

     	//VAMOS identificar o tamanho das palavras
     	inteiro tamanho_um = text.numero_caracteres(palavra_um)
		inteiro tamanho_dois = text.numero_caracteres(palavra_dois)
		inteiro tamanho_tres = text.numero_caracteres(palavra_tres)
		inteiro tamanho_quatro = text.numero_caracteres(palavra_quatro)
		inteiro tamanho_cinco = text.numero_caracteres(palavra_cinco)
		
		//VAMOS quebrar as palavras em letras e guardá-las em array

		caracter palavra_um_array[20][20]
     	caracter palavra_dois_array[20][20]
     	caracter palavra_tres_array[20][20]
     	caracter palavra_quatro_array[20][20]
     	caracter palavra_cinco_array[20][20]

     	//inteiro soma_do_total = tamanho_um + tamanho_dois + tamanho_tres + tamanho_quatro + tamanho_cinco 
     	
		para (inteiro i = 0; i < tamanho_um; i = i + 1){palavra_um_array[0][i] =  type.cadeia_para_caracter(text.extrair_subtexto(palavra_um, i, i+1))}
		para (inteiro i = 0; i < tamanho_dois; i = i + 1){palavra_dois_array[0][i] =  type.cadeia_para_caracter(text.extrair_subtexto(palavra_dois, i, i+1))}
		para (inteiro i = 0; i < tamanho_tres; i = i + 1){palavra_tres_array[0][i] =  type.cadeia_para_caracter(text.extrair_subtexto(palavra_tres, i, i+1))}
		para (inteiro i = 0; i < tamanho_quatro; i = i + 1){palavra_quatro_array[0][i] =  type.cadeia_para_caracter(text.extrair_subtexto(palavra_quatro, i, i+1))}
		para (inteiro i = 0; i < tamanho_cinco; i = i + 1){palavra_cinco_array[0][i] =  type.cadeia_para_caracter(text.extrair_subtexto(palavra_cinco, i, i+1))}


		//ENFIM VAMOS MONTAR O CAÇA PALVRAS

     	//tamanho da palavra menos o tamanho da linha(Evita que exceda o limite) SE ACASO
     	//
     	//fazer sorteio de onde inciar o procedimento de preenchimento das palavras na matriz já preenchida

     	escrevernatela(nivel_dificuldade, palavra_um, palavra_dois, palavra_tres, palavra_quatro, palavra_cinco,  linhas, colunas, palavra_um, tamanho_um, tamanho_dois, tamanho_tres, tamanho_quatro,
     	tamanho_cinco, palavra_um_array, palavra_dois_array, palavra_tres_array, palavra_quatro_array,
     	palavra_cinco_array, matriz_preenchida_com_letras, mascara_caca_palavras)
		
     }
     
	funcao vazio escrevernatela (inteiro nivel_dificuldade, cadeia palavra_um, cadeia palavra_dois, cadeia palavra_tres,
	cadeia palavra_quatro, cadeia palavra_cinco, inteiro linhas, inteiro colunas, cadeia palavra, inteiro tamanho_um, inteiro tamanho_dois, inteiro tamanho_tres,
	inteiro tamanho_quatro, inteiro tamanho_cinco, caracter arrayum[][], caracter arraydois[][], caracter arraytres[][],
	caracter arrayquatro[][], caracter arraycinco[][], caracter matriz_pcl[][], inteiro mascara_caca_palavras[][]){
	
	
	inteiro posicao_inicial_um = fun.sorteia(1, (linhas - tamanho_um))
	inteiro posicao_inicial_dois = fun.sorteia(1, (linhas - tamanho_dois))
	inteiro posicao_inicial_tres = fun.sorteia(1, (linhas - tamanho_tres))
	inteiro posicao_inicial_quatro = fun.sorteia(1, (linhas - tamanho_quatro))
	inteiro posicao_inicial_cinco = fun.sorteia(1, (linhas - tamanho_cinco))


	inteiro margensescrita[] = {
		fun.sorteia(0, posicao_inicial_um), fun.sorteia(0, posicao_inicial_dois),fun.sorteia(0, posicao_inicial_tres),
		fun.sorteia(0, posicao_inicial_quatro), fun.sorteia(0, posicao_inicial_cinco)
	}

	
	inteiro indices_linhascolunas[100]
	
	inteiro cont = 0

	criar_array_numerosaleatorios(linhas, cont, indices_linhascolunas)
	
	

	se (nivel_dificuldade == 1){ //linhas horizontais
	inteiro posicao_um[4]
	inteiro posicao_dois[4]
	inteiro posicao_tres[4]
	inteiro posicao_quatro[4]
	inteiro posicao_cinco[4]			
	
	para (inteiro i = 0; i < tamanho_um; i = i + 1){
		se (indices_linhascolunas[6] > tamanho_um){
			matriz_pcl[indices_linhascolunas[6]][ (indices_linhascolunas[6] - tamanho_um) + i] = arrayum[0][i]
			posicao_um[0] = (indices_linhascolunas[6] + 1)
			posicao_um[1] = (indices_linhascolunas[6] - tamanho_um) + 1
			posicao_um[2] = (indices_linhascolunas[6] - tamanho_um) + i + 1
		}
		senao{
			matriz_pcl[indices_linhascolunas[6]][ indices_linhascolunas[6] + i] = arrayum[0][i]
			posicao_um[0] = indices_linhascolunas[6] + 1
			posicao_um[1] = (indices_linhascolunas[6]) + 1
			posicao_um[2] = (indices_linhascolunas[6]) + i + 1
		} 
     }
     
	para (inteiro i = 0; i < tamanho_dois; i = i + 1){
		se (indices_linhascolunas[9] > tamanho_dois){
			matriz_pcl[indices_linhascolunas[9]][ (indices_linhascolunas[9] - tamanho_dois) + i] = arraydois[0][i]
			posicao_dois[0] = (indices_linhascolunas[9] + 1)
			posicao_dois[1] = (indices_linhascolunas[9] - tamanho_dois) + 1
			posicao_dois[2] = (indices_linhascolunas[9] - tamanho_dois) + i + 1
		}
		senao{
			matriz_pcl[indices_linhascolunas[9]][ indices_linhascolunas[9] + i] = arraydois[0][i]
			posicao_dois[0] = indices_linhascolunas[9] + 1
			posicao_dois[1] = (indices_linhascolunas[9]) + 1
			posicao_dois[2] = (indices_linhascolunas[9]) + i + 1
		}
     }
     
	para (inteiro i = 0; i < tamanho_tres; i = i + 1){
		se (indices_linhascolunas[2] > tamanho_tres){
			matriz_pcl[indices_linhascolunas[2]][ (indices_linhascolunas[2] - tamanho_tres) + i] = arraytres[0][i]
			posicao_tres[0] = (indices_linhascolunas[2] + 1)
			posicao_tres[1] = (indices_linhascolunas[2] - tamanho_tres) + 1
			posicao_tres[2] = (indices_linhascolunas[2] - tamanho_tres) + i + 1
		}
		senao{
			matriz_pcl[indices_linhascolunas[2]][ indices_linhascolunas[2] + i] = arraytres[0][i]
			posicao_tres[0] = indices_linhascolunas[2] + 1
			posicao_tres[1] = (indices_linhascolunas[2]) + 1
			posicao_tres[2] = (indices_linhascolunas[2]) + i + 1
		}
     }
     
	para (inteiro i = 0; i < tamanho_quatro; i = i + 1){
		se (indices_linhascolunas[7] > tamanho_quatro){
			matriz_pcl[indices_linhascolunas[7]][ (indices_linhascolunas[7] - tamanho_quatro) + i] = arrayquatro[0][i]
			posicao_quatro[0] = (indices_linhascolunas[7] + 1)
			posicao_quatro[1] = (indices_linhascolunas[7] - tamanho_quatro) + 1
			posicao_quatro[2] = (indices_linhascolunas[7] - tamanho_quatro) + i + 1
		}//arraydois[0][i]
		senao{
			matriz_pcl[indices_linhascolunas[7]][ indices_linhascolunas[7] + i] = arrayquatro[0][i]
			posicao_quatro[0] = indices_linhascolunas[7] + 1
			posicao_quatro[1] = (indices_linhascolunas[7]) + 1
			posicao_quatro[2] = (indices_linhascolunas[7]) + i + 1
		}
     }
     
    	para (inteiro i = 0; i < tamanho_cinco; i = i + 1){
		se (indices_linhascolunas[10] > tamanho_cinco){
			matriz_pcl[indices_linhascolunas[10]][ (indices_linhascolunas[10] - tamanho_cinco) + i] = arraycinco[0][i]
			posicao_cinco[0] = (indices_linhascolunas[10] + 1)
			posicao_cinco[1] = (indices_linhascolunas[10] - tamanho_cinco) + 1
			posicao_cinco[2] = (indices_linhascolunas[10] - tamanho_cinco) + i + 1
			}//arraydois[0][i]
		senao{
			matriz_pcl[indices_linhascolunas[10]][ indices_linhascolunas[10] + i] = arraycinco[0][i]
			posicao_cinco[0] = indices_linhascolunas[10] + 1
			posicao_cinco[1] = (indices_linhascolunas[10]) + 1
			posicao_cinco[2] = (indices_linhascolunas[10]) + i + 1
		}
		//RESPONSÁVEL POR GUARDAR AS POSIÇÕES DAS PALVRAS ADICIONADAS AO CAÇA PALAVRAS
	}
     
	
		print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
		
		inteiro coordenadas_jogador[4]
		
		inteiro contador = 0
		inteiro pontuacao = 0
		inteiro tentativas_restantes = 5
		
		cadeia palavras_encontradas[10]
			
		enquanto (contador < 5 e tentativas_restantes > 0){
		
		escreva("\nSUA PONTUAÇÃO:", pontuacao,"\n")
		escreva("TENTATIVAS RESTANTES: ", tentativas_restantes,"\n")
		escreva("PALAVRAS ENCONTRADAS: ", palavras_encontradas[0], " ",palavras_encontradas[1]," ",
		palavras_encontradas[2], " ",palavras_encontradas[3], " ", palavras_encontradas[4], "\n\n")
		escreva("BUSQUE POR: ", palavra_um, " - ",palavra_dois," - ", palavra_tres, " - ",
		palavra_quatro, " - ", palavra_cinco, "\n\n")

		escreva("DIGITE A COORDENADA DA PALAVRA ENCONTRADA\n")
		escreva("COORDENADA INCIAL DA PALAVRA (LINHA):")
		leia(coordenadas_jogador[0])
		escreva("\nCOORDENADA INCIAL DA PALAVRA (COLUNA):")
		leia(coordenadas_jogador[1])
		escreva("\n============================================\n")
		escreva("COORDENADA FINAL DA PALAVRA (LINHA):")
		leia(coordenadas_jogador[3])
		escreva("\nCOORDENADA FINAL DA PALAVRA (COLUNA):")
		leia(coordenadas_jogador[2])
			
			se(coordenadas_jogador[0] == posicao_um[0] e coordenadas_jogador[1] == posicao_um[1] e coordenadas_jogador[2] == posicao_um[2]){
				limpa()
				se(palavras_encontradas[0] == palavra_um){
					print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
					escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
					tentativas_restantes = tentativas_restantes - 1
				}senao{
					print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
					
					palavras_encontradas[0] =  palavra_um
					
					escreva("\n\nPARABÉNS!!!\n\n")
					escreva("Você encontrou a palavra ", palavra_um, "!\n")
					pontuacao = pontuacao + 1
					contador = contador + 1
				}
			}senao{
				
				se(coordenadas_jogador[0] == posicao_dois[0] e coordenadas_jogador[1] == posicao_dois[1] e coordenadas_jogador[2] == posicao_dois[2]){	
					
					se(palavras_encontradas[1] == palavra_dois){
						print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
						escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
						tentativas_restantes = tentativas_restantes - 1
					}senao{
						print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
						palavras_encontradas[1] =  palavra_dois
						escreva("\n\nPARABÉNS!!!\n\n")
						escreva("Você encontrou a palavra ", palavra_dois, "!\n")
						pontuacao = pontuacao + 1
						contador = contador + 1
					}
					
				}senao{
					se(coordenadas_jogador[0] == posicao_tres[0] e coordenadas_jogador[1] == posicao_tres[1] e coordenadas_jogador[2] == posicao_tres[2]){
						
						se(palavras_encontradas[2] == palavra_tres){
							print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
							escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
							tentativas_restantes = tentativas_restantes - 1
						}senao{
							print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
							palavras_encontradas[2] =  palavra_tres
							escreva("\n\nPARABÉNS!!!\n\n")
							escreva("Você encontrou a palavra ", palavra_tres, "!\n")
							pontuacao = pontuacao + 1
							contador = contador + 1
						}	
					}senao{
						se(coordenadas_jogador[0] == posicao_quatro[0] e coordenadas_jogador[1] == posicao_quatro[1] e coordenadas_jogador[2] == posicao_quatro[2]){
							se(palavras_encontradas[3] == palavra_quatro){
								print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
								escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
								tentativas_restantes = tentativas_restantes - 1
							}senao{
								print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
								palavras_encontradas[3] =  palavra_quatro
								escreva("\n\nPARABÉNS!!!\n\n")
								escreva("Você encontrou a palavra ", palavra_quatro, "!\n")
								pontuacao = pontuacao + 1
								contador = contador + 1
							}	
						}senao{
					 		se(coordenadas_jogador[0] == posicao_cinco[0] e coordenadas_jogador[1] == posicao_cinco[1] e coordenadas_jogador[2] == posicao_cinco[2]){
								se(palavras_encontradas[4] == palavra_cinco){
									print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
									escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
									tentativas_restantes = tentativas_restantes - 1
								}senao{
									print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
									palavras_encontradas[4] =  palavra_cinco
									escreva("\n\nPARABÉNS!!!\n\n")
									escreva("Você encontrou a palavra ", palavra_cinco, "!\n")
									pontuacao = pontuacao + 1
									contador = contador + 1
								}
							}senao{
								limpa()
								
								tentativas_restantes = tentativas_restantes - 1
								
								se(tentativas_restantes > 0){
									print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
									escreva("\n***ATENÇÃO: Você ERROU as coordenadas da palavra!\n\n")
								}
							}
						}
						
					}
		
				}
				
			}
		}//fim do ENQUANTO
		se(tentativas_restantes == 0){
			limpa()
			escreva("===============")
		 	escreva("\nFIM DE JOGO!\n")
		 	escreva("===============\n")
		 	escreva("*** Você perdeu por exceder o seu limite de tentativas!\n\n\n\n")
		 	
		}senao se(pontuacao == 5){
			limpa()
			escreva("===============")
		 	escreva("\nVOCÊ GANHOU O JOGO!\n")
		 	escreva("===============\n")
		 	escreva("***Obrigado por jogar nosso jogo!\n\n\n\n")
		}		
	}senao 
	
	se(nivel_dificuldade == 2){
	

	inteiro indice_um = 0
	inteiro indice_dois = 8
	inteiro indice_tres = 4
	inteiro indice_quatro = 6
	inteiro indice_cinco = 12
	
	inteiro posicao_um[4]
	inteiro posicao_dois[4]
	inteiro posicao_tres[4]
	inteiro posicao_quatro[4]
	inteiro posicao_cinco[4]	


	inteiro posicao_um_jogador[4]

	se(verificar_coordenadas_para_escrita(tamanho_um, linhas, indice_um, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_um; j = j + 1){
			
			se(indices_linhascolunas[indice_um] > tamanho_um){
				matriz_pcl[indices_linhascolunas[indice_um]][ (indices_linhascolunas[indice_um] - tamanho_um) + j] = arrayum[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_um]][ (indices_linhascolunas[indice_um] - tamanho_um) + j] = 1
				posicao_um[0] = (indices_linhascolunas[indice_um] + 1)
				posicao_um[1] = (indices_linhascolunas[indice_um] - tamanho_um) + 1
				posicao_um[2] = (indices_linhascolunas[indice_um] - tamanho_um) + j + 1
			}senao{
				matriz_pcl[indices_linhascolunas[indice_um]][ (indices_linhascolunas[indice_um]) + j] = arrayum[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_um]][ (indices_linhascolunas[indice_um]) + j] = 1
				posicao_um[0] = indices_linhascolunas[indice_um] + 1
				posicao_um[1] = (indices_linhascolunas[indice_um]) + 1
				posicao_um[2] = (indices_linhascolunas[indice_um]) + j + 1
			}
		}
	}
		
	se(verificar_coordenadas_para_escrita(tamanho_dois, linhas, indice_dois, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_dois; j = j + 1){
			se(indices_linhascolunas[indice_dois] > tamanho_dois){
				
				matriz_pcl[indices_linhascolunas[indice_dois]][ (indices_linhascolunas[indice_dois] - tamanho_dois) + j] = arraydois[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_dois]][ (indices_linhascolunas[indice_dois] - tamanho_dois) + j] = 1
				posicao_dois[0] = indices_linhascolunas[indice_dois] + 1
				posicao_dois[1] = (indices_linhascolunas[indice_dois] - tamanho_dois) + 1
				posicao_dois[2] = (indices_linhascolunas[indice_dois] - tamanho_dois) + j + 1
					
			}senao{
				matriz_pcl[indices_linhascolunas[indice_dois]][ (indices_linhascolunas[indice_dois]) + j] = arraydois[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_dois]][ (indices_linhascolunas[indice_dois]) + j] = 1
				
				posicao_dois[0] = indices_linhascolunas[indice_dois] + 1
				posicao_dois[1] = indices_linhascolunas[indice_dois] + 1
				posicao_dois[2] = (indices_linhascolunas[indice_dois]) + j + 1
			}
		}
	}
	
	se(verificar_coordenadas_para_escrita(tamanho_tres, linhas, indice_tres, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_tres; j = j + 1){
			se(indices_linhascolunas[indice_tres] > tamanho_tres){
				
				matriz_pcl[indices_linhascolunas[indice_tres]][ (indices_linhascolunas[indice_tres] - tamanho_tres) + j] = arraytres[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_tres]][ (indices_linhascolunas[indice_tres] - tamanho_tres) + j] = 1
				
				posicao_tres[0] = indices_linhascolunas[indice_tres] + 1
				posicao_tres[1] = (indices_linhascolunas[indice_tres] - tamanho_tres) + 1
				posicao_tres[2] = (indices_linhascolunas[indice_tres] - tamanho_tres) + j + 1
				
			}senao{
				matriz_pcl[indices_linhascolunas[indice_tres]][ (indices_linhascolunas[indice_tres]) + j] = arraytres[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_tres]][ (indices_linhascolunas[indice_tres]) + j] = 1
				posicao_tres[0] = indices_linhascolunas[indice_tres] + 1
				posicao_tres[1] = indices_linhascolunas[indice_tres] + 1
				posicao_tres[2] = (indices_linhascolunas[indice_tres]) + j + 1
			}
		}
	}
	
	se(verificar_coordenadas_para_escrita(tamanho_quatro, linhas, indice_quatro, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_quatro; j = j + 1){
			se(indices_linhascolunas[indice_quatro] > tamanho_quatro){
				
				matriz_pcl[ (indices_linhascolunas[indice_quatro] - tamanho_quatro) + j][indices_linhascolunas[indice_quatro]] = arrayquatro[0][j]
				mascara_caca_palavras[ (indices_linhascolunas[indice_quatro] - tamanho_quatro) + j][indices_linhascolunas[indice_quatro]] = 1
				
				posicao_quatro[0] = indices_linhascolunas[indice_quatro] + 1 //coluna ou linha inicial
				posicao_quatro[1] = (indices_linhascolunas[indice_quatro] - tamanho_quatro) + 1 //coluna inicial ou linha inicial
				posicao_quatro[2] = (indices_linhascolunas[indice_quatro] - tamanho_quatro) + j + 1 //coluna final ou linha final			
			}senao{
				matriz_pcl[ (indices_linhascolunas[indice_quatro]) + j][indices_linhascolunas[indice_quatro]] = arrayquatro[0][j]
				mascara_caca_palavras[ (indices_linhascolunas[indice_quatro]) + j][indices_linhascolunas[indice_quatro]] = 1
				posicao_quatro[0] = indices_linhascolunas[indice_quatro] + 1
				posicao_quatro[1] = indices_linhascolunas[indice_quatro] + 1
				posicao_quatro[2] = (indices_linhascolunas[indice_quatro]) + j + 1
			}
		}
	}
	
	se(verificar_coordenadas_para_escrita(tamanho_cinco, linhas, indice_cinco, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_cinco; j = j + 1){
			se(indices_linhascolunas[indice_cinco] > tamanho_cinco){
				
				matriz_pcl[ (indices_linhascolunas[indice_cinco] - tamanho_cinco) + j][indices_linhascolunas[indice_cinco]] = arraycinco[0][j]
				mascara_caca_palavras[ (indices_linhascolunas[indice_cinco] - tamanho_cinco) + j][indices_linhascolunas[indice_cinco]] = 1
				posicao_cinco[0] = indices_linhascolunas[indice_cinco] + 1 //coluna ou linha inicial
				posicao_cinco[1] = (indices_linhascolunas[indice_cinco] - tamanho_cinco) + 1 //coluna inicial ou linha inicial
				posicao_cinco[2] = (indices_linhascolunas[indice_cinco] - tamanho_cinco) + j + 1 //coluna final ou linha final	
					
			}senao{
				matriz_pcl[ (indices_linhascolunas[indice_cinco]) + j][indices_linhascolunas[indice_cinco]] = arraycinco[0][j]
				mascara_caca_palavras[ (indices_linhascolunas[indice_cinco]) + j][indices_linhascolunas[indice_cinco]] = 1
				posicao_cinco[0] = indices_linhascolunas[indice_cinco] + 1
				posicao_cinco[1] = indices_linhascolunas[indice_cinco] + 1
				posicao_cinco[2] = (indices_linhascolunas[indice_cinco]) + j + 1
			}
		}
	}
		
		print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
		
		inteiro contador = 0
		inteiro pontuacao = 0
		inteiro tentativas_restantes = 4
		cadeia palavras_encontradas[10]
			
		enquanto (contador < 5 e tentativas_restantes > 0){
		escreva("\nSUA PONTUAÇÃO:", pontuacao,"\n")
		escreva("TENTATIVAS RESTANTES:", tentativas_restantes,"\n")
		escreva("PALAVRAS ENCONTRADAS:", palavras_encontradas[0], " ",palavras_encontradas[1]," ",
		palavras_encontradas[2], " ",palavras_encontradas[3], " ", palavras_encontradas[4], "\n\n")

		escreva("DIGITE A COORDENADA DA PALAVRA ENCONTRADA\n")
		escreva("COORDENADA INCIAL DA PALAVRA (LINHA):")
		leia(posicao_um_jogador[0])
		escreva("\nCOORDENADA INCIAL DA PALAVRA (COLUNA):")
		leia(posicao_um_jogador[1])
		escreva("\n============================================\n")
		escreva("COORDENADA FINAL DA PALAVRA (LINHA):")
		leia(posicao_um_jogador[3])
		escreva("\nCOORDENADA FINAL DA PALAVRA (COLUNA):")
		leia(posicao_um_jogador[2])
			
			se(posicao_um_jogador[0] == posicao_um[0] e posicao_um_jogador[1] == posicao_um[1] e posicao_um_jogador[2] == posicao_um[2]){
				limpa()
				se(palavras_encontradas[0] == palavra_um){
					print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
					escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
					tentativas_restantes = tentativas_restantes - 1
				}senao{
					print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
					palavras_encontradas[0] =  palavra_um
					escreva("\n\nPARABÉNS!!!\n\n")
					escreva("Você encontrou a palavra ", palavra_um, "!\n")
					pontuacao = pontuacao + 1
					contador = contador + 1
				}
			}senao{
				se(posicao_um_jogador[0] == posicao_dois[0] e posicao_um_jogador[1] == posicao_dois[1] e posicao_um_jogador[2] == posicao_dois[2]){	
					
					se(palavras_encontradas[1] == palavra_dois){
						print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
						escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
						tentativas_restantes = tentativas_restantes - 1
					}senao{
						print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
						palavras_encontradas[1] =  palavra_dois
						escreva("\n\nPARABÉNS!!!\n\n")
						escreva("Você encontrou a palavra ", palavra_dois, "!\n")
						pontuacao = pontuacao + 1
						contador = contador + 1
					}
					
				}senao{
					se(posicao_um_jogador[0] == posicao_tres[0] e posicao_um_jogador[1] == posicao_tres[1] e posicao_um_jogador[2] == posicao_tres[2]){
						
						se(palavras_encontradas[2] == palavra_tres){
							print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
							escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
							tentativas_restantes = tentativas_restantes - 1
						}senao{
							print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
							palavras_encontradas[2] =  palavra_tres
							escreva("\n\nPARABÉNS!!!\n\n")
							escreva("Você encontrou a palavra ", palavra_tres, "!\n")
							pontuacao = pontuacao + 1
							contador = contador + 1
						}	
					}senao{
						se(posicao_um_jogador[0] == posicao_quatro[1] e posicao_um_jogador[1] == posicao_quatro[0] e posicao_um_jogador[3] == posicao_quatro[2]){
							se(palavras_encontradas[3] == palavra_quatro){
								print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
								escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
								tentativas_restantes = tentativas_restantes - 1
							}senao{
								print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
								palavras_encontradas[3] =  palavra_quatro
								escreva("\n\nPARABÉNS!!!\n\n")
								escreva("Você encontrou a palavra ", palavra_quatro, "!\n")
								pontuacao = pontuacao + 1
								contador = contador + 1
							}	
						}senao{
					 		se(posicao_um_jogador[0] == posicao_cinco[1] e posicao_um_jogador[1] == posicao_cinco[0] e posicao_um_jogador[3] == posicao_cinco[2]){
								se(palavras_encontradas[4] == palavra_cinco){
									print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
									escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
									tentativas_restantes = tentativas_restantes - 1
								}senao{
									print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
									palavras_encontradas[4] =  palavra_cinco
									escreva("\n\nPARABÉNS!!!\n\n")
									escreva("Você encontrou a palavra ", palavra_cinco, "!\n")
									pontuacao = pontuacao + 1
									contador = contador + 1
								}
							}senao{
								limpa()
								tentativas_restantes = tentativas_restantes - 1
								se(tentativas_restantes > 0){
									print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
									escreva("\n***ATENÇÃO: Você ERROU as coordenadas da palavra!\n\n")
								}
							}
						}
						
					}
		
				}
				
			}
		}//fim do ENQUANTO

		se(tentativas_restantes == 0){
			limpa()
			escreva("===============")
		 	escreva("\nFIM DE JOGO!\n")
		 	escreva("===============\n")
		 	escreva("*** Você perdeu por exceder o seu limite de tentativas!\n\n\n\n")
		 	
		}senao se(pontuacao == 5){
			limpa()
			escreva("===============")
		 	escreva("\nVOCÊ GANHOU O JOGO!\n")
		 	escreva("===============\n")
		 	escreva("***Obrigado por jogar nosso jogo!\n\n\n\n")
		}

	}senao 
	se(nivel_dificuldade == 3){

	inteiro indice_um = 0
	inteiro indice_dois = 8
	inteiro indice_tres = 4
	inteiro indice_quatro = 6
	inteiro indice_cinco = 12
	
	inteiro posicao_um[4]
	inteiro posicao_dois[4]
	inteiro posicao_tres[4]
	inteiro posicao_quatro[4]
	inteiro posicao_cinco[4]	


	inteiro posicao_um_jogador[4]

	se(verificar_coordenadas_para_escrita(tamanho_um, linhas, indice_um, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_um; j = j + 1){
			
			se(indices_linhascolunas[indice_um] > tamanho_um){
				matriz_pcl[indices_linhascolunas[indice_um]][ (indices_linhascolunas[indice_um] - tamanho_um) + j] = arrayum[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_um]][ (indices_linhascolunas[indice_um] - tamanho_um) + j] = 1
				posicao_um[0] = (indices_linhascolunas[indice_um] + 1)
				posicao_um[1] = (indices_linhascolunas[indice_um] - tamanho_um) + 1
				posicao_um[2] = (indices_linhascolunas[indice_um] - tamanho_um) + j + 1
			}senao{
				matriz_pcl[indices_linhascolunas[indice_um]][ (indices_linhascolunas[indice_um]) + j] = arrayum[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_um]][ (indices_linhascolunas[indice_um]) + j] = 1
				posicao_um[0] = indices_linhascolunas[indice_um] + 1
				posicao_um[1] = (indices_linhascolunas[indice_um]) + 1
				posicao_um[2] = (indices_linhascolunas[indice_um]) + j + 1
			}
		}
	}
		
	se(verificar_coordenadas_para_escrita(tamanho_dois, linhas, indice_dois, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_dois; j = j + 1){
			se(indices_linhascolunas[indice_dois] > tamanho_dois){
				
				matriz_pcl[indices_linhascolunas[indice_dois]][ (indices_linhascolunas[indice_dois] - tamanho_dois) + j] = arraydois[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_dois]][ (indices_linhascolunas[indice_dois] - tamanho_dois) + j] = 1
				posicao_dois[0] = indices_linhascolunas[indice_dois] + 1
				posicao_dois[1] = (indices_linhascolunas[indice_dois] - tamanho_dois) + 1
				posicao_dois[2] = (indices_linhascolunas[indice_dois] - tamanho_dois) + j + 1
					
			}senao{
				matriz_pcl[indices_linhascolunas[indice_dois]][ (indices_linhascolunas[indice_dois]) + j] = arraydois[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_dois]][ (indices_linhascolunas[indice_dois]) + j] = 1
				
				posicao_dois[0] = indices_linhascolunas[indice_dois] + 1
				posicao_dois[1] = indices_linhascolunas[indice_dois] + 1
				posicao_dois[2] = (indices_linhascolunas[indice_dois]) + j + 1
			}
		}
	}
	
	se(verificar_coordenadas_para_escrita(tamanho_tres, linhas, indice_tres, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_tres; j = j + 1){
			se(indices_linhascolunas[indice_tres] > tamanho_tres){
				
				matriz_pcl[indices_linhascolunas[indice_tres]][ (indices_linhascolunas[indice_tres] - tamanho_tres) + j] = arraytres[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_tres]][ (indices_linhascolunas[indice_tres] - tamanho_tres) + j] = 1
				posicao_tres[0] = indices_linhascolunas[indice_tres] + 1
				posicao_tres[1] = (indices_linhascolunas[indice_tres] - tamanho_tres) + 1
				posicao_tres[2] = (indices_linhascolunas[indice_tres] - tamanho_tres) + j + 1
				
			}senao{
				matriz_pcl[indices_linhascolunas[indice_tres]][ (indices_linhascolunas[indice_tres]) + j] = arraytres[0][j]
				mascara_caca_palavras[indices_linhascolunas[indice_tres]][ (indices_linhascolunas[indice_tres]) + j] = 1
				posicao_tres[0] = indices_linhascolunas[indice_tres] + 1
				posicao_tres[1] = indices_linhascolunas[indice_tres] + 1
				posicao_tres[2] = (indices_linhascolunas[indice_tres]) + j + 1
			}
		}
	}
	
	se(verificar_coordenadas_para_escrita(tamanho_quatro, linhas, indice_quatro, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_quatro; j = j + 1){
			se(indices_linhascolunas[indice_quatro] > tamanho_quatro){
				
				matriz_pcl[ (indices_linhascolunas[indice_quatro] - tamanho_quatro) + j][indices_linhascolunas[indice_quatro]] = arrayquatro[0][j]
				mascara_caca_palavras[ (indices_linhascolunas[indice_quatro] - tamanho_quatro) + j][indices_linhascolunas[indice_quatro]] = 1
				
				posicao_quatro[0] = indices_linhascolunas[indice_quatro] + 1 //coluna ou linha inicial
				posicao_quatro[1] = (indices_linhascolunas[indice_quatro] - tamanho_quatro) + 1 //coluna inicial ou linha inicial
				posicao_quatro[2] = (indices_linhascolunas[indice_quatro] - tamanho_quatro) + j + 1 //coluna final ou linha final			
			}senao{
				matriz_pcl[ (indices_linhascolunas[indice_quatro]) + j][indices_linhascolunas[indice_quatro]] = arrayquatro[0][j]
				mascara_caca_palavras[ (indices_linhascolunas[indice_quatro]) + j][indices_linhascolunas[indice_quatro]] = 1
				posicao_quatro[0] = indices_linhascolunas[indice_quatro] + 1
				posicao_quatro[1] = indices_linhascolunas[indice_quatro] + 1
				posicao_quatro[2] = (indices_linhascolunas[indice_quatro]) + j + 1
			}
		}
	}
	
	se(verificar_coordenadas_para_escrita(tamanho_cinco, linhas, indice_cinco, indices_linhascolunas, mascara_caca_palavras) == 1){
		para( inteiro j = 0; j < tamanho_cinco; j = j + 1){
			se(indices_linhascolunas[indice_cinco] > tamanho_cinco){
				
				matriz_pcl[ (indices_linhascolunas[indice_cinco] - tamanho_cinco) + j][indices_linhascolunas[indice_cinco]] = arraycinco[0][j]
				mascara_caca_palavras[ (indices_linhascolunas[indice_cinco] - tamanho_cinco) + j][indices_linhascolunas[indice_cinco]] = 1
				posicao_cinco[0] = indices_linhascolunas[indice_cinco] + 1 //coluna ou linha inicial
				posicao_cinco[1] = (indices_linhascolunas[indice_cinco] - tamanho_cinco) + 1 //coluna inicial ou linha inicial
				posicao_cinco[2] = (indices_linhascolunas[indice_cinco] - tamanho_cinco) + j + 1 //coluna final ou linha final	
					
			}senao{
				matriz_pcl[ (indices_linhascolunas[indice_cinco]) + j][indices_linhascolunas[indice_cinco]] = arraycinco[0][j]
				mascara_caca_palavras[ (indices_linhascolunas[indice_cinco]) + j][indices_linhascolunas[indice_cinco]] = 1
				posicao_cinco[0] = indices_linhascolunas[indice_cinco] + 1
				posicao_cinco[1] = indices_linhascolunas[indice_cinco] + 1
				posicao_cinco[2] = (indices_linhascolunas[indice_cinco]) + j + 1
			}
		}
	}
		
		print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
		
		inteiro contador = 0
		inteiro pontuacao = 0
		inteiro tentativas_restantes = 2
		cadeia palavras_encontradas[10]
			
		enquanto (contador < 5 e tentativas_restantes > 0){
		escreva("\nSUA PONTUAÇÃO:", pontuacao,"\n")
		escreva("TENTATIVAS RESTANTES:", tentativas_restantes,"\n")
		escreva("PALAVRAS ENCONTRADAS:", palavras_encontradas[0], " ",palavras_encontradas[1]," ",
		palavras_encontradas[2], " ",palavras_encontradas[3], " ", palavras_encontradas[4], "\n\n")

		escreva("DIGITE A COORDENADA DA PALAVRA ENCONTRADA\n")
		escreva("COORDENADA INCIAL DA PALAVRA (LINHA):")
		leia(posicao_um_jogador[0])
		escreva("\nCOORDENADA INCIAL DA PALAVRA (COLUNA):")
		leia(posicao_um_jogador[1])
		escreva("\n============================================\n")
		escreva("COORDENADA FINAL DA PALAVRA (LINHA):")
		leia(posicao_um_jogador[3])
		escreva("\nCOORDENADA FINAL DA PALAVRA (COLUNA):")
		leia(posicao_um_jogador[2])
			
			se(posicao_um_jogador[0] == posicao_um[0] e posicao_um_jogador[1] == posicao_um[1] e posicao_um_jogador[2] == posicao_um[2]){
				limpa()
				se(palavras_encontradas[0] == palavra_um){
					print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
					escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
					tentativas_restantes = tentativas_restantes - 1
				}senao{
					print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
					palavras_encontradas[0] =  palavra_um
					escreva("\n\nPARABÉNS!!!\n\n")
					escreva("Você encontrou a palavra ", palavra_um, "!\n")
					pontuacao = pontuacao + 1
					contador = contador + 1
				}
			}senao{
				se(posicao_um_jogador[0] == posicao_dois[0] e posicao_um_jogador[1] == posicao_dois[1] e posicao_um_jogador[2] == posicao_dois[2]){	
					
					se(palavras_encontradas[1] == palavra_dois){
						print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
						escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
						tentativas_restantes = tentativas_restantes - 1
					}senao{
						print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
						palavras_encontradas[1] =  palavra_dois
						escreva("\n\nPARABÉNS!!!\n\n")
						escreva("Você encontrou a palavra ", palavra_dois, "!\n")
						pontuacao = pontuacao + 1
						contador = contador + 1
					}
					
				}senao{
					se(posicao_um_jogador[0] == posicao_tres[0] e posicao_um_jogador[1] == posicao_tres[1] e posicao_um_jogador[2] == posicao_tres[2]){
						
						se(palavras_encontradas[2] == palavra_tres){
							print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
							escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
							tentativas_restantes = tentativas_restantes - 1
						}senao{
							print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
							palavras_encontradas[2] =  palavra_tres
							escreva("\n\nPARABÉNS!!!\n\n")
							escreva("Você encontrou a palavra ", palavra_tres, "!\n")
							pontuacao = pontuacao + 1
							contador = contador + 1
						}	
					}senao{
						se(posicao_um_jogador[0] == posicao_quatro[1] e posicao_um_jogador[1] == posicao_quatro[0] e posicao_um_jogador[3] == posicao_quatro[2]){
							se(palavras_encontradas[3] == palavra_quatro){
								print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
								escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
								tentativas_restantes = tentativas_restantes - 1
							}senao{
								print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
								palavras_encontradas[3] =  palavra_quatro
								escreva("\n\nPARABÉNS!!!\n\n")
								escreva("Você encontrou a palavra ", palavra_quatro, "!\n")
								pontuacao = pontuacao + 1
								contador = contador + 1
							}	
						}senao{
					 		se(posicao_um_jogador[0] == posicao_cinco[1] e posicao_um_jogador[1] == posicao_cinco[0] e posicao_um_jogador[3] == posicao_cinco[2]){
								se(palavras_encontradas[4] == palavra_cinco){
									print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
									escreva("=============================================\n***ATENÇÃO: VOCÊ JÁ ENCONTROU ESSA PALAVRA!\n=============================================\n")
									tentativas_restantes = tentativas_restantes - 1
								}senao{
									print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
									palavras_encontradas[4] =  palavra_cinco
									escreva("\n\nPARABÉNS!!!\n\n")
									escreva("Você encontrou a palavra ", palavra_cinco, "!\n")
									pontuacao = pontuacao + 1
									contador = contador + 1
								}
							}senao{
								limpa()
								tentativas_restantes = tentativas_restantes - 1
								se(tentativas_restantes > 0){
									print_na_tela(linhas, colunas, matriz_pcl, mascara_caca_palavras)
									escreva("\n***ATENÇÃO: Você ERROU as coordenadas da palavra!\n\n")
								}
							}
						}
						
					}
		
				}
				
			}
		}//fim do ENQUANTO

		se(tentativas_restantes == 0){
			limpa()
			escreva("===============")
		 	escreva("\nFIM DE JOGO!\n")
		 	escreva("===============\n")
		 	escreva("*** Você perdeu por exceder o seu limite de tentativas!\n\n\n\n")
		 	
		}senao se(pontuacao == 5){
			limpa()
			escreva("===============")
		 	escreva("\nVOCÊ GANHOU O JOGO!\n")
		 	escreva("===============\n")
		 	escreva("***Obrigado por jogar nosso jogo!\n\n\n\n")
		}
	
	}
	}
	
	funcao criar_array_numerosaleatorios(inteiro linhas, inteiro cont, inteiro indices_linhascolunas[]){
	 	
	 	para(inteiro i = 0; i < (linhas - 1 ); i = i + 1){
   			indices_linhascolunas[i] = fun.sorteia(0, (linhas - 1))

   			se (i > 0){
   				cont = 0
   				enquanto (cont < i){
   					se (indices_linhascolunas[i] == indices_linhascolunas[cont]){
   						indices_linhascolunas[i] = fun.sorteia(0, (linhas - 1))
   						cont = 0
   					}senao{
   						cont = cont + 1	
   					}
   				}	
   			}
   		}
	
	 }
	 funcao inteiro verificar_coordenadas_para_escrita(inteiro tamanho, inteiro linhas, inteiro indice, inteiro indices_linhascolunas[], inteiro mascara_caca_palavras[][]){
	 	
	 	inteiro tamanho_verificado = 0
	 	
	 	para( inteiro j = 0; j < tamanho; j = j + 1){
			se(indices_linhascolunas[indice] > linhas){
				se(mascara_caca_palavras[indices_linhascolunas[indice]][ (indices_linhascolunas[indice] - tamanho) + j] == 1 ou
				mascara_caca_palavras[ (indices_linhascolunas[indice] - tamanho) + j][indices_linhascolunas[indice]] == 1){
					criar_array_numerosaleatorios(linhas, 0, indices_linhascolunas)
					j = 0
					tamanho_verificado = 0
					enquanto (mascara_caca_palavras[indices_linhascolunas[indice]][ (indices_linhascolunas[indice] - tamanho) + j] == 1 ou
					mascara_caca_palavras[ (indices_linhascolunas[indice] - tamanho) + j][indices_linhascolunas[indice]] == 1){
						criar_array_numerosaleatorios(linhas, 0, indices_linhascolunas)
					}
				}senao{
					tamanho_verificado = j + 1
				}
			}senao{
				se(mascara_caca_palavras[indices_linhascolunas[indice]][ (indices_linhascolunas[indice]) + j] == 1 
				ou mascara_caca_palavras[ (indices_linhascolunas[indice]) + j][indices_linhascolunas[indice]] == 1){
					criar_array_numerosaleatorios(linhas, 0, indices_linhascolunas)
					j = 0
					tamanho_verificado = 0
					enquanto (mascara_caca_palavras[indices_linhascolunas[indice]][ (indices_linhascolunas[indice]) + j] == 1
					ou mascara_caca_palavras[ (indices_linhascolunas[indice]) + j][indices_linhascolunas[indice]] == 1){
						criar_array_numerosaleatorios(linhas, 0, indices_linhascolunas)
					}
				}senao{
					tamanho_verificado = j + 1
				}			
			}		
		}
		
		se(tamanho_verificado == tamanho){
			retorne 1	
		}senao{
			retorne 0
		}
	 }

	 funcao vazio print_na_tela( inteiro linhas, inteiro colunas,
	 caracter matriz_pcl[][], inteiro mascara_caca_palavras[][]){
	 	limpa()
     	para (inteiro i = 0; i < (colunas+1); i = i + 1){
     		se( i == 0){
     			escreva("00 ")
     		}
     		se(i < 10 e i > 0){
     			escreva("0", i, " ")
     		}senao{
     			se(i > 9){
     				escreva(i, " ")
     			}
     		}
     	}
     	escreva("\n")
     	para (inteiro i = 0; i < colunas; i = i + 1){
     		se(i < 9){
     			escreva("0", i+1, " ")
     		}senao{
     			escreva(i+1, " ")
     		}
     		para(inteiro m = 0; m < linhas; m = m + 1){
     			escreva(matriz_pcl[i][m], "  ")
     		}
     		escreva("\n")
		}

		/*para (inteiro i = 0; i < colunas; i = i + 1){
     	para(inteiro m = 0; m < linhas; m = m + 1){
     		escreva(mascara_caca_palavras[i][m], "  ")
     	}
     		escreva("\n")
		}*/	 
	 }
	 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 42; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */