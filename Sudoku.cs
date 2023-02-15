

namespace Sudoku 
{
    public class Sudoku
    {

        public static void printboard(char[][] board)
        {
            for (int i = 0; i < board.Length; i++)
            {
                for (int j = 0; j < board[i].Length; j++)
                {
                    Console.Write(board[i][j].ToString() + ",");
                }
                Console.WriteLine();
            }
            Console.WriteLine("********************");
        }
        public class Solution
        {
            char[][] copy(char[][]board)
            {
                char[][] temp = new char[9][];
                for (int i = 0; i < board.Length; i++)
                {
                    temp[i] = new char[9];
                    for (int j = 0; j < board[i].Length; j++)
                    {
                        temp[i][j] = board[i][j];
                    }
                }
                return temp;
            }
            bool isValid(char[][] board, int[] current)
            {
               
                for (int i = 0; i < 9; i++)
                {
                    
                    if ((i!=current[0])&& board[i][current[1]] == board[current[0]][current[1]])
                    {
                        return false;
                    }
                    if ((i != current[1]) && board[current[0]][i] == board[current[0]][current[1]])
                    {
                        return false;
                    }
                    
                    //Console.WriteLine((3 * (current[0] / 3) + i / 3) + "," + (3 * (current[1] / 3) + i % 3));
                   if((3 * (current[0] / 3) + i / 3) + "," + (3 * (current[1] / 3) + i % 3) == (current[0] + "," + current[1]))
                    {
                        continue;
                    }
                    if (board[3 * (current[0] / 3) + i / 3][3 * (current[1] / 3) + i % 3] == board[current[0]][current[1]])
                    {
                        return false;
                    }
                }
                //Console.WriteLine();
                return true;
            }
           
            public void SolveSudoku(char[][] board)
            {
                Queue<char[][]> data = new Queue<char[][]>();
                data.Enqueue(board.ToArray());
                while (data.Count != 0)
                {
                    char[][]child=data.Dequeue();
                    //printboard(child);
                    
                    bool solved = true;
                    for(int i=0; i<9; i++)
                    {
                        for(int j=0; j<9; j++)
                        {
                            if (child[i][j] == '.')
                            {
                                solved = false;
                                for (int k = 1; k < 10; k++)
                                {
                                    char[][] temp = copy(child);
                                    temp[i][j] = Convert.ToChar(k+'0');
                                    if (isValid(temp, new int[] { i, j }))
                                    {
                                        
                                        
                                        data.Enqueue(temp);
                                    }
                                }
                                goto LoopEnd;
                            }
                        }
                    }
                    LoopEnd:
                    {

                    }
                    if (solved)
                    {
                        for (int i = 0; i < child.Length; i++)
                        {
                            for (int j = 0; j < child[i].Length; j++)
                            {
                                board[i][j] = child[i][j];
                            }
                        }
                        break;
                    }
                    //Console.WriteLine(data.Count());
                }

            }
        }
        static void Main(string[] args)
        {
            Solution solution = new Solution();
            char[][] board = new char[][] { 
            new char[] { '5', '.', '.', '6', '7', '8', '.', '.', '.' },
            new char[] {'6','.','.','1','9','5','.','.','.' },
            new char[] { '.','9','8','.','.','.','.','6','.' },
            new char[] { '8','.','.','.','6','.','.','.','3' },
            new char[] {'4','.','.','8','.','3','.','.','1'},
            new char[] { '7','.','.','.','2','.','.','.','6' },
            new char[] {'.','6','.','.','.','.','2','8','.'},
            new char[] {'.','.','.','4','1','9','.','.','5'},
            new char[] {'.','.','.','.','8','.','.','7','9' }};
            solution.SolveSudoku(board);
            printboard(board);
            
        }
    }
  
}