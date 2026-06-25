import json
t = json.load(open('all_templates.json', encoding='utf-8'))
p = json.load(open('all_packages.json', encoding='utf-8'))
names = ['touying', 'calmly-touying', 'touying-aqua', 'brilliant-cv', 'mantys', 'ilm', 'tieffiction', 'toffee-tufte', 'wonderous-book', 'soviet-matrix', 'badformer', 'glossarium', 'aspirationally', 'caidan']
for n in names:
    pt = [x for x in t if x['name'] == n]
    pp = [x for x in p if x['name'] == n]
    if pt:
        print(f"{n}: [Template] v{pt[0]['version']}")
    elif pp:
        print(f"{n}: [Package] v{pp[0]['version']}")
    else:
        print(f"{n}: [MISSING]")
