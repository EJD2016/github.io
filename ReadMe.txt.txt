Title: "Project using R-Markdown and Leaflet to produce a web page of a map with hovering capability"<BR>
Author: "Elek Dobos"<BR>
Date: "February 2, 2017"<BR>
output: html_document<BR>

#Summary Description
A dataset was provided by NOAA - National Weather Service.  
The dataset pertains to Super Storm Sandy that impacted the Eastern United States during October 2012.
When a user of the web page higlights the data marker; the latitude, longitude, county name, state Name,
high water mark elevation, and high water mark location description.

File List.

1. ReadMe.Txt - This file taht describes the project and its assoicated files.
2. FilteredHWMs.xls - This is a data file from NOAA-National Weather Service.
3. Project_DDP9a.HTML - This is the HTML file that is generated from the R-Markdown file in R-Studio.
4. Project_DDP9a.rmd - This is the r-markdown file for the project.
5. SuperStormSandy.HTML - This is the final submission file.  This HTML allows the user to see a map of the 
Eastern Unitsed States.  The user can click on a data marker; and the latitude, longitude, county name, state Name,
high water mark elevation, and high water mark location description are displayed in a pop up window.