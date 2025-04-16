.PHONY: course
course:
	make unit1

.PHONY: u1
u1:
	quarto render quarto/unit_1.qmd 

.PHONY: u2
u2:
	quarto render quarto/unit_2.qmd 

.PHONY: u3
u3:
	quarto render quarto/unit_3.qmd 

.PHONY: u4
u4:
	quarto render quarto/unit_4.qmd 

.PHONY: u5
u5:
	quarto render quarto/unit_5.qmd 