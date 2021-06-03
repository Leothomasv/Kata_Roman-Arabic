module Main where


roman :: [Char] -> Int
roman ['I'] = 1
roman ['V'] = 5
roman ['X'] = 10
roman ['L'] = 50
roman ['C'] = 100
roman ['D'] = 500
roman ['M'] = 1000
roman  _  = 0

numbers :: [Char ] -> Int
numbers ['1'] = 1
numbers ['2'] = 2
numbers ['3'] = 3
numbers ['4'] = 4
numbers ['5'] = 5
numbers ['6'] = 6
numbers ['7'] = 7
numbers ['8'] = 8
numbers ['9'] = 9

mutliply :: Int -> Int -> Int
mutliply a b = a * b

--incremento:: Int
--inccremento = do
--        let i = 0
--        i <- return (i+1)

--operacion :: Int -> Int -> Int 
--operacion x y =
 --       if (tamano != incremento)
 --               then operacion x * y
  --              else x y



main :: IO()
main = do
        putStrLn "Ingrese expresion: "
        ecua <- getLine
        
        --Agarro el numero y verifico si es numero
        let numero = numbers (take 1 ecua)
        
        --Agarro el valor numero de la letra
        let valor = roman (take 1 (drop 1 ecua))


        print $ mutliply valor numero


