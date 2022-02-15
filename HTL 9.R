# data visualisation task
install.packages("ggplot2")
library(ggplot2)

data(package = "ggplot2")

diamonds

#displ on the x-axis and hwy on the y-axis:
ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = cut))

#adding colour to data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


#chaning size of data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#aplha changes transparency of points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#changin data points shape
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))


#bar chart
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", width=0.5)

# Change colors
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="point", color="red", fill="orange")

# Minimal theme + blue fill color
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", fill="red")+
  theme_minimal()


# Task 1
#displ on the x-axis and hwy on the y-axis:
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#adding colour to data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


#chaning size of data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#aplha changes transparency of points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#changin data points shape
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))



# Task 1 - complete
#bar chart
a <- c(1 ,2, 3, 4, 5)
b<- c(6, 7, 8, 9, 10)
c<- c(11, 12, 13, 14, 15)

combine_vecs <- rbind(a,b,c)
combine_vecs

matplot(combine_vecs, type="o", main= "Title", xlab= "vectors")


#Task 2 - change to name, age, role, length of service
# data frames - can store mixed data types
name <- c("NY", "LA", "Vegas")
age <- c(20L, 10L, 5L)
role <- c(FALSE, TRUE, TRUE)

frame <- data.frame(name, age, role)  

print (frame)

#Task 3
#import the ggplot2 library
# create vectors x= 1:20 y= x^2
#plot the graph

#Task 4 - cuse to help with task
x <- c(1, 3, 4, 5, 6)
y <- c(21, 5, 7, 9, 3)


plot(x, y)


#Task 5
# user input - readline function and pasting
name2 <- readline("Enter your name: ")
paste("Welcome", name2)

#Task 6 and 7 see google links

