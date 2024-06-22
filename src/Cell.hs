module Cell where

type Point = (Int, Int)

data Stone = Black | White deriving (Eq, Show)
type Board = [[Maybe Stone]]

initBoard :: Board
initBoard = [ [Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing]
            , [Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing]
            , [Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing]
            , [Nothing, Nothing, Nothing, Just Black, Just White, Nothing, Nothing, Nothing]
            , [Nothing, Nothing, Nothing, Just White, Just Black, Nothing, Nothing, Nothing]
            , [Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing]
            , [Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing, Nothing]
            ]

echo :: Board -> IO ()
echo board = do
    mapM_ putRow board
    where putCell cell = case cell of
            Nothing    -> putStr "."
            Just Black -> putStr "B"
            Just White -> putStr "W"
          putRow row = do
            putStr "|"
            mapM_ putCell row
            putStr "|\n"
