gasto:: Double -> Double -> Double -> Double
gasto precoAlcool precoGas litros | 0.7 * precoAlcool >= precoGas = (litros * precoAlcool)
								  | otherwise = litros * precoGas

