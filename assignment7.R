
# Assignment 7 - Generic Functions, S3 and S4
# Dataset: mtcars

# Load the dataset
data("mtcars")

# Display the first six rows
head(mtcars)

# Inspect the structure of the dataset
str(mtcars)

# Step 2 - Test Generic Functions

# Check the class of the dataset
class(mtcars)

# Test the print generic
print(head(mtcars))

# Test the summary generic
summary(mtcars)

# Test the plot generic
plot(mtcars$wt, mtcars$mpg,
     main = "Car Weight vs. Miles Per Gallon",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles Per Gallon",
     pch = 19)

# Step 3 - Create an S3 Object

# Create a student object
s3_obj <- list(
  name = "Student",
  age = 23,
  GPA = 3.5
)

# Assign an S3 class
class(s3_obj) <- "student_s3"

# Inspect the object
class(s3_obj)
typeof(s3_obj)
isS4(s3_obj)

# Define a custom print method for the S3 class
print.student_s3 <- function(x, ...) {
  cat("Student Name:", x$name, "\n")
  cat("Age:", x$age, "\n")
  cat("GPA:", x$GPA, "\n")
}

# Test S3 method dispatch
print(s3_obj)

# Step 4 - Create an S4 Object

# Define an S4 class
setClass("student_s4",
         slots = c(
           name = "character",
           age = "numeric",
           GPA = "numeric"
         ))

# Create an S4 object
s4_obj <- new("student_s4",
              name = "Student",
              age = 23,
              GPA = 3.5)

# Inspect the object
class(s4_obj)
typeof(s4_obj)
isS4(s4_obj)

# Define a custom show method for the S4 class
setMethod("show", "student_s4",
          function(object) {
            cat("Student Name:", object@name, "\n")
            cat("Age:", object@age, "\n")
            cat("GPA:", object@GPA, "\n")
          })

# Test S4 method dispatch
show(s4_obj)

# Step 5 - Explanations

# Generic functions use different methods depending on
# the class of the object passed to them.

# The mtcars dataset is a data.frame.
# summary(mtcars) dispatches to summary.data.frame.
# print(head(mtcars)) uses the print.data.frame method.
# plot() uses the default plotting method for numeric vectors.

# S3 uses informal classes and methods such as
# print.student_s3(), which R selects based on class().

# S4 uses formally defined classes and slots.
# The show() generic dispatches to the method defined
# for the student_s4 class.

# No custom plot method was defined for student_s3.
# Therefore, plot(s3_obj) would not use a student_s3-specific
# method and may produce an error with this object's contents.


