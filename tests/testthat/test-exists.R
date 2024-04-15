context("Does template exist")

#templates_all <- list.files("inst/rmarkdown/templates")
templates_all <- list.files(system.file("rmarkdown", "templates", package="psatemplates"))

for (i in templates_all[which(templates_all != "html_article" & templates_all != "word")]) {

  expect_true(file.exists(system.file("rmarkdown", "templates", i, "resources", "template.tex", package = "psatemplates")))
}


for (i in templates_all[which(templates_all == "html_article")]) {

  expect_true(file.exists(system.file("rmarkdown", "templates", i, "resources", "template.html", package = "psatemplates")))
}

for (i in templates_all[which(templates_all == "word")]) {

  expect_true(file.exists(system.file("rmarkdown", "templates", i, "resources", "template.docx", package = "psatemplates")))
}
