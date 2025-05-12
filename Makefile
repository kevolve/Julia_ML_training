.PHONY: course
course: u1 u2 u3 u4 u5

.PHONY: u1
u1:
	cd unit1 && julia --project=. -e 'using Pkg; Pkg.activate("."); Pkg.instantiate()' && cd .. && quarto render unit1/unit_1.qmd

.PHONY: u2
u2:
	quarto render unit2/unit_2.qmd

.PHONY: u3
u3:
	quarto render unit3/unit_3.qmd

.PHONY: u4
u4:
	quarto render unit4/unit_4.qmd

.PHONY: u5
u5:
	quarto render unit5/unit_5.qmd
