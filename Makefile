.PHONY: course
course: index u1 u2 u3 u4 u5

.PHONY: index
index:
	quarto render index.qmd

.PHONY: u1
u1:
	quarto render unit1/unit_1.qmd

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


.PHONY: ci
ci:
	cd unit1 && julia --project=. -e 'using Pkg; Pkg.activate("."); Pkg.instantiate()' && cd .. && quarto render unit1/unit_1.qmd
	cd unit2 && julia --project=. -e 'using Pkg; Pkg.activate("."); Pkg.instantiate()' && cd .. && quarto render unit2/unit_2.qmd
	cd unit3 && julia --project=. -e 'using Pkg; Pkg.activate("."); Pkg.instantiate()' && cd .. && quarto render unit3/unit_3.qmd
	cd unit4 && julia --project=. -e 'using Pkg; Pkg.activate("."); Pkg.instantiate()' && cd .. && quarto render unit4/unit_4.qmd
	cd unit5 && julia --project=. -e 'using Pkg; Pkg.activate("."); Pkg.instantiate()' && cd .. && quarto render unit5/unit_5.qmd
