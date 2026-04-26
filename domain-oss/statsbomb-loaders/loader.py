# StatsBomb open data ingest
from statsbombpy import sb
for comp in sb.competitions().itertuples():
    print(comp.competition_id, comp.competition_name)
