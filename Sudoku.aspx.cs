using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Threading;

namespace Sudoku2
{
    public partial class Sudoku : System.Web.UI.Page
    {
        public static bool checkValue(int[,] board, int row, int col, int num)
        {
            //CHECK ROW
            // row has the unique (row-clash) 
            for (int x = 0; x < board.GetLength(0); x++)
            {
                // if the number we are trying to place is already present in that row, return false; 
                if (board[row, x] == num)
                {
                    return false;
                }
            }

            //CHECK COLUMN
            // column has the unique numbers (column-clash) 
            for (int y = 0; y < board.GetLength(0); y++)
            {
                // if the number we are trying to place is already present in that column, return false; 
                if (board[y, col] == num)
                {
                    return false;
                }
            }

            //CHECK SQUARE
            // corresponding square has 
            // unique number (box-clash) 
            int sqrt = (int)Math.Sqrt(board.GetLength(0));
            int boxRowStart = row - row % sqrt;
            int boxColStart = col - col % sqrt;

            for (int x = boxRowStart; x < boxRowStart + sqrt; x++)
            {
                for (int y = boxColStart; y < boxColStart + sqrt; y++)
                {
                    if (board[x, y] == num)
                    {
                        return false;
                    }
                }
            }

            // if there is no overlapping value then it's safe 
            return true;
        }

        public static bool checkzeroboard(int[,] board)
        {
            for (int i = 0; i < 9; i++)
            {
                for (int j = 0; j < 9; j++)
                {
                    if (board[i, j] == 0)
                        return true;
                }
            }
            return false;
        }
        public static bool solveSudoku(int[,] board, int n, SortedList<string, List<int>> pval)
        {
            int row = 0;
            int col = 0;
            int i, j;
            bool ZeroValue = false; // check if the slot in the board is empty aka 0
            for (i = 0; i < n; i++)
            {
                for (j = 0; j < n; j++)
                {
                    if (board[i, j] == 0) //if value at location ij is empty, meaning has no value. set coordinates of i and j onto the column and row of the value
                    {
                        row = i;
                        col = j;

                        ZeroValue = false;
                        break;
                    }

                }

                if (!ZeroValue && j < 9)
                {
                    break;
                }
            }



            // else for each-row backtrack 
            for (int num = 1; num <= 9; num++)
            {
                if (checkValue(board, row, col, num))
                {
                    board[row, col] = num;
                    if (solveSudoku(board, n, pval))
                    {
                        // print(board, n); 
                        ZeroValue = false;
                    }
                    else
                    {
                        // replace it 
                        board[row, col] = 0;
                    }
                }
            }
            //if there are no more 0s or empty boxes
            if (checkzeroboard(board) == false)
            {
                return true;
            }

            return false;

        }
        public static void CPossVal(int[,] board, SortedList<String, List<int>> pVal)
        {
            String temp;
            for (int i = 0; i < 9; i++)
            {
                for (int j = 0; j < 9; j++)
                {
                    if (board[i, j] == 0)
                    {
                        temp = i.ToString() + j.ToString();
                        for (int z = 1; z <= 9; z++)
                        {
                            if (checkValue(board, i, j, z))
                            {
                                pVal[temp].Add(z);
                            }
                        }
                    }
                }
            }
        }

        public static void CSortedL(int[,] board, SortedList<String, List<int>> pVal)
        {
            String temp;
            for (int i = 0; i < 9; i++)
            {
                for (int j = 0; j < 9; j++)
                {
                    if (board[i, j] == 0)
                    {
                        temp = i.ToString() + j.ToString();
                        pVal.Add(temp, new List<int>());
                    }

                }
            }

        }

        public static void CSolveCount1(int[,] board, SortedList<String, List<int>> pVal)
        {
            String temp;
            for (int i = 0; i < 9; i++)
            {
                for (int j = 0; j < 9; j++)
                {
                    if (board[i, j] == 0)
                    {
                        temp = i.ToString() + j.ToString();
                        if (pVal[temp].Count == 1)
                        {
                            board[i, j] = pVal[temp][0];
                        }
                    }


                }
            }
        }

        public static Boolean CSLCount(int[,] board, SortedList<String, List<int>> pVal) // there is still a key count of 1
        {
            String temp;
            for (int i = 0; i < 9; i++)
            {
                for (int j = 0; j < 9; j++)
                {
                    if (board[i, j] == 0)
                    {
                        temp = i.ToString() + j.ToString();
                        if (pVal[temp].Count == 1)
                        {
                            return true;
                        }
                    }


                }
            }
            return false;
        }

