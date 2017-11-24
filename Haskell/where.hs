bmiTell:: Float -> Float -> String
bmiTell peso altura |bmi <= 18.5 = "Magro pra carai"
					|bmi <= 25.0 = "FITNESS CARAI"
					|bmi <= 30.0 = "TA GORDO ARROMBADO"
					|otherwise = "VAI EMAGRECER BALEIA DO CARALH"
					where bmi = peso/ (altura ^ 2)