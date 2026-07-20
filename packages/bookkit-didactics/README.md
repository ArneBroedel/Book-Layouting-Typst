# bookkit-didactics 0.1.0

Optional facet for medical-didactic textbooks.

```typst
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *

#show: setup-typography()
#show: setup-pages()

#learning-objectives(items: ([Ziel 1], [Ziel 2]))
#memo[Wichtiger Merksatz.]
#cave[Kontraindikation.]
```

Depends on foundation `bookkit` (theme tokens `didactics` dict). Does **not** pull charts/legal/art.
