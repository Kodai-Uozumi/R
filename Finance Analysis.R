# R言語を使用して流動比率、当座比率、固定比率、および自己資本比率を計算するためのコード

# CSVファイルを読み込む
data <- read.csv("kyotoC.csv", fileEncoding="shift-jis")

# 各年度のデータをベクトルに格納
net_sales <- as.numeric(data[1, 2:6])
operating_income <- as.numeric(data[2, 2:6])
ordinary_income <- as.numeric(data[3, 2:6])
net_income <- as.numeric(data[4, 2:6])
total_assets <- as.numeric(data[5, 2:6])
shareholders_equity <- as.numeric(data[6, 2:6])
total_capital <- as.numeric(data[7, 2:6])
capital_stock <- as.numeric(data[8, 2:6])
interest_bearing_debt <- as.numeric(data[9, 2:6])
current_assets <- as.numeric(data[10, 2:6])
current_liabilities <- as.numeric(data[11, 2:6])
long_term_liabilities <- as.numeric(data[12, 2:6])
inventories <- as.numeric(data[13, 2:6])
equity_ratio <- as.numeric(data[14, 2:6])


# 流動比率を計算
current_ratio <- current_assets / current_liabilities
print(paste("Current Ratio:", current_ratio))

# 当座比率を計算
quick_ratio <- (current_assets - inventories) / current_liabilities
print(paste("Quick Ratio:", quick_ratio))

# 固定比率を計算
fixed_ratio <- long_term_liabilities / shareholders_equity
print(paste("Fixed Ratio:", fixed_ratio))

# 自己資本比率はすでにデータに存在しているので、そのまま表示
print(paste("Equity Ratio:", equity_ratio))



