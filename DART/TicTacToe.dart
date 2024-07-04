import 'dart:io';
List board = List.generate(9,(int index)=>index+1);
showBoard()
{
    for (int i=0;i<board.length;i++)
    {
      if((i+1)%3==0)
      {
        print(board[i]);
        print("---------------");
      }else{
        stdout.write("${board[i]}  |  ");
      }      
    }
}
playerTurn(choice,int pos)
{
    board[pos-1]=choice;
}

cpuTurn()
{

}

checkwinners()
{

}
void main()
{
   showBoard();
   int player_pos;
   String? player_choice,cpu_choice;
    print("Enter CHoice : X/0 =>");
    player_choice = stdin.readLineSync()!.toUpperCase();
    if(player_choice=="X")
    {
          cpu_choice = "0";
    }
    else{
      cpu_choice = "X";
    }
   while(true){
    print("Enter Player Pos : ");
    player_pos = int.parse(stdin.readLineSync()!);
    playerTurn(player_choice, player_pos);
    showBoard();
   }
}
