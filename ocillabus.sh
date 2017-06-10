#!/bin/sh

# Este pequeño script **debería** ser compatible con
# - sh
# - bash
# - dash
# - ksh
# - zsh
# - y muchash másh (graciash, graciash)
#                                          -- @nebil

hocuspocus() {
  mkdir clase-$1                                  &&
  cd clase-$1                                     &&
  printf "\n# Clase $(expr $1 + 0)\n" > README.md &&
  cd ..
}

for index in $(seq -w 0 16); do hocuspocus $index; done
# Escribir 'for index in {00..16}' es, sin duda, más elegante,
# mas no funcionaría con dash ni con versiones añejas de bash.
# Número de personas a quienes le importará ese comentario: 1.
