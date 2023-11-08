#Test Cases for package

test_that("Function creates a ggplot",{
  ep <- easyplot(datateachr::cancer_sample$radius_mean, datateachr::cancer_sample$area_mean)
  expect_is(ep,"ggplot")
})



test_that("Function uses the correct given dataset", {
  ep <- easyplot(datateachr::cancer_sample$radius_mean, datateachr::cancer_sample$area_mean)
  expect_that(easyplot(datateachr::cancer_sample$radius_mean, datateachr::cancer_sample$area_mean), equals(ep))
})




test_that("Function needs a dataset and varibles, not just a string of numbers", {
  expect_error(easyplot(2,3,4))
})



test_that("Function can only use numerical dataset", {
  expect_error(easyplot(datateachr::vancouver_trees$species_name, datateachr::vancouver_trees$std_street))
})


