#import "templates/layout.typ": book
#import "templates/components.typ": clinical_pearl, red_flag
#import "chapters/01-intro.typ": chapter_intro

#show: book.with(
  title: [Medical Book Pilot],
  subtitle: [Typst Publishing Stack],
  author: [Arne Brödel],
)

#chapter_intro(clinical_pearl, red_flag)
