declare -A nihon

nihon['tokyo']='東京'
nihon['shinjuku']='新宿'
nihon['shibuya']='渋谷'
nihon['suginami']='杉並'
nihon['chiyoda']='千代田'
nihon['hachioji']='八王子'

nihon['kyoto']='京都'
nihon['osaka']='大阪'
nihon['nara']='奈良'
nihon['kobe']='神戸'

nihon['chiba']='千葉'
nihon['sendai']='仙台'
nihon['nagoya']='名古屋'
nihon['akita']='秋田'
nihon['aomori']='青森'
nihon['niigata']='新潟'
nihon['izumo']='出雲'

nihon['kumamoto']='熊本'
nihon['nagasaki']='長崎'
nihon['sasebo']='佐世保'
nihon['kagoshima']='鹿児島'
nihon['iwaki']='いわき'

hostname=$(cat /etc/hostname)
NIHON=${nihon[$hostname]}
