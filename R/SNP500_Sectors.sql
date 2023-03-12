select * 
from price.weekly_metrics dm
where dm."ticker" in (select ticker from setup.sp500_sectors)
and price_week = '{week}'
