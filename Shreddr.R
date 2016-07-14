play.shreddr = function() {
  ### setup
  pixels = matrix(c(
    # 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#0
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#1
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#2
    1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1,#3
    1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 1, 1, 3, 3, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1,#4
    1, 1, 1, 1, 1, 1, 1, 4, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1,#5
    1, 1, 1, 1, 1, 1, 4, 4, 4, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1,#6
    1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1,#7
    1, 1, 1, 1, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1,#8
    1, 1, 1, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1,#9
    1, 1, 1, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1,#10
    1, 1, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#11
    1, 1, 1, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#12
    1, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#13
    5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#14
    5, 5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#15
    5, 5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#15
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#14
    1, 1, 1, 6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#13
    1, 6, 6, 6, 6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#12
    1, 1, 6, 6, 6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#11
    1, 1, 1, 6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 11, 11, 1, 1, 1, 1, 1,#10
    1, 1, 1, 6, 1, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 11, 11, 11, 11, 1, 1, 1, 1,#9
    1, 1, 1, 1, 1, 1, 7, 7, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 11, 11, 11, 11, 11, 11, 1, 1, 1,#8
    1, 1, 1, 1, 1, 7, 7, 7, 7, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 1, 1, 1, 11, 11, 11, 11, 1, 1, 1, 1,#7
    1, 1, 1, 1, 1, 1, 7, 7, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 1, 1, 1, 11, 11, 1, 1, 1, 1, 1,#6
    1, 1, 1, 1, 1, 1, 1, 7, 1, 1, 1, 8, 8, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1,#5
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 8, 8, 8, 8, 1, 1, 1, 1, 10, 10, 10, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1,#4
    1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 8, 8, 8, 8, 1, 1, 9, 9, 1, 1, 10, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1,#3 
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 8, 1, 1, 9, 9, 9, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#2
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 9, 9, 9, 9, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,#1
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 9, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1#0
  ), nrow = 32, byrow = TRUE)
  capcolors = c('#ffffff', '#1f75b7', '#156ba7', '#145b8f', '#0a4f7e', '#0e4368', '#093452', '#04273b', '#0e1c29', '#11161a', '#010101')
  
  play.game = function() {
    play = readline("Are you READY to play the AWESOME-EST Shreddr game in EXISTENCE? y/n ")
    ifelse(play =='y', print("Hurray, knew it. You're cool!"), print("Well, sorry to be the bearer of bad news but you're STUCK with me forever...until the next round!"))
    image(t(apply(pixels, 2, rev)), col = capcolors, axes=FALSE, main="Let's play a game...")
  }
  
  direction.question = function() {
    the.answer = readline("Mr/Miss Fruit...Cap Ninja, would you like to slice vertically or horizontally? v/h/quit: ")
    if(the.answer == "quit") return(the.answer)
    while(the.answer != 'v' & the.answer != 'h' & the.answer != 'quit') {
      the.answer = readline("I SAID Mr/Miss Captricity Ninja, would you like to slice vertically or horizontally? v/h/quit: ")
    }
    the.index = as.numeric(readline("Well, super-slicing-dicing-Magic-Bullet/Ninja, select your favorite number from 3 to 30: "))
    while(the.index < 3 | 30 < the.index ){
      the.index = as.numeric(readline("Must be a $5 handmixer... PLEASE select your favorite number from 3 to 30: "))
    }
    return(c(the.answer, as.character(the.index)))
  }
  
  quitting.time = function() {
    the.name = readline("All right! We gotta save YOUR Captricity logo. What's your name: ")
    the.name = gsub(" " ,"", the.name)
    print(paste("No, I'm mean a REAL name... JK. Here you go, ", the.name, "!"))
    jpeg(paste(as.character(the.name), "-loves-Captricity.jpg", sep = ''))
    image(t(apply(pixels, 2, rev)), col = capcolors, axes=FALSE, main="Let's play a game...")
    image(t(apply(pixels, 2, rev)), col = capcolors, axes=FALSE, main=paste(as.character(the.name), "-loves-Captricity.jpg", sep = ''))
    mtext(text=1:32, side=1, line=0.5, at=seq(0,1, length.out = 32), las=1, cex=1)
    mtext(text=32:1, side=2, line=0.5, at=seq(0,1, length.out = 32), las=1, cex=1)
    mtext(text=1:32, side=3, line=0.5, at=seq(0,1, length.out = 32), las=1, cex=1)
    mtext(text=32:1, side=4, line=0.5, at=seq(0,1, length.out = 32), las=1, cex=1)
    dev.off()
    print('Take a look at the folder to see your roller-coaster...I mean, Captricity picture')
  }
  
  slicing = function(the.picture, cut.direction, cut.index, offset.index, offset=FALSE) {
    if(offset == FALSE) {
      the.slice = ifelse( rep(cut.direction == 'v', dim(the.picture)[1]) ,  the.picture[ , cut.index], the.picture[cut.index, ])
      the.slice = ifelse( (the.slice - 1) < 1, 1, the.slice - 1)
      if(cut.direction == 'v') the.picture[ , cut.index] = the.slice else the.picture[cut.index, ] = the.slice
    }
    else{
      not.1 = ifelse( rep(cut.direction == 'v', dim(the.picture)[1]) ,  the.picture[ , cut.index], pixels[cut.index, ]) != 1
      the.slice = ifelse( rep(cut.direction == 'v', dim(the.picture)[1]), the.picture[ , cut.index + offset.index] + 1 * not.1, the.picture[cut.index + offset.index, ] + 1 * not.1)
      the.slice = ifelse(the.slice > 11, 11, the.slice)
      if(cut.direction == 'v') the.picture[ , cut.index + offset.index] = the.slice else the.picture[cut.index + offset.index, ] = the.slice
    }
    Sys.sleep(.1)
    image(t(apply(the.picture, 2, rev)), col = capcolors, axes=FALSE, main="Let's play a game...")
    mtext(text=1:32, side=1, line=0.5, at=seq(0,1, length.out = 32), las=1, cex=1)
    mtext(text=32:1, side=2, line=0.5, at=seq(0,1, length.out = 32), las=1, cex=1)
    mtext(text=1:32, side=3, line=0.5, at=seq(0,1, length.out = 32), las=1, cex=1)
    mtext(text=32:1, side=4, line=0.5, at=seq(0,1, length.out = 32), las=1, cex=1)
    return(the.picture)
  }
  
  ### play game
  play.game()
  direction = ""
  while(direction != "quit") {
    direction = list(direction.question())
    if (direction == "quit") quitting.time()
    else {
      cut.direction = direction[[1]][[1]]
      cut.index = as.numeric(direction[[1]][[2]])
      pixels = slicing(pixels, cut.direction, cut.index, 0, offset=FALSE)
      pixels = slicing(pixels, cut.direction, cut.index, -1, offset=TRUE)
      pixels = slicing(pixels, cut.direction, cut.index, 1, offset=TRUE)
      pixels = slicing(pixels, cut.direction, cut.index, 0, offset=FALSE)
      pixels = slicing(pixels, cut.direction, cut.index, -1, offset=TRUE)
      pixels = slicing(pixels, cut.direction, cut.index, 1, offset=TRUE)
      pixels = slicing(pixels, cut.direction, cut.index - 1, -1, offset=TRUE)
      pixels = slicing(pixels, cut.direction, cut.index + 1, 1, offset=TRUE)
    }
  }
}