        public static void CSLClear(int[,] board, SortedList<String, List<int>> pVal)
        {
            String temp;
            for (int i = 0; i < 9; i++)
            {
                for (int j = 0; j < 9; j++)
                {
                    if (board[i, j] == 0)
                    {
                        temp = i.ToString() + j.ToString();
                        pVal[temp].Clear();
                    }


                }
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e) //main
        {
            //initialize important variables
            int[,] board = new int[9, 9];
            SortedList<String, List<int>> possibleVal = new SortedList<String, List<int>>();

            //If cell doesn't have a given value, automatically fill in with a 0
            for (int i = 0; i < 9; ++i)
            {
                for (int j = 0; j < 9; ++j)
                {
                    string cell = "txt" + i.ToString() + j.ToString();
                    string value = this.Request[cell];
                    if (value == "")
                    {
                        board[i, j] = 0;
                    }
                    else
                    {
                        board[i, j] = Convert.ToInt32(value);
                    }
                     
                }
            }

            
            CSortedL(board, possibleVal);
            
            /*Create Possible Values*/
            while (checkzeroboard(board) == true) //while there is a 0 on the board, it loops
            {
                CPossVal(board, possibleVal); //populate the Sorted List with possible values
                
                if (CSLCount(board, possibleVal)) //check for a count of 1
                {
                    CSolveCount1(board, possibleVal); //find count of 1 and replace value on board
                    CSLClear(board, possibleVal); //clear the counts and repeat
                }
                else // if there is still 0s, but no more count of 1
                {
                    solveSudoku(board, 9, possibleVal);
                }

            }

            //test it out with a solved sudoku or unsolved
            //works now. the board is solved

            //create a table for it to output onto

            txt00_2.Value = board[0, 0].ToString();
            txt01_2.Value = board[0, 1].ToString();
            txt02_2.Value = board[0, 2].ToString();
            txt03_2.Value = board[0, 3].ToString();
            txt04_2.Value = board[0, 4].ToString();
            txt05_2.Value = board[0, 5].ToString();
            txt06_2.Value = board[0, 6].ToString();
            txt07_2.Value = board[0, 7].ToString();
            txt08_2.Value = board[0, 8].ToString();

            txt10_2.Value = board[1, 0].ToString();
            txt11_2.Value = board[1, 1].ToString();
            txt12_2.Value = board[1, 2].ToString();
            txt13_2.Value = board[1, 3].ToString();
            txt14_2.Value = board[1, 4].ToString();
            txt15_2.Value = board[1, 5].ToString();
            txt16_2.Value = board[1, 6].ToString();
            txt17_2.Value = board[1, 7].ToString();
            txt18_2.Value = board[1, 8].ToString();

            txt20_2.Value = board[2, 0].ToString();
            txt21_2.Value = board[2, 1].ToString();
            txt22_2.Value = board[2, 2].ToString();
            txt23_2.Value = board[2, 3].ToString();
            txt24_2.Value = board[2, 4].ToString();
            txt25_2.Value = board[2, 5].ToString();
            txt26_2.Value = board[2, 6].ToString();
            txt27_2.Value = board[2, 7].ToString();
            txt28_2.Value = board[2, 8].ToString();

            txt30_2.Value = board[3, 0].ToString();
            txt31_2.Value = board[3, 1].ToString();
            txt32_2.Value = board[3, 2].ToString();
            txt33_2.Value = board[3, 3].ToString();
            txt34_2.Value = board[3, 4].ToString();
            txt35_2.Value = board[3, 5].ToString();
            txt36_2.Value = board[3, 6].ToString();
            txt37_2.Value = board[3, 7].ToString();
            txt38_2.Value = board[3, 8].ToString();

            txt40_2.Value = board[4, 0].ToString();
            txt41_2.Value = board[4, 1].ToString();
            txt42_2.Value = board[4, 2].ToString();
            txt43_2.Value = board[4, 3].ToString();
            txt44_2.Value = board[4, 4].ToString();
            txt45_2.Value = board[4, 5].ToString();
            txt46_2.Value = board[4, 6].ToString();
            txt47_2.Value = board[4, 7].ToString();
            txt48_2.Value = board[4, 8].ToString();

            txt50_2.Value = board[5, 0].ToString();
            txt51_2.Value = board[5, 1].ToString();
            txt52_2.Value = board[5, 2].ToString();
            txt53_2.Value = board[5, 3].ToString();
            txt54_2.Value = board[5, 4].ToString();
            txt55_2.Value = board[5, 5].ToString();
            txt56_2.Value = board[5, 6].ToString();
            txt57_2.Value = board[5, 7].ToString();
            txt58_2.Value = board[5, 8].ToString();

            txt60_2.Value = board[6, 0].ToString();
            txt61_2.Value = board[6, 1].ToString();
            txt62_2.Value = board[6, 2].ToString();
            txt63_2.Value = board[6, 3].ToString();
            txt64_2.Value = board[6, 4].ToString();
            txt65_2.Value = board[6, 5].ToString();
            txt66_2.Value = board[6, 6].ToString();
            txt67_2.Value = board[6, 7].ToString();
            txt68_2.Value = board[6, 8].ToString();

            txt70_2.Value = board[7, 0].ToString();
            txt71_2.Value = board[7, 1].ToString();
            txt72_2.Value = board[7, 2].ToString();
            txt73_2.Value = board[7, 3].ToString();
            txt74_2.Value = board[7, 4].ToString();
            txt75_2.Value = board[7, 5].ToString();
            txt76_2.Value = board[7, 6].ToString();
            txt77_2.Value = board[7, 7].ToString();
            txt78_2.Value = board[7, 8].ToString();

            txt80_2.Value = board[8, 0].ToString();
            txt81_2.Value = board[8, 1].ToString();
            txt82_2.Value = board[8, 2].ToString();
            txt83_2.Value = board[8, 3].ToString();
            txt84_2.Value = board[8, 4].ToString();
            txt85_2.Value = board[8, 5].ToString();
            txt86_2.Value = board[8, 6].ToString();
            txt87_2.Value = board[8, 7].ToString();
            txt88_2.Value = board[8, 8].ToString();

            
        }








    }
}