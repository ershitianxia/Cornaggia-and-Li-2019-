clear
cd "C:\replication\Cornaggia and Li (2019)\workspace"
import excel "C:\replication\Cornaggia and Li (2019)\workspace\baseline.xlsx", sheet("Sheet1") firstrow 

eststo clear
eststo: quietly estpost sum Acq_Vol_AB Acq_Count_AB open_BA tobinq_BA stock_return_BA GDP_growth_BA GDP_per_capita_BA unemployment_BA Corporate_income_tax_BA anti_competition_BA Industry_dissimilarity_BA Economic_correlation_AB open_acquire open_target growth_acquire growth_target tobinq_acquire tobinq_target payoff_acquire payoff_target GDP_growth_acquire GDP_growth_target GDP_per_capita_acquire GDP_per_capita_target unemployment_acquire unemployment_target rate_acquire rate_target YearBCPassed_acquire YearBCPassed_target , detail

esttab using "table_out/table3.tex", replace ///
cells("mean(fmt(3)) sd(fmt(3)) min(fmt(3)) p25(fmt(3)) p50(fmt(3)) p75(fmt(3)) max(fmt(3))") ///
label booktab nonumber nomtitles
