![header](https://user-images.githubusercontent.com/100329223/179633826-dffbe874-5372-427c-b8c4-857bd98b2ea1.png)
# The Impact of Funding on Students Pursuing Higher Education 
## The Background into Investigating Secondary Education Attendance after High School
Academic success can be the framework to a young individuals whole future. Dreams of being an astronaut, doctor, or trades worker can inspire someone to work to the best of their abilities in order to achieve that goal. While school systems are very structured and provide strict educational programming, there are many factors that go into each students’ accomplishments. In this analysis, we will be using multiple sources to determine whether there are any significant relationships between a student choosing to seek higher education and high school district demographics, financial characteristics, and extra-curricular funding, specifically in Wisconsin.
### Reasoning and Importance of this Analysis
Attending school isn’t strictly about academics and acing every test. School is a time when children form habits, create relationships, set goals, and develop new passions. Providing the opportunities for each student is essential and can determine the future path they take. There are many impacting factors that go into budgetary needs. Our analysis will determine the amount of funding provided per student in academic departments verses extra activity departments in determining the child’s chances of pursuing secondary education. 

School Districts have a lot to take into account when it comes to finding a balance in funding academics, assisted programs, extra-curricular activities, and other budgetary needs. The National Center for Education Statistics states “Extracurricular activities provide a channel for reinforcing the lessons learned in the classroom, offering students the opportunity to apply academic skills in a real-world context, and are thus considered part of a well-rounded education.” Through much of their research, they were able to provide statistical backing based on data collected from US public schools. Other organizations, such as the National Federation of State High School Associations, have done research on the importance of funding these activities even though they only make up a small portion of the overall budgetary funding provided per student. The benefits of budget allocation to these programs not only boost the academic success of its students, but improve community standards and create well rounded individuals that will continue on to have positive impacts on society. 

When parents are considering schools, they not only take into account the success of academic ratings, but the additional activities and organizations it has to offer. With careful budget analysis, school can set themselves up for the most success and an opportunity for growth by attracting more students, creating a positive reputation, and providing resources for each student to thrive.
 
### Data Sources Used for Analysis
WI DPI Data: District Report cards, comparative district costs, comparative district revenue district post-secondary enrollment statistics.

![image](https://user-images.githubusercontent.com/100329223/179616093-a332e5b9-e28f-4820-809b-dc30af90e528.png)
### Database created in AWS and connected to postgres
![image](https://user-images.githubusercontent.com/100485119/181933905-a0b68c93-b1c0-4218-bff9-89314a21b4a3.png)
![image](https://user-images.githubusercontent.com/100485119/181933916-cfd52901-8f94-4ff8-a4fc-ca0e9dd67486.png)
![image](https://user-images.githubusercontent.com/100485119/181933941-ac20e74f-2f75-42b4-bc74-47d22263db67.png)

### Technologies Used for Analysis
Throughout this project, there will be various technologies used in order to form our analysis, and create a dashboard that will easily communicate the results to school district personnel, parents, or other curious individuals on the importance of funding allocations roll in student pursing higher education. 
Python will be our main programming language to conduct our analysis. Jupyter Notebook, SQL Postgres, and Google Colab will be the interactive web tool we will use to create computational output and visualizations. Machine learning concepts will be used to predict the impact of all variables within the data, with a focus on budgetary allotment to extracurricular activities, and the chances of a student continuing their education following high school. Once we have collected all of our data, altered the content to our needs, and created visual representations, we will use Flask to create a dashboard that clearly displays our findings. Amazon web service (AWS) may be used in cloud computing solutions, database storage, and content delivery. 

Below is a brief outline of the machine learning approach we plan on taking to achieve the percent of the budget allotted to each student in each category or activity:

![learning_machine_outline](https://user-images.githubusercontent.com/100329223/179615531-3e59a72d-a969-4546-8c42-e6ea8cb83860.png)

### Machine Learning
The data, once taken in, required some preprocessing to get it ready for machine learning.  This involved removing identifying columns and columns where there weas only one unique value throughout the data.  

<img width="1029" alt="drop_columns" src="https://user-images.githubusercontent.com/99457275/182747899-37d8edcf-b89d-47bd-8a1e-fdd93dc34db3.png">

The feature selection was done mostly in cleaning the data, as we, as a team, determined what data was worth considering.  We had determined that spending in other areas of school administration were not needed for this analysis.   The data was split using train_test_split to ensure a random sample. 

<img width="680" alt="train_test_split" src="https://user-images.githubusercontent.com/99457275/182747940-2c28e967-18a2-4efb-9094-d200fef88ee5.png">

Model choice was initially a struggle, which led to a switch part way through the project.  While we initially wanted to try a deep neural network, we found that it was the wrong choice.  With some advisement from the instruction team, we settled on Random Forests as our machine learning model.  While we were unable to find the “sweet spot” of spending, we were able to determine which factors were the most important for our data.  

<img width="639" alt="ranking_feature_importance" src="https://user-images.githubusercontent.com/99457275/182748057-fb98340e-c0cb-4d8a-ab1f-f19c04face7b.png">

Our accuracy in this model was based on MAE, MSE, and oob (Out of Bag) score.  The MAE and MSE were large, but we suspect that was due to the large numbers used in this analysis. 

<img width="455" alt="mae_mse" src="https://user-images.githubusercontent.com/99457275/182748019-0e0144c8-355d-495c-ae36-63aea52aa43c.png">

However, the oob score, which is recommended to be between 0.75 and 1.0, was very close to 1.0, suggesting a strong model without overfitting.

<img width="547" alt="oob_score" src="https://user-images.githubusercontent.com/99457275/182747991-0edff02a-ae62-4682-ac44-bd351b1fde02.png">


![image](https://user-images.githubusercontent.com/99457275/182747359-aa374d33-9db6-48fb-b624-3692ecc9ec65.png)


Below is an outline of what will be within our dashboard:
![image](https://user-images.githubusercontent.com/100329223/182133044-1ea27941-db19-43c1-a31e-9962b62d2011.png)

### Communication Protocols for Analysis
Communication will be very important for the successful analysis of high school budgetary allocation, socioeconomic factors, extra-curricular activities and the likelihoods of a child attending another educational institution. Our team will be using slack as the primary form of communication in completing timelines, asking questions, and ensuring that future tasks are discussed and understood. GitHub will be our main source for content with each person having their branch for contribution and opportunity for feedback or adjustments prior to merging to the main branch. Scheduling team meetings using Zoom outside of class time will reiterate our communication, trouble shooting, and team understanding of concepts. main
